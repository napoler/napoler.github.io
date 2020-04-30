---
layout: post
title: '解决drupal domain安装中出现的问题'
permalink: '/2015/12/drupal-domain.html'
comments: 1
categories: Default
tags: domain Drupal
comments: 1
---
  
PHP Fatal error: &nbsp;Cannot redeclare domain_bootstrap() (previously declared in /hom  
e/wwwroot/sites/all/modules/domain/domain.bootstrap.inc:56) in /home/wwwroot/sites/all/modules/domain/domain.bootstrap.inc on line 56 &nbsp; &nbsp; &nbsp; &nbsp;   
解决方法  

<div style="background-color: white; border: 0px; box-sizing: border-box; color: #222222; font-family: 'Lucida Grande', 'DejaVu Sans', 'Bitstream Vera Sans', Verdana, Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18px; margin-bottom: 1.385em; padding: 0px; vertical-align: baseline;">Note that conf_path() uses "include" and not "include_once" for sites.php, so the problem is likely caused there.</div>

<div style="background-color: white; border: 0px; box-sizing: border-box; color: #222222; font-family: 'Lucida Grande', 'DejaVu Sans', 'Bitstream Vera Sans', Verdana, Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18px; margin-bottom: 1.385em; padding: 0px; vertical-align: baseline;">You might use this instead to load the include safely:</div>

<div style="background-color: white; border: 0px; box-sizing: border-box; color: #222222; font-family: 'Lucida Grande', 'DejaVu Sans', 'Bitstream Vera Sans', Verdana, Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18px; margin-bottom: 1.385em; padding: 0px; vertical-align: baseline;"></div>

<div class="codeblock" style="background-color: #f6f6f2; border: 1px solid rgb(204, 204, 204); box-sizing: border-box; color: #222222; font-family: 'Lucida Grande', 'DejaVu Sans', 'Bitstream Vera Sans', Verdana, Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18px; margin: 0px 0px 0.5em; padding: 5px; vertical-align: baseline;"><code style="border: 0px; box-sizing: border-box; font-family: 'Bitstream Vera Sans Mono', Monaco, 'Lucida Console', monospace; font-size: 0.923em; font-stretch: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit; margin: 0px; padding: 1px; vertical-align: baseline; white-space: pre-wrap;">include_once(DRUPAL_ROOT . '/sites/all/modules/contrib/domain/settings.inc');</code></div>

<div style="background-color: white; border: 0px; box-sizing: border-box; color: #222222; font-family: 'Lucida Grande', 'DejaVu Sans', 'Bitstream Vera Sans', Verdana, Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18px; margin-bottom: 1.385em; padding: 0px; vertical-align: baseline;">That should eliminate the duplicate function error.</div>

<div style="background-color: white; border: 0px; box-sizing: border-box; color: #222222; font-family: 'Lucida Grande', 'DejaVu Sans', 'Bitstream Vera Sans', Verdana, Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18px; margin-bottom: 1.385em; padding: 0px; vertical-align: baseline;">We try to avoid include_once(), since it eats system resources. But you can try it here.</div>

<div style="background-color: white; border: 0px; box-sizing: border-box; color: #222222; font-family: 'Lucida Grande', 'DejaVu Sans', 'Bitstream Vera Sans', Verdana, Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18px; padding: 0px; vertical-align: baseline;">If that works, we should update the documentation.</div>

<div style="background-color: white; border: 0px; box-sizing: border-box; color: #222222; font-family: 'Lucida Grande', 'DejaVu Sans', 'Bitstream Vera Sans', Verdana, Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18px; padding: 0px; vertical-align: baseline;"><br/></div>

<div style="background-color: white; border: 0px; box-sizing: border-box; color: #222222; font-family: 'Lucida Grande', 'DejaVu Sans', 'Bitstream Vera Sans', Verdana, Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18px; padding: 0px; vertical-align: baseline;">我修改settings.php里的</div>

<div style="background-color: white; border: 0px; box-sizing: border-box; font-stretch: inherit; padding: 0px; vertical-align: baseline;"><span style="color: #222222; font-family: Lucida Grande, DejaVu Sans, Bitstream Vera Sans, Verdana, Arial, sans-serif;"><span style="font-size: 13px; line-height: 18px;"><br/></span></span></div>

<div style="background-color: white; border: 0px; box-sizing: border-box; font-stretch: inherit; padding: 0px; vertical-align: baseline;"><span style="color: #222222; font-family: Lucida Grande, DejaVu Sans, Bitstream Vera Sans, Verdana, Arial, sans-serif;"><span style="font-size: 13px; line-height: 18px;">include DRUPAL_ROOT . '/sites/all/modules/domain/settings.inc';</span></span></div>

<div style="background-color: white; border: 0px; box-sizing: border-box; font-stretch: inherit; padding: 0px; vertical-align: baseline;"><span style="color: #222222; font-family: Lucida Grande, DejaVu Sans, Bitstream Vera Sans, Verdana, Arial, sans-serif;"><span style="font-size: 13px; line-height: 18px;">为</span></span></div>

<div style="background-color: white; border: 0px; box-sizing: border-box; font-stretch: inherit; padding: 0px; vertical-align: baseline;"><span style="background-color: #f6f6f2; color: #222222; font-family: 'Bitstream Vera Sans Mono', Monaco, 'Lucida Console', monospace; font-size: 12px; line-height: 18px; white-space: pre-wrap;">include_once(DRUPAL_ROOT . '/sites/all/modules/contrib/domain/settings.inc');</span></div>

<div style="background-color: white; border: 0px; box-sizing: border-box; font-stretch: inherit; padding: 0px; vertical-align: baseline;"><span style="background-color: #f6f6f2; color: #222222; font-family: 'Bitstream Vera Sans Mono', Monaco, 'Lucida Console', monospace; font-size: 12px; line-height: 18px; white-space: pre-wrap;">解决问题</span></div>