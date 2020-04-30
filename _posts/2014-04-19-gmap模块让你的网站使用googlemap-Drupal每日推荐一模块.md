---
layout: post
title: 'gmap 模块让你的网站使用google map-Drupal每日推荐一模块'
permalink: '/2014/04/gmap-google-map-drupal_19.html'
comments: 1
categories: Default
tags: gmap google map google maps Drupal每日推荐一模块
comments: 1
---
<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><a href="http://drupal.org/project/gmap" style="color: black; font-weight: bold;">gamp</a>模块可以在节点中显示google map的地图,比较好玩,一般做地点指引时会用到,今天试了一下.</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">下载这个模块,到<a href="http://code.google.com/apis/maps/signup.html" style="color: black; font-weight: bold;">这里</a>申请一个免费的KEY,填上你的网址,就能申请到.</div>

<ul style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; text-align: justify;"><li style="line-height: 17px;">安装gmap模块,这时要注意一下</li><div style="line-height: 17px;"><img alt="示例1" border="0" height="295" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap1.jpg" width="466"/></div><li style="line-height: 17px;">设置Gmap模块</li><div style="line-height: 17px;"><img alt="示例1" border="0" height="97" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap2.jpg" style="border: 0pt none;" width="483"/></div><div style="line-height: 17px;"><img alt="示例1" border="0" height="393" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap3.jpg" style="border: 0pt none;" width="471"/></div><li style="line-height: 17px;">下面的设置不用去管它,我都是用默认的.</li><li style="line-height: 17px;">启用gmap格式.<br/>在站点设置&gt;输入格式&gt;增加输入格式(/admin/settings/filters/add)中,你会看到多了一个格式</li><div style="line-height: 17px;"><img alt="示例1" border="0" height="393" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap4.jpg" style="border: 0pt none;" width="471"/></div></ul>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">在节点中使用Gmap,创建任意一个节点.在输入格式中看一下.</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><img alt="示例" border="0" height="515" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap5.jpg" width="449"/></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">点击链接之后</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><img alt="示例" border="0" height="175" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap6.jpg" width="418"/></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><img alt="示例" border="0" height="278" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap7.jpg" width="431"/></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">OK,复制文本框的内容到你的body中,保存之后,是不是能看到Gmap了.</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; text-align: justify;"><h3 style="margin: 0px 0px 5px;">多看看模块中的说明</h3><div style="line-height: 17px;">如果你想在标示中加入文字说明,需要手工加入,在markers=big blue::28,120<span style="color: red;">:我们就在这里</span>,红色部分是加入的提示,这个功能搞了我好久,其中在模块中的一个文件就有说明.</div></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">想看全中文的地图如这样.<img alt="示例" border="0" height="264" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap8.jpg" width="573"/></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">在模块的gmap.module文件中281行左右,将 ‘hl’ =&gt;&nbsp;<span style="color: red;">“zh_CN”</span>,这是因为在drupal中的中文编码为zh_hans,而gmap中认为中文是zh_CN.</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">转自:http://joom.net.ru/content/gmap-mo-kuai</div>---
layout: post
title: 'gmap 模块让你的网站使用google map-Drupal每日推荐一模块'
permalink: '/2014/04/gmap-google-map-drupal.html'
comments: 1
categories: Default
tags: gmap google map google maps Drupal每日推荐一模块
comments: 1
---
<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><a href="http://drupal.org/project/gmap" style="color: black; font-weight: bold;">gamp</a>模块可以在节点中显示google map的地图,比较好玩,一般做地点指引时会用到,今天试了一下.</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">下载这个模块,到<a href="http://code.google.com/apis/maps/signup.html" style="color: black; font-weight: bold;">这里</a>申请一个免费的KEY,填上你的网址,就能申请到.</div>

<ul class="arrow" style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; text-align: justify;"><li style="line-height: 17px;">安装gmap模块,这时要注意一下</li><div style="line-height: 17px;"><img alt="示例1" border="0" height="295" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap1.jpg" width="466"/></div><li style="line-height: 17px;">设置Gmap模块</li><div style="line-height: 17px;"><img alt="示例1" border="0" height="97" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap2.jpg" style="border: 0pt none;" width="483"/></div><div style="line-height: 17px;"><img alt="示例1" border="0" height="393" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap3.jpg" style="border: 0pt none;" width="471"/></div><li style="line-height: 17px;">下面的设置不用去管它,我都是用默认的.</li><li style="line-height: 17px;">启用gmap格式.<br/>在站点设置&gt;输入格式&gt;增加输入格式(/admin/settings/filters/add)中,你会看到多了一个格式</li><div style="line-height: 17px;"><img alt="示例1" border="0" height="393" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap4.jpg" style="border: 0pt none;" width="471"/></div></ul>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">在节点中使用Gmap,创建任意一个节点.在输入格式中看一下.</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><img alt="示例" border="0" height="515" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap5.jpg" width="449"/></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">点击链接之后</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><img alt="示例" border="0" height="175" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap6.jpg" width="418"/></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><img alt="示例" border="0" height="278" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap7.jpg" width="431"/></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">OK,复制文本框的内容到你的body中,保存之后,是不是能看到Gmap了.</div>

<div class="legend" style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; text-align: justify;"><h3 class="legend-title" style="margin: 0px 0px 5px;">多看看模块中的说明</h3><div style="line-height: 17px;">如果你想在标示中加入文字说明,需要手工加入,在markers=big blue::28,120<span style="color: red;">:我们就在这里</span>,红色部分是加入的提示,这个功能搞了我好久,其中在模块中的一个文件就有说明.</div></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">想看全中文的地图如这样.<img alt="示例" border="0" height="264" src="http://napoler.ixiezi.com/sites/joom.net.ru/files/u3/gmap8.jpg" width="573"/></div>

<div class="info" style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">在模块的gmap.module文件中281行左右,将 ‘hl’ =&gt;&nbsp;<span style="color: red;">“zh_CN”</span>,这是因为在drupal中的中文编码为zh_hans,而gmap中认为中文是zh_CN.</div>

<div class="info" style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">转自:http://joom.net.ru/content/gmap-mo-kuai</div>