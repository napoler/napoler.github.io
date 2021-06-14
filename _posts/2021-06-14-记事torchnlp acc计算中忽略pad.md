---
layout: post
comments: 1
title:  2021-06-14 记事 torchnlp acc计算中忽略pad
categories: Default
tags: Default
date: 2021-06-14 17:51
---

 2021-06-14 记事



## 错误UserWarning: SWA is currently only supported every epoch.


```

   lr_scheduler={
    #            'optimizer': optimizer,
               'scheduler': scheduler,
#                 'reduce_on_plateau': True, # For ReduceLROnPlateau scheduler
                'interval': 'epoch', #epoch/step 这里使用epoch可以
                'frequency': 1,
                'name':"lr_scheduler",
                'monitor': 'train_loss', #监听数据变化
                'strict': True,
            }
    #         return [optimizer], [lr_scheduler]
            return {"optimizer": optimizer, "lr_scheduler": lr_scheduler}

```


## 这个测试写法真是省事
[https://pytorch-lightning.readthedocs.io/en/stable/common/lightning\_module.html#inference-in-production](https://pytorch-lightning.readthedocs.io/en/stable/common/lightning_module.html#inference-in-production)

```python

import pytorch_lightning as pl
from pytorch_lightning.metrics import functional as FM

class ClassificationTask(pl.LightningModule):

     def __init__(self, model):
         super().__init__()
         self.model = model

     def training_step(self, batch, batch_idx):
         x, y = batch
         y_hat = self.model(x)
         loss = F.cross_entropy(y_hat, y)
         return loss

     def validation_step(self, batch, batch_idx):
        x, y = batch
        y_hat = self.model(x)
        loss = F.cross_entropy(y_hat, y)
        acc = FM.accuracy(y_hat, y)

        metrics = {'val_acc': acc, 'val_loss': loss}
        self.log_dict(metrics)
        return metrics
	#这个测试写法真是省事
     def test_step(self, batch, batch_idx):
        metrics = self.validation_step(batch, batch_idx)
        metrics = {'test_acc': metrics['val_acc'], 'test_loss': metrics['val_loss']}
        self.log_dict(metrics)

     def configure_optimizers(self):
         return torch.optim.Adam(self.model.parameters(), lr=0.02)

```


## 计算 #acc 前需要先做 #softmax #torch

`torch.nn.functional.``softmax`

## #torchnlp acc计算中忽略pad


### Basic Utilities for PyTorch Natural Language Processing (NLP)

## Installation ![feet](https://github.githubassets.com/images/icons/emoji/unicode/1f43e.png)

Make sure you have Python 3.6+ and PyTorch 1.0+. You can then install `pytorch-nlp` using pip:

pip install pytorch\-nlp

Or to install the latest code via:

pip install git+https://github.com/PetrochukM/PyTorch\-NLP.git

[https://pytorchnlp.readthedocs.io/en/latest/\_modules/torchnlp/metrics/accuracy.html](https://pytorchnlp.readthedocs.io/en/latest/_modules/torchnlp/metrics/accuracy.html)


```python

import torch

from torchnlp.utils import torch_equals_ignore_index

is_scalar = lambda t: torch.is_tensor(t) and len(t.size()) == 0


[docs]def get_accuracy(targets, outputs, k=1, ignore_index=None):
    """ Get the accuracy top-k accuracy between two tensors.

    Args:
      targets (1 - 2D :class:`torch.Tensor`): Target or true vector against which to measure
          saccuracy
      outputs (1 - 3D :class:`torch.Tensor`): Prediction or output vector
      ignore_index (int, optional): Specifies a target index that is ignored

    Returns:
      :class:`tuple` consisting of accuracy (:class:`float`), number correct (:class:`int`) and
      total (:class:`int`)

    Example:

        >>> import torch
        >>> from torchnlp.metrics import get_accuracy
        >>> targets = torch.LongTensor([1, 2, 3, 4, 5])
        >>> outputs = torch.LongTensor([1, 2, 2, 3, 5])
        >>> accuracy, n_correct, n_total = get_accuracy(targets, outputs, ignore_index=3)
        >>> accuracy
        0.8
        >>> n_correct
        4
        >>> n_total
        5
    """
    n_correct = 0.0
    for target, output in zip(targets, outputs):
        if not torch.is_tensor(target) or is_scalar(target):
            target = torch.LongTensor([target])

        if not torch.is_tensor(output) or is_scalar(output):
            output = torch.LongTensor([[output]])

        predictions = output.topk(k=min(k, len(output)), dim=0)[0]
        for prediction in predictions:
            if torch_equals_ignore_index(
                    target.squeeze(), prediction.squeeze(), ignore_index=ignore_index):
                n_correct += 1
                break

    return n_correct / len(targets), int(n_correct), len(targets)



[docs]def get_token_accuracy(targets, outputs, ignore_index=None):
    """ Get the accuracy token accuracy between two tensors.

    Args:
      targets (1 - 2D :class:`torch.Tensor`): Target or true vector against which to measure
          saccuracy
      outputs (1 - 3D :class:`torch.Tensor`): Prediction or output vector
      ignore_index (int, optional): Specifies a target index that is ignored

    Returns:
      :class:`tuple` consisting of accuracy (:class:`float`), number correct (:class:`int`) and
      total (:class:`int`)

    Example:

        >>> import torch
        >>> from torchnlp.metrics import get_token_accuracy
        >>> targets = torch.LongTensor([[1, 1], [2, 2], [3, 3]])
        >>> outputs = torch.LongTensor([[1, 1], [2, 3], [4, 4]])
        >>> accuracy, n_correct, n_total = get_token_accuracy(targets, outputs, ignore_index=3)
        >>> accuracy
        0.75
        >>> n_correct
        3.0
        >>> n_total
        4.0
     """
    n_correct = 0.0
    n_total = 0.0
    for target, output in zip(targets, outputs):
        if not torch.is_tensor(target) or is_scalar(target):
            target = torch.LongTensor([target])

        if not torch.is_tensor(output) or is_scalar(output):
            output = torch.LongTensor([[output]])

        if len(target.size()) != len(output.size()):
            prediction = output.max(dim=0)[0].view(-1)
        else:
            prediction = output

        if ignore_index is not None:
            mask = target.ne(ignore_index)
            n_correct += prediction.eq(target).masked_select(mask).sum().item()
            n_total += mask.sum().item()
        else:
            n_total += len(target)
            n_correct += prediction.eq(target).sum().item()

    return n_correct / n_total, n_correct, n_total


```


## 使用
[https://pytorchnlp.readthedocs.io/en/latest/source/torchnlp.metrics.html](https://pytorchnlp.readthedocs.io/en/latest/source/torchnlp.metrics.html)


 获取topk的acc 这个在nlp中更加实用
 Parameters:
 	还支持2d很不错
-   **targets** (1 - 2D `torch.Tensor`) – Target or true vector against which to measure saccuracy
-   **outputs** (1 - 3D `torch.Tensor`) – Prediction or output vector
-   **ignore\_index** ([_int_](https://docs.python.org/3/library/functions.html#int "(in Python v3.9)")_,_ _optional_) – Specifies a target index that is ignored



 
>>> import torch
>>> from torchnlp.metrics import get_accuracy
>>> targets = torch.LongTensor([1, 2, 3, 4, 5])
>>> outputs = torch.LongTensor([1, 2, 2, 3, 5])
>>> accuracy, n_correct, n_total = get_accuracy(targets, outputs, ignore_index=3)
>>> accuracy
0.8
>>> n_correct
4
>>> n_total
5



Get the accuracy token accuracy between two tensors.


获取acc
>>> import torch
>>> from torchnlp.metrics import get_token_accuracy
>>> targets = torch.LongTensor([[1, 1], [2, 2], [3, 3]])
>>> outputs = torch.LongTensor([[1, 1], [2, 3], [4, 4]])
>>> accuracy, n_correct, n_total = get_token_accuracy(targets, outputs, ignore_index=3)
>>> accuracy
0.75
>>> n_correct
3.0
>>> n_total
4.0