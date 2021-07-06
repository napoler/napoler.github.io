---
layout: post
comments: 1
title:  PyTorchLightning configure_optimizers 使用ReduceLROnPlateau
categories: Default
tags: ReduceLROnPlateau
date: 2021-07-06 10:04
---

ReduceLROnPlateau自动优化



```python


def configure_optimizers_v2(self):
	"""优化器 自动优化器"""
	optimizer = AdamW(filter(lambda p: p.requires_grad, self.parameters()), lr=(self.hparams.learning_rate))
	#         使用自适应调整模型
	scheduler = torch.optim.lr_scheduler.ReduceLROnPlateau(optimizer,mode='min',patience=3,factor=0.1,verbose=True)

#         https://github.com/PyTorchLightning/pytorch-lightning/blob/6dc1078822c33fa4710618dc2f03945123edecec/pytorch_lightning/core/lightning.py#L1119

	lr_scheduler={
#            'optimizer': optimizer,
	   'scheduler': scheduler,
		'reduce_on_plateau': True, # For ReduceLROnPlateau scheduler
		'interval': 'epoch',
		'frequency': 1,
		'name':"lr_scheduler",
		'monitor': 'val_loss', #监听数据变化
		'strict': True,
	}
#         return [optimizer], [lr_scheduler]
	return {"optimizer": optimizer, "lr_scheduler": lr_scheduler}
```

