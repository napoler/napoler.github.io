---
layout: post
title: "Docker下快速搭建nginx"
permalink: '/2019/05/dockernginx.html'
comments: 1
categories: Default
tags: docker nginx 默认
---
## 下载镜象

docker pull nginx

## 复制默认配置

mkdir /terry/www  
mkdir /terry/conf

$ docker run –name tmp-nginx-container -d nginx  
$ docker cp tmp-nginx-container:/etc/nginx/ /terry/conf  
$ docker rm -f tmp-nginx-container

## 创建运行镜象

docker run –name nginx -d -p 80:80 \\  
-v /terry/www:/usr/share/nginx/html \\  
-v /terry/conf/nginx:/etc/nginx \\  
-v /terry/logs:/var/log/nginx \\  
nginx

之后就可以

docker start nginx