---
layout: post
title: "一些代码添加到主� functions.php 文件�化wordpress速度"
permalink: '/2012/08/functionsphp-wordpress.html'
comments: 1
categories: Default
tags: 
---
<div>/* 将下面的代码添加到 functions.php 文件 禁用全局评论*/</div>

<div><br/></div>

<div>function __disable_feature($data) { return false; }</div>

<div><br/></div>

<div>&nbsp; &nbsp; &nbsp; add_filter('comments_number', '__disable_feature');</div>

 

<div>&nbsp; &nbsp; &nbsp; add_filter('comments_open', '__disable_feature');</div>

<div><br/></div>

<div>/* 将下面的代码添加到 functions.php 文件 禁用搜索*/</div>

<div><br/></div>

<div>function fb_filter_query( $query, $error = true ) {</div>

 

<div><br/></div>

<div>if ( is_search() ) {</div>

<div>$query-&gt;is_search = false;</div>

<div>$query-&gt;query_vars[s] = false;</div>

<div>$query-&gt;query[s] = false;</div>

<div><br/></div>

<div>// to error</div>

<div>if ( $error == true )</div>

 

<div>$query-&gt;is_404 = true;</div>

<div>}</div>

<div>}</div>

<div><br/></div>

<div>add_action( 'parse_query', 'fb_filter_query' );</div>

<div>add_filter( 'get_search_form', create_function( '$a', "return null;" ) );</div>

 

<div><br/></div>

<div><br/></div>

<div><br/></div>

<div><br/></div>

<div><br/></div>

<div>/* 将下面的代码添加到 functions.php 文件 移除wp_head()函数产生的冗余*/</div>

<div><br/></div>

<div><br/></div>

<div>remove_action( 'wp_head', 'wp_generator' );</div>

 

<div>remove_action( 'wp_head', 'rsd_link' );</div>

<div>remove_action( 'wp_head', 'wlwmanifest_link' );</div>

<div>remove_action( 'wp_head', 'index_rel_link' );</div>

<div>remove_action( 'wp_head', 'parent_post_rel_link', 10, 0 );</div>

 

<div>remove_action( 'wp_head', 'start_post_rel_link', 10, 0 );</div>

<div>remove_action( 'wp_head', 'adjacent_posts_rel_link_wp_head', 10, 0 );</div>

<div>remove_action( 'wp_head', 'rel_canonical' );</div>

 

<div>remove_action( 'wp_head', 'feed_links', 2 );</div>

<div>remove_action( 'wp_head', 'feed_links_extra', 3 );</div>

<div><br/></div>