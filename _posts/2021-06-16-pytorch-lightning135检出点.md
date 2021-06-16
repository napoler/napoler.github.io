---
layout: post
comments: 1
title:  pytorch_lightning 1.3.5版本 model_checkpoint 示例
categories: Default
tags: Default
date: 2021-06-16 08:48
---

 2021-06-16 记事
 
 ## pytorch_lightning model_checkpoint
pip install pytorch-lightning==1.3.5
必须要说，版本固定真的很重要，不然的话华接口改了会出现很多错误

```python





# help(DataLoader)

# /kaggle/input/reformerchinesemodel/epoch4step21209.ckpt
from pytorch_lightning import Trainer, seed_everything
from pytorch_lightning.callbacks import ModelCheckpoint
# 自动停止
# https://pytorch-lightning.readthedocs.io/en/1.2.1/common/early_stopping.html
from pytorch_lightning.callbacks.early_stopping import EarlyStopping
from pytorch_lightning.callbacks import LearningRateMonitor

# 引入修剪技术　https://pytorch-lightning.readthedocs.io/en/stable/advanced/pruning_quantization.html
from pytorch_lightning.callbacks import ModelPruning
import torch.nn.utils.prune as prune
# https://pytorch-lightning.readthedocs.io/en/latest/common/early_stopping.html
# 量化　降低内存　低精度　　https://pytorch-lightning.readthedocs.io/en/stable/advanced/pruning_quantization.html
from pytorch_lightning.callbacks import QuantizationAwareTraining

# 使用 DDP 时设置 find_unused_pa​​rameters=False
# 默认情况下，我们已启用查找未使用的参数为 True。这是针对过去出现的兼容性问题（有关更多信息，请参阅讨论）。默认情况下，这会影响性能，并且在大多数情况下可以禁用。
from pytorch_lightning.plugins import DDPPlugin


seed_everything(42)

# model=LitAutoSeq2seq( learning_rate=0.0003784,T_max=500,optimizer_name="AdamW",batch_size=64, )
# 自动搜索批次大小
model=LitAutoSeq2seq( learning_rate=1.584893192461114e-05,T_max=50,optimizer_name="AdamW",batch_size=64)

# 这里加载之前的权重 初始化模型
model.load_state_dict(torch.load("../input/barodel/model.bin"))

# # 自动寻找学习率
# trainer = pl.Trainer(auto_lr_find=True,
#           gpus=1,precision=16,amp_level='O2',)

# trainer.tune(model)
# print(model.hparams)








early_stop_callback = EarlyStopping(
   monitor='val_loss',
   min_delta=0.0000,
   patience=15,
   verbose=True,
   mode='min',
#   check_finite=True,
#  check_on_train_epoch_end=True,
#     divergence_threshold=0.1
    
)
checkpoint_callback = ModelCheckpoint(
#     filename='/kaggle/working/{epoch}-{val_loss:.2f}',
    dirpath="checkpoints",
    filename='{epoch:02d}-{step}-{val_loss:.2f}',
#     filename='/kaggle/working/bart-out',
#     save_last=True,
    verbose=True,
    monitor='val_loss',
#     every_n_train_steps=2,
    mode='min',
#     best_model_path='best'
    save_top_k=5
)
lr_monitor = LearningRateMonitor(logging_interval='step')



def compute_amount(epoch):
    # the sum of all returned values need to be smaller than 1 https://pytorch-lightning.readthedocs.io/en/stable/advanced/pruning_quantization.html
    if epoch == 10:
        return 0.5

    elif epoch == 50:
        return 0.25

    elif 75 < epoch < 99 :
        return 0.01

    
pruning=ModelPruning("l1_unstructured",amount=compute_amount)

wandb_logger = WandbLogger(project='bart-seq2seq-百度kgnotebook176d5104e8')

profilers=pl.profiler.profilers.SimpleProfiler()
trainer = pl.Trainer(
        gpus=1,
        #     min_epochs=1,
        precision=16,amp_level='O2',
        #         val_check_interval=0.25, #这里增加检查验证的频率
        #         limit_val_batches=0.2, # 限制验证的数目 降低每次验证的批次大小
        checkpoint_callback=True,
        #         callbacks=[PyTorchLightningPruningCallback(trial, monitor="train_loss")],
        #         resume_from_checkpoint="/kaggle/input/openlml/wandb/run-20210610_054617-3cu3oiy2/files/百度数otebookb9f0237b84/3cu3oiy2/checkpoints/chinese-out.ckpt",
        auto_select_gpus=True,
        callbacks=[lr_monitor,early_stop_callback,
               pruning,
               checkpoint_callback
        #                        QuantizationAwareTraining()
              ],
        deterministic=True,
        #         auto_scale_batch_size='binsearch',
        #         auto_lr_find=True,
        #         max_epochs=wandb.config.epochs,
        gradient_clip_val=0.5,
        stochastic_weight_avg=True,# 随机加权平均https://pytorch-lightning.readthedocs.io/en/stable/advanced/training_tricks.html#stochastic-weight-averaging
        max_epochs=500,
        #         logger=wandb_logger, #日志
        #     plugins=DDPPlugin(find_unused_parameters=True),
        accumulate_grad_batches=1, # 梯度累加
        #     overfit_batches=20, #过拟合一小部分训练数据 (float) 或一组批次 (int)。 小数据测试时候用它 
        terminate_on_nan=True, # 出现nan则停止
        weights_summary="top", #开始打印参数
        profiler=profilers,
#     accelerator=
)
# trainer.tune(model)


 

trainer.fit(model)





























```

## 获取最佳的检出点 并且保存下来

https://pytorch-lightning.readthedocs.io/en/stable/common/weights_loading.html#manual-saving

```python

checkpoint_callback.best_model_path


new_model = model.load_from_checkpoint(checkpoint_path=checkpoint_callback.best_model_path)

torch.save(new_model.state_dict(), "model.bin")


```

保存加载数据

https://pytorch-lightning.readthedocs.io/en/stable/common/weights_loading.html

## 深度学习代码中的 #随机种子
深度学习网络模型中初始的权值参数通常都是初始化成随机数
而使用梯度下降法最终得到的局部最优解对于初始位置点的选择很敏感
为了能够完全复现作者的开源深度学习代码，随机种子的选择能够减少一定程度上
算法结果的随机性，也就是更接近于原始作者的结果
即产生随机种子意味着每次运行实验，产生的随机数都是相同的
但是在大多数情况下，即使设定了随机种子，仍然没有办法完全复现
作者paper中所给出的模型性能，这是因为深度学习代码中除了产生随机数中带有随机性
其训练的过程中使用 mini-batch SGD或者优化算法进行训练时，本身就带有了随机性
因为每次更新都是从训练数据集中随机采样出batch size个训练样本计算的平均梯度
作为当前step对于网络权值的更新值，所以即使提供了原始代码和随机种子，想要
复现作者paper中的性能也是非常困难的
