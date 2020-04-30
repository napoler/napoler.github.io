---
layout: post
title: "crontab开机自动挂载远程nfs文件"
permalink: '/2020/04/crontabnfs.html'
comments: 1
categories: Default
tags: nfs crontab
---
crontab -e  

<div>修改下面信息</div>

  
@reboot sleep 60 &amp;&amp; sudo mount -t nfs 192.168.1.222:/media/AiDisk_a1 /home/dirve/ &gt; /home/u/cron.log  
  
crontab 等待60s后自动挂载，防止网络没有加载挂载失败。