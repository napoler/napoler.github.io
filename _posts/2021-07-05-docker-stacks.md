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

docker run --rm -p 10000:8888 -e JUPYTER_ENABLE_LAB=yes -v "${PWD}":/home/jovyan/work jupyter/datascience-notebook:33add21fab64



```


创建密码

```python

import IPython
IPython.lib.passwd()

```


启动预设密码的jupyter

```bash


docker run -d -p 8888:8888 jupyter/base-notebook start-notebook.sh --NotebookApp.password='sha1:74ba40f8a388:c913541b7ee99d15d5ed31d4226bf7838f83a50e'

```
