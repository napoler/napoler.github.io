---
layout: post
comments: 1
title:  pytorch_lightning 自动保存model_checkpoint
categories: Default
tags: pytorch_lightning model_checkpoint
date: 2021-06-16 08:48
---


 ## #pytorch_lightning #model_checkpoint

自动保存最佳的模型检出点
方便寻找出最佳的检出点，修改参数继续之前最佳。

示例

```python


from pytorch_lightning.callbacks import ModelCheckpoint

checkpoint_callback = ModelCheckpoint(
#设置个名字。方便知道检出点位置
    filename='/kaggle/working/{epoch}-{val_loss:.2f}-{other_metric:.2f}',
   # dirpath="/kaggle/working/checkpoints", 要求太多了 直接设置文件名为全路径来的简单
#     filename='bart-out-{epoch:02d}-{val_loss:.2f}',
#     filename='bart-out',
    # save_last=True, #保存最后一个，话说我们要最后一个干嘛，要最佳表现啊
    verbose=True,
    monitor='val_loss', #检测的依据指标
    mode='min', #增长行数据
#     best_model_path='best'
    save_top_k=2 #保存最佳数目
)





trainer = pl.Trainer(
 
        checkpoint_callback=checkpoint_callback,
 
)

```

https://pytorch-lightning.readthedocs.io/en/stable/api/pytorch_lightning.callbacks.model_checkpoint.html


