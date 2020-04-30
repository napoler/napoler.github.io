---
layout: post
title: '解决Invalid argument supplied for foreach()'
permalink: '/2015/11/invalid-argument-supplied-for-foreach.html'
comments: 1
categories: Default
tags: 
comments: 1
---
<div>只需要在前面判断下是不是数组就可以</div>

<div>if (is_array($variable)) {</div>

<div><br/></div>

<div>&nbsp; foreach ($variable as $item) {</div>

<div>&nbsp; &nbsp;//do something</div>

<div>&nbsp; }</div>

<div>}<br/><br/><a href="https://gist.githubusercontent.com/napoler/0806c89e105a3c776871/raw/ca3722549a9b8321d2c12442103db93ab231b373/new_file0">https://gist.githubusercontent.com/napoler/0806c89e105a3c776871/raw/ca3722549a9b8321d2c12442103db93ab231b373/new_file0</a></div>