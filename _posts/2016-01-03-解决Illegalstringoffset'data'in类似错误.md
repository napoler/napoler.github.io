---
layout: post
title: '解决Illegal string offset 'data' in 类似错误'
permalink: '/2016/01/illegal-string-offset-data-in.html'
comments: 1
categories: Default
tags: php
comments: 1
---
&lt;?php  
$cell = $data['data'];  
?&gt;  
change to  
  
&lt;?php  
&nbsp; &nbsp; &nbsp; if (!isset($data['data'])) {  
&nbsp; &nbsp; &nbsp; &nbsp; continue;  
&nbsp; &nbsp; &nbsp; }  
&nbsp; &nbsp; &nbsp; $cell = $data['data'];   
?&gt;