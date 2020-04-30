---
layout: post
title: '今天把nginx升级到nginx1.3.11版本'
permalink: '/2013/01/nginxnginx1311.html'
comments: 1
categories: Default
tags: nginx1.3.11 nginx htaccess
comments: 1
---
今天把nginx升级到nginx1.3.11版本,本来想spdy,不过无奈未果,以后有时间再启用吧.

<div>不过升级后导致vps安装的wordpress多站点绑定域名却指向了默认的目录,幸好通过修改nginx虚拟主机对应的.conf配置文件实现.</div>

<div><div>server {</div><div>&nbsp; &nbsp; &nbsp; &nbsp; listen &nbsp; &nbsp; &nbsp; 80;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; server_name locahost;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; root wordpress目录;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; index &nbsp;index.html index.php index.htm;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; location ~ \.php$ {</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fastcgi_pass &nbsp; 127.0.0.1:9000;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fastcgi_index &nbsp;index.php;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; include fcgi.conf;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; }</div><div>&nbsp; &nbsp; &nbsp; &nbsp; include rewrite/wpmu.conf;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;include&nbsp;wordpress目录/.htaccess;</div><div>} &nbsp; &nbsp; &nbsp; &nbsp;</div></div>

<div>另外说一下,nginx支持htaccess.所以在这里引入htaccess直接可以方便使用.</div>

<div>昨天开始wordpress采用<strong style="background-color: #fcfcfc; display: inline !important; font-family: sans-serif; font-size: 12px; line-height: 16.796875px; margin-bottom: 0.2em; white-space: nowrap; word-wrap: break-word;">DB Cache Reloaded Fix,</strong><strong style="background-color: #fcfcfc; display: inline !important; font-family: sans-serif; font-size: 12px; line-height: 16.796875px; margin-bottom: 0.2em; white-space: nowrap; word-wrap: break-word;">Hyper Cache Extended,</strong><strong style="background-color: #fcfcfc; display: inline !important; font-family: sans-serif; font-size: 12px; line-height: 16.796875px; margin-bottom: 0.2em; white-space: nowrap; word-wrap: break-word;">WP Minify,</strong><strong style="background-color: #fcfcfc; display: inline !important; font-family: sans-serif; font-size: 12px; line-height: 16.796875px; margin-bottom: 0.2em; white-space: nowrap; word-wrap: break-word;">WP Widget Cache组合的缓存</strong></div>

<div><strong style="background-color: #fcfcfc; display: inline !important; font-family: sans-serif; font-size: 12px; line-height: 16.796875px; margin-bottom: 0.2em; white-space: nowrap; word-wrap: break-word;"><br/></strong></div>

<div><strong style="background-color: #fcfcfc; display: inline !important; font-family: sans-serif; font-size: 12px; line-height: 16.796875px; margin-bottom: 0.2em; white-space: nowrap; word-wrap: break-word;">DB Cache Reloaded Fix</strong></div>

<div><span style="font-family: sans-serif;"><span style="font-size: 12px; line-height: 16.796875px; white-space: nowrap;"><b>数据库缓存,很不错的.</b></span></span></div>

<div><strong style="background-color: #fcfcfc; display: inline !important; font-family: sans-serif; font-size: 12px; line-height: 16.796875px; margin-bottom: 0.2em; white-space: nowrap; word-wrap: break-word;">Hyper Cache Extended</strong></div>

<div><span style="font-family: sans-serif;"><span style="font-size: 12px; line-height: 16.796875px; white-space: nowrap;"><b>缓存页面</b></span></span></div>

<div><strong style="background-color: #fcfcfc; display: inline !important; font-family: sans-serif; font-size: 12px; line-height: 16.796875px; margin-bottom: 0.2em; white-space: nowrap; word-wrap: break-word;">WP Minify</strong></div>

<div><span style="font-family: sans-serif;"><span style="font-size: 12px; line-height: 16.796875px; white-space: nowrap;"><b>压缩合并js,cs脚本</b></span></span></div>

<div><strong style="background-color: #fcfcfc; display: inline !important; font-family: sans-serif; font-size: 12px; line-height: 16.796875px; margin-bottom: 0.2em; white-space: nowrap; word-wrap: break-word;">WP Widget Cache</strong></div>

<div><span style="font-family: sans-serif;"><span style="font-size: 12px; line-height: 16.796875px; white-space: nowrap;"><b>widget缓存</b></span></span></div>

<div><span style="font-family: sans-serif;"><span style="font-size: 12px; line-height: 16.796875px; white-space: nowrap;"><b><br/></b></span></span></div>

<div><span style="font-family: sans-serif;"><span style="font-size: 12px; line-height: 16.796875px; white-space: nowrap;"><b>再次看了下老外写的文章使用的就是</b></span></span><strong style="background-color: #fcfcfc; display: inline !important; font-family: sans-serif; font-size: 12px; line-height: 16.796875px; margin-bottom: 0.2em; white-space: nowrap; word-wrap: break-word;">DB Cache Reloaded Fix,</strong><strong style="background-color: #fcfcfc; display: inline !important; font-family: sans-serif; font-size: 12px; line-height: 16.796875px; margin-bottom: 0.2em; white-space: nowrap; word-wrap: break-word;">Hyper Cache Extended,</strong><strong style="background-color: #fcfcfc; display: inline !important; font-family: sans-serif; font-size: 12px; line-height: 16.796875px; margin-bottom: 0.2em; white-space: nowrap; word-wrap: break-word;">WP Minify组合的.我又用了</strong><strong style="background-color: #fcfcfc; display: inline !important; font-family: sans-serif; font-size: 12px; line-height: 16.796875px; margin-bottom: 0.2em; white-space: nowrap; word-wrap: break-word;">WP Widget Cache来</strong></div>

<div><span style="font-family: sans-serif;"><span style="font-size: 12px; line-height: 16.796875px; white-space: nowrap;"><b>缓存widget,按理说如果缓存后应该没什么了,不过缓存下widget至少能够减少第一次访问时候的查询.</b></span></span></div>

<div><span style="font-family: sans-serif;"><span style="font-size: 12px; line-height: 16.796875px; white-space: nowrap;"><b><br/></b></span></span></div>

<div><br/></div>