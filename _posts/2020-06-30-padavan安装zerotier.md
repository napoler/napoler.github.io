---
layout: post
comments: 1
title:  padavan安装zerotier内网穿透搭建私有局域网
categories: Default
tags: 默认
---


ZeroTier在计算机和任何其他计算机之间设置VPN隧道组成一个局域网中，该网内设备自由访问，可完全免费使用多达100台设备。
zerotier.com



```

```
自定义设置 - 脚本
自定义脚本0(功能配置):
加入以下代码
```
#padavan安装
opkg update
opkg install zerotier
#启动
zerotier-one -d
zerotier-cli Network ID
```

这样可以加入你的局域网了。
