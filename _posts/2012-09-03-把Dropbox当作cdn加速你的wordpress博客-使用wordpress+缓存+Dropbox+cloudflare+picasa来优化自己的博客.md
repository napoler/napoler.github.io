---
layout: post
title: "把Dropbox当作cdn加速你的wordpress博客-使用wordpress +缓存+Dropbox+cloudflare+picasa来优化自己的博客"
permalink: '/2012/09/wordpressdropboxcdn-wordpress.html'
comments: 1
categories: Default
tags: 
---
Dropbox是众所周知的网盘界中最优秀的,Dropbox的用处多了去了,今天我们就用Dropbox来作为cdn加速你的wordpress.

言归正传,如何使用Dropbox来给你的wordpress加速,这里你需要安装Super Cache 插件.

1,下载你的博客的wp-content 和wp-includes 目录可以跳过里面的php文件.

2,在你的Dropbox的public文件夹下创建一个文件夹,在此我们以cdn作为文件夹名字.

3,创建一个二级域名cdn.XXX.com并解析到<http://dl.dropbox.com/>(这样国内便可以访问Dropbox的文件了),获取一个public文件夹下cdn目录里的文件,前半部分截取http://dl.dropbox.com/u/ID/cdn/,绑定域名便可以替换为http://cdn.XXX.comu/ID/cdn/.

4,在你的 Super Cache 设置里找到cdn设置,勾选enable CDN support(启用cdn),off-site url填入http://cdn.XXX.com/u/ID/cdn/(如果不绑定域名可以填入http://dl.dropbox.com/u/ID/cdn/).下面的全部默认,此处包含的默认目录wp-content 和wp-includes.

ok保存

PS:

1 <http://dl.dropbox.com/>在国内是不可以访问的,绑定域名后可以安全访问文件.

2,你可能感觉http://cdn.XXX.comu/ID/cdn/这样的地址显得有点不专业,你可以先把域名解析到自己的空间,创建 .htaccess

&lt;IfModule mod\_rewrite.c&gt;  
RewriteCond %{HTTP\_HOST} ^cdn\\.xxx\\.com$ \[NC\]&nbsp;  
RewriteRule ^(.\*)$ http://dl.dropbox.com/u/ID/cdn/$1 \[R=301,L\]&nbsp;  
&lt;/IfModule&gt;

在第4步里你在off-site url里填入http://cdn.XXX.com就可以了,不过貌似这样就没法实现国内访问了.

ok这样就可以把你博客里wp-content&nbsp;和wp-includes里的非php文件全部交给Dropbox托管了,对于自己服务器可谓剪掉一个巨大的负担,如果你再把博客的图片托管给第三方的图床的话,我们每次访问一个网页的时候只需要从我们服务器下载几十k甚至几k而已,可以对于服务器配额紧张的朋友来说是巨大的福音.

最后建议大家使用wordpress +缓存+Dropbox+cloudflare+picasa来优化自己的博客,当然我们不能说这么做是最快的,但绝对是对自己的服务器来说是压力最小的,如果不是在景德镇速度也应该是最快的吧,毕竟亚马逊的主机和google的服务器是我们自己买的服务器无法匹敌的.

&nbsp;

<span style="color: #ffffff;"><strong style="font-family: Simsun; font-size: medium; font-weight: normal;"><span style="font-size: 12px; font-family: Georgia; vertical-align: baseline; white-space: pre-wrap;">  
</span></strong></span>