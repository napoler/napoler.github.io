---
layout: post
title: "drupal无阻塞执行cron"
permalink: '/2015/07/drupalcron.html'
comments: 1
categories: Default
tags: 
---
<div><span></span>经常会因为cron阻塞导致很多任务无法执行.</div>

<div>使用<span style="background-color: rgba(0, 0, 0, 0); font-size: 10.5pt; line-height: 1.5;"></span><a href="http://www.apkdigg.com/admin/config/system/background-process" style="font-size: 10.5pt; line-height: 1.5; background-color: window;">http://www.apkdigg.com/admin/config/system/background-process</a><span style="color: rgb(0, 0, 0); font-size: 10.5pt; line-height: 1.5; background-color: rgba(0, 0, 0, 0);">&nbsp;来防止阻塞.</span></div>

<div><h2 style="box-sizing: border-box; margin: 0px 0px 0.45em; padding: 0px; border: 0px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; font-stretch: inherit; line-height: 1.35em; font-size: 1.538em; vertical-align: baseline; color: rgb(34, 34, 34); widows: 1;">Modules that utilize Background Process</h2><ul style="box-sizing: border-box; margin: 0px 0px 0.692em; padding: 0px 0px 0px 2em; border: 0px; font-family: 'Lucida Grande', 'DejaVu Sans', 'Bitstream Vera Sans', Verdana, Arial, sans-serif; font-stretch: inherit; line-height: 17.9999942779541px; font-size: 13px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(34, 34, 34); widows: 1;"><li style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;"><a href="https://www.drupal.org/project/ultimate_cron" rel="nofollow" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(6, 120, 190); text-decoration: none; outline-offset: 0.2em; outline: red dotted 0.14em !important;">Ultimate Cron</a></li><li style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;"><a href="https://www.drupal.org/project/cache_graceful" rel="nofollow" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; color: rgb(6, 120, 190); text-decoration: none; outline-offset: 0.2em; outline: red dotted 0.14em !important;">Cache Graceful</a></li></ul></div>

<span style="color: rgb(0, 0, 0); background-color: rgba(0, 0, 0, 0);"></span> 

<div><br/></div>

<hr align="left" color="#b5c4df" size="1" style="width: 210px; height: 1px;"/>

 

<div><span><div style="MARGIN: 10px; FONT-FAMILY: verdana; FONT-SIZE: 10pt"><br/></div></span></div>