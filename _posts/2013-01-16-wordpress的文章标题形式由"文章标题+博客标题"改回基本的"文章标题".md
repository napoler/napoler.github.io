---
layout: post
title: 'wordpress的文章标题形式由"文章标题+博客标题"改回基本的"文章标题"'
permalink: '/2013/01/wordpress.html'
comments: 1
categories: Default
tags: 博客 wordpress优化 paypal payoneer cj
comments: 1
---
  
打算把wordpress的文章标题形式由"文章标题+博客标题"改回基本的"文章标题",不过网络上找到的都存在一个问题就是首页的分页一直显示博客标题而不会是 "博客名+page *"  
这种形式,想来势必会造成重复标题,也不知道为什么那么多人还是打着对搜索友好的标题写法来的.以下方式可以实现每页都 "博客名+page *".  
  
&lt;title&gt;  
  
&lt;?php if ( is_category() ) {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>echo 'Category Archive for &amp;quot;'; single_cat_title(); echo '&amp;quot; | '; bloginfo( 'name' );  
} elseif ( is_tag() ) {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>echo 'Tag Archive for &amp;quot;'; single_tag_title(); echo '&amp;quot; | '; bloginfo( 'name' );  
} elseif ( is_archive() ) {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>wp_title(''); echo ' Archive | '; bloginfo( 'name' );  
} elseif ( is_search() ) {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>echo 'Search for &amp;quot;'.wp_specialchars($s).'&amp;quot; | '; bloginfo( 'name' );  
}  
elseif ( is_home() || is_front_page() ) {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>bloginfo( 'name' ); echo ' | '. sprintf(__('Page %s', ''), max($paged, $page));  
} &nbsp;elseif ( is_404() ) {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>echo 'Error 404 Not Found | '; bloginfo( 'name' );  
} elseif ( is_single() ) {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>wp_title('');  
} else {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>echo wp_title( ' | ', false, right ); bloginfo( 'name' );  
} ?&gt;  
&lt;/title&gt;  
&nbsp; &nbsp; &nbsp;   
&lt;title&gt;  
&lt;?php if ( is_category() ) {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>echo 'Category Archive for &amp;quot;'; single_cat_title(); echo '&amp;quot; | '; bloginfo( 'name' );  
} elseif ( is_tag() ) {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>echo 'Tag Archive for &amp;quot;'; single_tag_title(); echo '&amp;quot; | '; bloginfo( 'name' );  
} elseif ( is_archive() ) {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>wp_title(''); echo ' Archive | '; bloginfo( 'name' );  
} elseif ( is_search() ) {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>echo 'Search for &amp;quot;'.wp_specialchars($s).'&amp;quot; | '; bloginfo( 'name' );  
}  
elseif ( is_home() || is_front_page() ) {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>bloginfo( 'name' ); echo ' | '. sprintf(__('Page %s', ''), max($paged, $page));  
} &nbsp;elseif ( is_404() ) {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>echo 'Error 404 Not Found | '; bloginfo( 'name' );  
} elseif ( is_single() ) {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>wp_title('');  
} else {  
<span class="Apple-tab-span" style="white-space: pre;"> </span>echo wp_title( ' | ', false, right ); bloginfo( 'name' );  
} ?&gt;  
&lt;/title&gt;  
&nbsp; &nbsp; &nbsp;   
  
  
  
不过也存在问题首页是 "博客名+page 0",艾真实无奈只好启用插件吧,分别尝试过SEO Ultimate,WordPress SEO,无奈以上两款实在太过powerful,还是选择了轻量级的Platinum SEO Pack.  
  

<div class="separator" style="clear: both; text-align: center;"><a href="http://4.bp.blogspot.com/-3eQfGSjLg-o/UPWBzQzI3bI/AAAAAAAAuGE/si0Ws7uYgoE/s1600/will-bryant-work-hard-eat-sandwiches-small-print-1-lg.jpg" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" src="http://4.bp.blogspot.com/-3eQfGSjLg-o/UPWBzQzI3bI/AAAAAAAAuGE/si0Ws7uYgoE/s1600/will-bryant-work-hard-eat-sandwiches-small-print-1-lg.jpg" width="300px"/></a></div>

<div>另外,今天提交申请了payoneer,以后paypal提款直接到payoneer就方便多了.payoneer的收费也确实有点...不过还是比直接paypal电汇要便宜些吧.今天注册了cj尝试下,不知道未来能够从中获取收益,只能说努力吧.</div>