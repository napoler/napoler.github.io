---
layout: post
comments: 1
title:  jupyterhub Docker 设置登陆账户
categories: Default
tags: Default
date: 2021-07-02 15:08
---

 2021-07-02 记事



`docker exec -it jupyterhub bash`然后`passwd root`设置root的密码。  
之后，您可以使用`root`上面设置的用户名和密码登录。

但是，root 管理员总是返回“Spawn failed”错误。  
只有在 docker 容器中创建的普通用户才能成功生成。  

https://jupyterhub.readthedocs.io/en/stable/quickstart-docker.html

https://github.com/jupyterhub/jupyterhub/issues/2989