---
layout: post
title: "wordpress添加facebook评论代码-Add Facebook Comments plugin code to wordpress"
permalink: '/2013/01/wordpressfacebook-add-facebook-comments.html'
comments: 1
categories: Default
tags: wordpress seo facebook评论代码
---
<div class="separator" style="clear: both; text-align: center;"><a href="http://2.bp.blogspot.com/-6gpXpO22mLc/UPEn5c3FABI/AAAAAAAAuFw/FP7eMZEEoM8/s1600/%E4%B8%8B%E8%BD%BD.jpg" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" height="156" src="http://2.bp.blogspot.com/-6gpXpO22mLc/UPEn5c3FABI/AAAAAAAAuFw/FP7eMZEEoM8/s1600/%E4%B8%8B%E8%BD%BD.jpg" width="320"/></a></div>

插件实现此处不做介绍,有很多可以选择,安装也很简单.  
<span style="font-family: Arial;"><span style="font-size: 15px; white-space: pre-wrap;">wordpress添加facebook评论代码到single.php</span></span>  
<span style="font-family: Arial;"><span style="font-size: 15px; white-space: pre-wrap;">首先到</span></span><https://developers.facebook.com/docs/reference/plugins/comments/>获取如下代码  
<b style="font-weight: normal;"><span style="font-family: Arial; font-size: 15px; vertical-align: baseline; white-space: pre-wrap;">  
</span></b><span style="vertical-align: baseline;"><span style="font-family: Arial;"></span></span>  

<div style="font-size: 15px; white-space: pre-wrap;"><span style="font-family: Arial;">&lt;div id="fb-root"&gt;&lt;/div&gt;</span></div>

<div style="font-size: 15px; white-space: pre-wrap;"><span style="font-family: Arial;">&lt;script&gt;(function(d, s, id) {</span></div>

<div style="font-size: 15px; white-space: pre-wrap;"><span style="font-family: Arial;">&nbsp; var js, fjs = d.getElementsByTagName(s)[0];</span></div>

<div style="font-size: 15px; white-space: pre-wrap;"><span style="font-family: Arial;">&nbsp; if (d.getElementById(id)) return;</span></div>

<div style="font-size: 15px; white-space: pre-wrap;"><span style="font-family: Arial;">&nbsp; js = d.createElement(s); js.id = id;</span></div>

<div style="font-size: 15px; white-space: pre-wrap;"><span style="font-family: Arial;">&nbsp; js.src = "//connect.facebook.net/zh_CN/all.js#xfbml=1&amp;appId=399985616728633";</span></div>

<div style="font-size: 15px; white-space: pre-wrap;"><span style="font-family: Arial;">&nbsp; fjs.parentNode.insertBefore(js, fjs);</span></div>

<div style="font-size: 15px; white-space: pre-wrap;"><span style="font-family: Arial;">}(document, 'script', 'facebook-jssdk'));&lt;/script&gt;</span></div>

<div style="font-size: 15px; white-space: pre-wrap;"><span style="font-family: Arial;"><br/></span></div>

<div style="font-size: 15px; white-space: pre-wrap;"><span style="font-family: Arial;"><br/></span></div>

<span style="font-family: Arial;"><span style="font-size: 15px; white-space: pre-wrap;">&lt;div class="fb-comments" data-href="http://example.com" data-width="450" data-num-posts="2"&gt;&lt;/div&gt;</span></span>  
  
<span style="font-family: Arial;"><span style="font-size: 15px; white-space: pre-wrap;">修改后适用于wordpress,</span></span><span style="font-family: Arial; font-size: 15px; white-space: pre-wrap;">到single.php替换掉评论代码</span>  
<b style="font-weight: normal;"><span style="font-family: Arial; font-size: 15px; vertical-align: baseline; white-space: pre-wrap;">  
</span></b>  

<div style="font-family: Arial; font-size: 15px; white-space: pre-wrap;">&lt;div id="fb-root"&gt;&lt;/div&gt;</div>

<div style="font-family: Arial; font-size: 15px; white-space: pre-wrap;">&lt;script&gt;(function(d, s, id) {</div>

<div style="font-family: Arial; font-size: 15px; white-space: pre-wrap;">&nbsp; var js, fjs = d.getElementsByTagName(s)[0];</div>

<div style="font-family: Arial; font-size: 15px; white-space: pre-wrap;">&nbsp; if (d.getElementById(id)) return;</div>

<div style="font-family: Arial; font-size: 15px; white-space: pre-wrap;">&nbsp; js = d.createElement(s); js.id = id;</div>

<div style="font-family: Arial; font-size: 15px; white-space: pre-wrap;">&nbsp; js.src = "//connect.facebook.net/zh_CN/all.js#xfbml=1&amp;appId=399985616728633";</div>

<div style="font-family: Arial; font-size: 15px; white-space: pre-wrap;">&nbsp; fjs.parentNode.insertBefore(js, fjs);</div>

<div style="font-family: Arial; font-size: 15px; white-space: pre-wrap;">}(document, 'script', 'facebook-jssdk'));&lt;/script&gt;</div>

  
<a href="http://2.bp.blogspot.com/-NXh_No24Hwo/UPEnjrVgR6I/AAAAAAAAuFo/j0jZAnH8Yp0/s1600/facebook.jpg" imageanchor="1" style="clear: left; float: left; margin-bottom: 1em; margin-right: 1em;">

<img border="0" src="http://2.bp.blogspot.com/-NXh_No24Hwo/UPEnjrVgR6I/AAAAAAAAuFo/j0jZAnH8Yp0/s1600/facebook.jpg"/>

</a><b style="font-weight: normal;"><span style="font-family: Arial; font-size: 15px; vertical-align: baseline; white-space: pre-wrap;">  
</span></b><b style="font-weight: normal;"><span style="font-family: Arial; font-size: 15px; vertical-align: baseline; white-space: pre-wrap;">  
</span></b><b id="internal-source-marker_0.012292170198634267" style="font-weight: normal;"><span style="font-family: Arial; font-size: 15px; vertical-align: baseline; white-space: pre-wrap;">&lt;div class="fb-comments" data-href="&lt;?php the\_permalink(); ?&gt;" data-width="450" data-num-posts="2"&gt;&lt;/div&gt;</span>  
<span style="font-family: Arial; font-size: 15px; vertical-align: baseline; white-space: pre-wrap;"></span>  
这样能够实现每篇文章都会有相应的评论,而不是直接从facebook获取的代码是针对整个网站的.Good luck!but &nbsp;Chinese...</b>  
These post may help you:  
[Facebook Comments WordPress Plugin](http://3doordigital.com/wordpress/plugins/facebook-comments/)