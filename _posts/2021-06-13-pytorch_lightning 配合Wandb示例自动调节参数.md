---
layout: post
comments: 1
title:  pytorch_lightning 配合Wandb示例
categories: Default
tags: [pytorch_lightning,Wandb,人工智能]
date: 2021-06-13 21:14
---




## pytorch_lightning 配合　WandbLogger　示例

官方文档
[https://docs.wandb.ai/v/zh-hans/](https://docs.wandb.ai/v/zh-hans/)

竟然还有中文文档。
 
### 基础依赖
 
 ```
!pip install pytorch-lightning wandb -q
os.environ["WANDB_SILENT"] = "true"
os.environ["WANDB_API_KEY"] = "ea464ba3c978ec8b8837c5989d4fcf"
 
 ```
 
 ### wandb sweep
 
 ```python
 
from pytorch_lightning.loggers import WandbLogger
import wandb
sweep_config = {
  "method": "bayes",   # Random search https://docs.wandb.ai/guides/sweeps/configuration#search-strategy
  "metric": {           # We want to maximize val_acc
#       "name": "val_acc",
#       "goal": "maximize"
      "name": "val_loss",
      "goal": "minimize",
#       "target": 0.99
  },
  "parameters": {
        "batch_size":{
            "values": [16,32]
        },
        "optimizer_name":{
            "values": ["AdamW"]
        },
        "learning_rate": {
            # log uniform distribution between exp(min) and exp(max)
            "distribution": "log_uniform",
            "min": -9.21,   # exp(-9.21) = 1e-4
            "max": -4.61    # exp(-4.61) = 1e-2
        }
  }        


}
sweep_id = wandb.sweep(sweep_config, project="bart_14363f")
 
 
 
 def sweep_iteration():    
    # set up W&B logger
    wandb.init()    # required to have access to `wandb.config`
    wandb_logger = WandbLogger()
    train_loader=DataLoader(traindataset,batch_size=wandb.config.batch_size, shuffle=True, )
    val_loader=DataLoader(devdataset,batch_size=wandb.config.batch_size, shuffle=False, )
    model=LitAutoSeq2seq(learning_rate=wandb.config.learning_rate,optimizer_name=wandb.config.optimizer_name)   

    early_stop_callback = EarlyStopping(
       monitor='val_loss',
       min_delta=0.000,
       patience=20,
       verbose=True,
       mode='min'
    )
    lr_monitor = LearningRateMonitor(logging_interval='step')    
    
    
    # setup Trainer
    trainer = pl.Trainer(
        gpus=1,
    #     min_epochs=1,
        precision=16,amp_level='O2',
#         checkpoint_callback=checkpoint_callback,
#         resume_from_checkpoint="../input/nernotebook61fed2341fmodel/LitAutoMark-out.ckpt",
        auto_select_gpus=True,
        callbacks=[lr_monitor,early_stop_callback],
        deterministic=True,
#         auto_scale_batch_size='binsearch',
#         auto_lr_find=True,
#         max_epochs=wandb.config.epochs,
        max_epochs=2,
        logger=wandb_logger,
#         accumulate_grad_batches=wandb.config.accumulate_grad_batches
        accumulate_grad_batches=2
    )
    # train
    trainer.fit(model,train_dataloader=train_loader,val_dataloaders=val_loader)



# 运行

count = 30 # number of runs to execute
wandb.agent(sweep_id, function=sweep_iteration,count =count)
# while not sweep.done():
#     sweep.print_status()
#     sweep.step()
#     time.sleep(5)
 
 
 
 
 
 
 
 ```

值得一说的是这里的示例还是蛮多的。
[https://docs.wandb.ai/v/zh-hans/examples](https://docs.wandb.ai/v/zh-hans/examples)

PyTorch Lightning

[W&B报告](https://wandb.ai/cayush/pytorchlightning/reports/Use-Pytorch-Lightning-with-Weights-Biases--Vmlldzo2NjQ1Mw)​

[Colab笔记本](https://colab.research.google.com/drive/1GHWwfzAsWx_Q1paw73hngAvA7-U9QHi-?pli=1&authuser=1)

用PyTorch Lightning做语义分割

[W&B仪](https://wandb.ai/borisd13/lightning-kitti/reports/Lightning-Kitti--Vmlldzo3MTcyMw)表盘​

[Github 仓](https://github.com/borisdayma/lightning-kitti)库​


[https://docs.wandb.ai/v/zh-hans/integrations/pytorch-lightning](https://docs.wandb.ai/v/zh-hans/integrations/pytorch-lightning)