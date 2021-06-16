---
layout: post
comments: 1
title:  2021-06-16 记事WandbLogger 
categories: Default
tags: WandbLogger
date: 2021-06-16 10:33
---

WandbLogger
Parameters

-   **name**[](https://pytorch-lightning.readthedocs.io/en/stable/api/pytorch_lightning.loggers.wandb.html#pytorch_lightning.loggers.wandb.WandbLogger.params.name) ([`Optional`](https://docs.python.org/3/library/typing.html#typing.Optional "(in Python v3.9)")\[[`str`](https://docs.python.org/3/library/stdtypes.html#str "(in Python v3.9)")\]) – Display name for the run.
    
-   **save\_dir**[](https://pytorch-lightning.readthedocs.io/en/stable/api/pytorch_lightning.loggers.wandb.html#pytorch_lightning.loggers.wandb.WandbLogger.params.save_dir) ([`Optional`](https://docs.python.org/3/library/typing.html#typing.Optional "(in Python v3.9)")\[[`str`](https://docs.python.org/3/library/stdtypes.html#str "(in Python v3.9)")\]) – Path where data is saved (wandb dir by default).
    
-   **offline**[](https://pytorch-lightning.readthedocs.io/en/stable/api/pytorch_lightning.loggers.wandb.html#pytorch_lightning.loggers.wandb.WandbLogger.params.offline) ([`Optional`](https://docs.python.org/3/library/typing.html#typing.Optional "(in Python v3.9)")\[[`bool`](https://docs.python.org/3/library/functions.html#bool "(in Python v3.9)")\]) – Run offline (data can be streamed later to wandb servers).
    
-   **id**[](https://pytorch-lightning.readthedocs.io/en/stable/api/pytorch_lightning.loggers.wandb.html#pytorch_lightning.loggers.wandb.WandbLogger.params.id) ([`Optional`](https://docs.python.org/3/library/typing.html#typing.Optional "(in Python v3.9)")\[[`str`](https://docs.python.org/3/library/stdtypes.html#str "(in Python v3.9)")\]) – Sets the version, mainly used to resume a previous run.
    
-   **version**[](https://pytorch-lightning.readthedocs.io/en/stable/api/pytorch_lightning.loggers.wandb.html#pytorch_lightning.loggers.wandb.WandbLogger.params.version) ([`Optional`](https://docs.python.org/3/library/typing.html#typing.Optional "(in Python v3.9)")\[[`str`](https://docs.python.org/3/library/stdtypes.html#str "(in Python v3.9)")\]) – Same as id.
    
-   **anonymous**[](https://pytorch-lightning.readthedocs.io/en/stable/api/pytorch_lightning.loggers.wandb.html#pytorch_lightning.loggers.wandb.WandbLogger.params.anonymous) ([`Optional`](https://docs.python.org/3/library/typing.html#typing.Optional "(in Python v3.9)")\[[`bool`](https://docs.python.org/3/library/functions.html#bool "(in Python v3.9)")\]) – Enables or explicitly disables anonymous logging.
    
-   **project**[](https://pytorch-lightning.readthedocs.io/en/stable/api/pytorch_lightning.loggers.wandb.html#pytorch_lightning.loggers.wandb.WandbLogger.params.project) ([`Optional`](https://docs.python.org/3/library/typing.html#typing.Optional "(in Python v3.9)")\[[`str`](https://docs.python.org/3/library/stdtypes.html#str "(in Python v3.9)")\]) – The name of the project to which this run will belong.
    
-   **log\_model**[](https://pytorch-lightning.readthedocs.io/en/stable/api/pytorch_lightning.loggers.wandb.html#pytorch_lightning.loggers.wandb.WandbLogger.params.log_model) ([`Optional`](https://docs.python.org/3/library/typing.html#typing.Optional "(in Python v3.9)")\[[`bool`](https://docs.python.org/3/library/functions.html#bool "(in Python v3.9)")\]) – Save checkpoints in wandb dir to upload on W&B servers. 是否将模型上传到wandb，可以关掉用自己的本地存储就可以，不然的话100G很快会消耗没的
    
-   **prefix**[](https://pytorch-lightning.readthedocs.io/en/stable/api/pytorch_lightning.loggers.wandb.html#pytorch_lightning.loggers.wandb.WandbLogger.params.prefix) ([`Optional`](https://docs.python.org/3/library/typing.html#typing.Optional "(in Python v3.9)")\[[`str`](https://docs.python.org/3/library/stdtypes.html#str "(in Python v3.9)")\]) – A string to put at the beginning of metric keys.
    
-   **experiment**[](https://pytorch-lightning.readthedocs.io/en/stable/api/pytorch_lightning.loggers.wandb.html#pytorch_lightning.loggers.wandb.WandbLogger.params.experiment) – WandB experiment object. Automatically set when creating a run.
    
-   **\*\*kwargs**[](https://pytorch-lightning.readthedocs.io/en/stable/api/pytorch_lightning.loggers.wandb.html#pytorch_lightning.loggers.wandb.WandbLogger.params.**kwargs) – Arguments passed to `wandb.init()` like entity, group, tags, etc.






https://pytorch-lightning.readthedocs.io/en/1.3.5/api/pytorch_lightning.loggers.wandb.html





