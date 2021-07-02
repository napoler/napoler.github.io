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




要安装 conda-pack，请确保您位于 root 或 base 环境中，以便 conda-pack 在子环境中可用。Conda-pack 可通过 conda-forge 或者 PyPI 安装。

**conda-forge:**

```bash
 conda install -c conda-forge conda-pack
```

**PyPI:**

```bash
 pip install conda-pack
```

**打包一个环境：**

```bash
# Pack environment my_env into my_env.tar.gz
conda pack -n my_env

# Pack environment my_env into out_name.tar.gz
conda pack -n my_env -o out_name.tar.gz

# Pack environment located at an explicit path into my_env.tar.gz
conda pack -p /explicit/path/to/my_env
```



- ```bash
conda pack -n clearhtml37 -o clearhtml37.tar.gz
conda activate clearhtml37
```


**重现环境：**

```bash
# Unpack environment into directory `my_env`
mkdir -p my_env
tar -xzf my_env.tar.gz -C my_env

# Use Python without activating or fixing the prefixes. Most Python
# libraries will work fine, but things that require prefix cleanups
# will fail.
./my_env/bin/python

# Activate the environment. This adds `my_env/bin` to your path
source my_env/bin/activate

# Run Python from in the environment
(my_env) $ python

# Cleanup prefixes from in the active environment.
# Note that this command can also be run without activating the environment
# as long as some version of Python is already installed on the machine.
(my_env) $ conda-unpack
```