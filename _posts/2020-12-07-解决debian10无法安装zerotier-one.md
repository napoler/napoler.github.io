---
layout: post
comments: 1
title:  解决debian10无法安装zerotier-one
categories: Default
tags: 默认
---

出现debian10无法安装zerotier-one的情况下，可以直接下载对应的包安装

```
wget http://download.zerotier.com/debian/buster/pool/main/z/zerotier-one/zerotier-one_1.6.2_amd64.deb
# Join, leave, and list networks


dpkg -i zerotier-one_1.6.2_amd64.deb


zerotier-cli join ################
zerotier-cli leave ################
zerotier-cli listnetworks
```
