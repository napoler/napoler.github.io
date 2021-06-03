---
layout: post
comments: 1
title:  slpash启用tor代理
categories: Default
tags: 默认
---

# 

启用docker

```bash
sudo docker run -d --name splash -p 8050:8050 -v /mnt/data/proxy:/etc/splash/proxy-profiles -p 5023:5023 scrapinghub/splash --max-timeout 3600
```

创建一个tor.ini

```bash
[proxy]

; required
host=107.12.96.188
port=9050

; optional, default is no auth
;username=username
;password=password

; optional, default is HTTP. Allowed values are HTTP and SOCKS5
type=SOCKS5

;[rules]
; optional, default ".*"
;whitelist=
;    .*mywebsite\.com.*

; optional, default is no blacklist
;blacklist=
;    .*\.js.*
;    .*\.css.*
;    .*\.png
```

只需要在请求参数中加入&proxy=tor 即可。

```bash
curl 'http://localhost:8050/render.html?url=http://mywebsite.com/page-with-javascript.html&proxy=mywebsite'
```

[Splash HTTP API - Splash 3.5 documentation](https://splash.readthedocs.io/en/stable/api.html?highlight=docker%20proxy#proxy-profiles)
