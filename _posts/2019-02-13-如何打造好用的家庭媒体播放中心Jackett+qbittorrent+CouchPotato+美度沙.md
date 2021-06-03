---
layout: post
title: "如何打造好用的家庭媒体播放中心 Jackett+qbittorrent+CouchPotato+美度沙"
permalink: '/2019/02/blog-post_13.html'
comments: 1
categories: Default
tags: 美度沙 nas linux Bt下载 emby qbittorrent 默认 CouchPotato Jackett
---
很多人都喜欢折腾我，也不例外，只希望能够把我自己的经验分享给大家，让大家可以少走一些弯路，能够尽快的搭建起自己的家庭多媒体服务系统  
对于这种东西，在系统选择上绝对是Linux，想用windows的话真是不知道该怎么说，反正基本上我不会选择用windows做这种东西  
首先是资源下载和追剧。  
BT下载：qbittorrent非常不错的bt下载客户端，开源好用。建议使用qbittorrent-nox无界面的，所有的操作全部web搞定。  
电视剧追剧：美度沙 https://pymedusa.com/。  
美度沙绝对是追剧神器，添加玩美剧英剧之后，他就会帮你自动搜索更新的下载链接。  
这里有[美杜莎的安装教程&nbsp;](https://www.terrychan.org/2019/04/blog-post.html)，不过是树莓派的，x86主机的话应该差不多，因为我使用的是docker安装的。  
  
电影资源：CouchPotato  
和上个差不多，这里是在追电影资源上。  
BT资源聚合：Jackett https://github.com/Jackett/Jackett 。  
Jackett这个神器就是弥补上面两个搜索资源不足的，可以聚合上百个bt搜索网站，一切资源通通收编了。这个建议外网服务器安装，相当于给国外这群bt站做个聚合代理，不然的话会有好多都没法子用。  
  
接下来是云端播放解决  
视频云端播放：emby 有了他你就可以实现网络播放视频了，并且能够把你下载好的资源补齐封面。  
如果硬件资源不够的话可以使用局域网共享。  
以上这些软件都建议用docker安装，绝对的节省时间，并且少麻烦。  
接下来如果希望在外网能够访问的话就要配置个动态域名了，如果没有独立ip的话可以使用ngrok穿透内网。