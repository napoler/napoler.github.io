---
layout: post
comments: 1
title:  lightning其他项目 kaggle添加验证信息等
categories: Default
tags: Default
date: 2021-06-16 14:06
---

## #PyTorchLightning 还有这么多好用的
Flexible interface for high-performance research using SOTA Transformers leveraging Pytorch Lightning, Transformers, and Hydra.
[https://github.com/PyTorchLightning/lightning-transformers](https://github.com/PyTorchLightning/lightning-transformers)




kaggle添加验证信息等

```python
import wandb
 from kaggle_secrets import UserSecretsClient
 user_secrets = UserSecretsClient() 

personal_key_for_api = user_secrets.get_secret("wandb-key")

! wandb login $personal_key_for_api

```

https://github.com/ultralytics/yolov5/issues/1372




