---
layout: post
title: 'view的一个重量级api views_get_view'
permalink: '/2010/04/viewapi-viewsgetview.html'
comments: 1
categories: Default
tags: drupal模块 drupal优化 views_get_view views
comments: 1
---
<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">格式：views_get_view($name, $reset = FALSE)(适合drupal 6和7版本)</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">作用：从<strong>数据库</strong>或者默认的<strong>views</strong>得到一个<strong>view</strong></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">说明：$name 是<strong>view</strong>的名称.$reset若设为真, 在负载缓存内复位此项。当你确定你需要一个新的<strong>view</strong>时，才使用这个参数。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">使用：这里假设创建了一个<strong>viewtes</strong>t的viewtest</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">1，用代码输出views</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">&lt;?php</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views=views_get_view(“viewtest”);</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views-&gt;preview();</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$results=$views-&gt;result;</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">//下面的代码与<strong>views</strong>无关的</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">print_r($results);</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">复制代码</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">2，传入argument。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">&lt;?php</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views=views_get_view(“viewtest”);</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views-&gt;set_arguments(array(3));</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views-&gt;preview();</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$results=$views-&gt;result;</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">print_r($results);</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">?&gt;</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">复制代码</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">3，控制输出的结果数</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">目前我们的结果都是只输出10个结果，我现在想输出50个结果。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">对比例子一：只增加了两行</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">&lt;?php</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views=views_get_view(“viewtest”);</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views-&gt;set_display(‘default’);</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views-&gt;display_handler-&gt;set_option(‘items_per_page’, 50);</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views-&gt;preview();</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$results=$views-&gt;result;</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">print_r($results);</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">?&gt;</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">复制代码</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">4,输出views的HTML</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">print $views-&gt;preview();</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">5,控制是否<strong>分页</strong></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views-&gt;display_handler-&gt;set_option(‘use_pager’,1);</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">当为0时则不<strong>分页</strong></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">6,控制当前显示在views的第三页而不是默认的第一页结果]</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views=views_get_view(“viewtest”);</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">//$views-&gt;args=array(1);</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views-&gt;pager["use_pager"]=1;//要<strong>分页</strong></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views-&gt;pager["items_per_page"]=40;//每页40个</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views-&gt;pager["current_page"]=3;//定位到第3页</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">$views-&gt;execute();//执行</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">print_r($views-&gt;result);</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">复制代码</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">上面的几个例子用的是preview方法，而这里用的是execute方法，这完全是views的设计者设计出来的。当然，你可以都改为这个例子的设定，但就我发现，在大规模测试的时候，我发现execute的性能比preview要差一点点(并不明显).</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">转载:http://bbs.zzbaike.com/thread-35939-1-1.html</div>