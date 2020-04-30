---
layout: post
title: 'views的一个有用的api-views_embed_view()'
permalink: '/2014/04/viewsapi-viewsembedview_19.html'
comments: 1
categories: Default
tags: drupal模块 Drupal drupal优化 api views_embed_view() views
comments: 1
---
<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">1，views_embed_view($name, $display_id = ‘default’)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;"><br/></span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">说明：$name是你创建的views的名称， ‘default’为你创建的views的id，你要是不知道就用默认也可以，</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">作用：嵌入一个views（需以php代码形式）</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;"><br/></span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">eg：假若你现在创建了一个block形式的views ，鼠标放在block的设置上，底下的状态栏就会显示其id，（eg：block_1）。然后在你想要的地方插入下面的代码</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">&lt;?php</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">print views_embed_vie($name, ‘default’);</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">?&gt;</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">复制代码</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">就能够得到你views区块的内容了，page也是类似，你若是重写了views的tpl.php文件，得到的就是重写的那些数据。</span></div>---
layout: post
title: 'views的一个有用的api-views_embed_view()'
permalink: '/2014/04/viewsapi-viewsembedview.html'
comments: 1
categories: Default
tags: drupal模块 Drupal drupal优化 api views_embed_view() views
comments: 1
---
<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">1，views_embed_view($name, $display_id = ‘default’)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;"><br/></span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">说明：$name是你创建的views的名称， ‘default’为你创建的views的id，你要是不知道就用默认也可以，</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">作用：嵌入一个views（需以php代码形式）</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;"><br/></span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">eg：假若你现在创建了一个block形式的views ，鼠标放在block的设置上，底下的状态栏就会显示其id，（eg：block_1）。然后在你想要的地方插入下面的代码</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">&lt;?php</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">print views_embed_vie($name, ‘default’);</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">?&gt;</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">复制代码</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">就能够得到你views区块的内容了，page也是类似，你若是重写了views的tpl.php文件，得到的就是重写的那些数据。</span></div>