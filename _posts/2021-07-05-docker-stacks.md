---
layout: post
comments: 1
title:  docker-stacks
categories: Default
tags: docker
date: 2021-07-05 09:19
---

 2021-07-05 记事




https://github.com/jupyter/docker-stacks

```bash

docker run --rm -p 10000:8888 -e JUPYTER_ENABLE_LAB=yes -v "${PWD}":/home/jovyan/work jupyter/scipy-notebo:33add21fab64




```


创建密码

```python

import IPython
IPython.lib.passwd()

```


启动预设密码的jupyter
密码

```bash


docker run --restart unless-stopped -d -p 10001:8888 -e JUPYTER_ENABLE_LAB=yes  -v "${PWD}":/home/jovyan/work  jupyter/scipy-notebook:33add21fab64 start-notebook.sh --NotebookApp.password='sha1:4f88c5b4e717:738d86f19cbdc3e685b047bbd37a87172ffa620e'

```


```
docker run -it --rm -p 8888:8888 jupyter/base-notebook start.sh jupyter lab

```
更多设置
https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html#notebook-options
