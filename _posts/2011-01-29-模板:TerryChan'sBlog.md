---
layout: post
comments: 1
categories: Default
tags: 
comments: 1
---
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html>

<html b:version="2" class="v2" expr:dir="data:blog.languageDirection" xmlns="http://www.w3.org/1999/xhtml" xmlns:b="http://www.google.com/2005/gml/b" xmlns:data="http://www.google.com/2005/gml/data" xmlns:expr="http://www.google.com/2005/gml/expr">
<head>
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"> </script>
<![endif]-->
<meta content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1" name="viewport"/>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type"/>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible"/>
<b:include data="blog" name="all-head-content"></b:include>
<!-- Judul Blogger dioptimalkan -->
<b:if cond='data:blog.pageType in {"index"} and data:blog.homepageUrl == data:blog.url'>
<title><data:blog.pagetitle></data:blog.pagetitle></title>
<b:else></b:else>
<b:if cond='data:blog.pageType in {"item","static_page"}'>
<title><data:blog.pagename></data:blog.pagename> - <data:blog.title></data:blog.title></title>
<b:else></b:else>
<b:if cond='data:blog.pageType in {"index"} and data:blog.pageName == ""'>
<title>All Posts - <data:blog.title></data:blog.title></title>
<b:else></b:else>
<b:if cond='data:blog.pageType in {"error_page"}'>
<title>Page Not Found - <data:blog.title></data:blog.title></title>
<b:else></b:else>
<title><data:blog.pagename></data:blog.pagename></title>
</b:if>
</b:if>
</b:if>
</b:if>
<!-- Meta keywords otomatis halaman depan, statis, dan postingan -->
<b:if cond='data:blog.pageType in {"index"} and data:blog.homepageUrl == data:blog.url'>
<meta expr:content="data:blog.title" name="keywords"/>
</b:if>
<b:if cond='data:blog.pageType in {"item","static_page"}'>
<meta expr:content="data:blog.pageName" name="keywords"/>
</b:if>
<!-- Noindex halaman pencarian, label, dan arsip -->
<b:if cond='data:blog.pageType in {"archive"} or data:blog.searchLabel or data:blog.searchQuery'>
<meta content="noindex,nofollow" name="robots"/>
</b:if>
<!-- Facebook Open Graph Tag -->
<b:if cond='data:blog.pageType == "item"'>
<meta expr:content="data:blog.pageName" property="og:title"/>
<meta content="article" property="og:type"/>
<b:else></b:else>
<meta expr:content="data:blog.pageTitle" property="og:title"/>
<meta content="website" property="og:type"/>
</b:if>
<meta expr:content="data:blog.canonicalUrl" property="og:url"/>
<!-- Large image, original size -->
<b:if cond="data:blog.postImageUrl">
<meta expr:content="data:blog.postImageUrl" property="og:image"/>
<b:else></b:else>
<!-- Thumbnail image, 72 &#215; 72 pixels -->
<b:if cond="data:blog.postImageThumbnailUrl">
<meta expr:content="data:blog.postThumbnailUrl" property="og:image"/>
<b:else></b:else>
<!-- Default, no image -->
<meta content="http://1.bp.blogspot.com/-7vDs5hMaDho/U268E2ecF4I/AAAAAAAADY8/RBHVTTuJrxc/s1600/no-image.png" property="og:image"/>
</b:if>
</b:if>
<b:if cond="data:blog.metaDescription">
<meta expr:content="data:blog.metaDescription" property="og:description"/>
</b:if>
<meta expr:content="data:blog.title" property="og:site_name"/>
<!-- 
<link href='https://fonts.useso.com/css?family=PT+Serif|Open+Sans+Condensed:700' rel='stylesheet' type='text/css'/>
 -->
<script async="async" data-ad-client="ca-pub-9152038220843260" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<meta content="J1bF9nDRxL" name="sogou_site_verification"/>
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
<b:skin><![CDATA[/*
-----------------------------------------------
Blogger Template Style
Name:     Blogku Template
Designer: Mas Sugeng
URL:      sugeng.id
----------------------------------------------- */
/**
* Eric Meyer&#39;s Reset CSS v2.0 (http://meyerweb.com/eric/tools/css/reset/)
* http://cssreset.com
*/
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}/* HTML5 display-role reset for older browsers */article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block;}body{line-height:1;display:block;}*{margin:0;padding:0;}html{display:block;}ol,ul{list-style:none;}blockquote,q{quotes:none;}blockquote:before,blockquote:after,q:before,q:after{content:"";content:none;}table{border-collapse:collapse;border-spacing:0;}

/* FRAMEWORK */
strong, b {
	font-weight: bold;
}
cite, em, i {
	font-style: italic;
}
a:link {
	color: #219FDE;
	text-decoration: none;
	outline: none;
	transition: all 0.5s;
	-moz-transition: all 0.5s;
	-webkit-transition: all 0.5s;
}
a:visited {
	color: #219FDE;
	text-decoration: none;
}
a:hover {
	color: #EE3322;
	text-decoration: none;
}
a img {
	border: none;
	border-width: 0;
	outline: none;
}
abbr,acronym {
	border-bottom: 1px dotted;
	cursor: help;
}
sup,sub {
	vertical-align: baseline;
	position: relative;
	top: -.4em;
	font-size: 86%;
}
sub {
	top: .4em;
}
small {
	font-size: 86%;
}
kbd {
	font-size: 80%;
	border: 1px solid #999;
	padding: 2px 5px;
	border-bottom-width: 2px;
	border-radius: 3px;
}
mark {
	background-color: #ffce00;
	color: black;
}
p,blockquote,pre,table,figure,hr,form,ol,ul,dl {
	margin: 1.5em 0;
}
hr {
	height: 1px;
	border: none;
	background-color: #666;
}

/* Heading */
h1,h2,h3,h4,h5,h6 {
	font-family: "Open Sans Condensed", Arial, sans-serif;
	font-weight: bold;
	line-height: normal;
	margin: 0 0 0.8em;
	letter-spacing: -0.5px;
}
h1 {
	font-size: 200%
}
h2 {
	font-size: 180%
}
h3 {
	font-size: 160%
}
h4 {
	font-size: 140%
}
h5 {
	font-size: 120%
}
h6 {
	font-size: 100%
}

/* List */
ol,ul,dl {
	margin: .8em 0em .8em 3em;
}
ol {
	list-style: decimal outside;
}
ul {
	list-style: disc outside;
}
li {
	margin: .5em 0;
}
dt {
	font-weight: bold;
}
dd {
	margin: 0 0 .5em 2em;
}

/* Form */
input,button,select,textarea {
	font: inherit;
	font-size: 100%;
	line-height: normal;
	vertical-align: baseline;
}
textarea {
	display: block;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
pre,code {
	font-family: "Courier New",Courier,Monospace;
	color: inherit;
}
pre {
	white-space: pre;
	word-wrap: normal;
	overflow: auto;
}

/* Blockquote */
blockquote {
	background: #F6F7F9;
    margin-left: 2em;
    margin-right: 2em;
    border-left: 4px solid #DDDFE2;
    padding: 1em 1em;
    font-style: italic;
}

/* Table */
table[border="1"] td, table[border="1"] th {
	vertical-align: top;
	text-align: left;
	font-size: 13px;
	padding: 3px 5px;
	border: 1px solid #ededed;
}
table[border="1"] th {
	background: #F6F7F9;
}

table, img {
	max-width: 100%;
	height: auto;
}
img, iframe {
	max-width: 100%;
}

/* BLOGGER DEFAULT CSS RESET */

.section, .widget {
	margin: 0 0 0 0;
}
.navbar, .blog-feeds, .feed-links, #backlinks-container {
	display:none;
}
.inline-ad {
	margin: 20px 0;
	background: #fff;
    padding: 20px;
}

body {
	background: #F6F7F9;
	margin: 0;
	padding: 0;
	color: #585858;
	font: normal 100% "PT Serif", Georgia, serif;
	font-size: 16px;
	text-align: center;
}
#wrapper {
	text-align: left;
	max-width: 1000px;
	margin: 0 auto;
	padding: 0 30px;
}

/* MENU NAVIGASI */

.tinynav1 {
	display: none;
	width: 100%;
	margin: 0 auto;
	border: 2px solid #ffffff;
	padding: 6px;
	background-color: #ffffff;
	font-weight: bold;
	cursor: pointer;
	outline: none;
	color: #585858;
}
.menu-navigasi {
	float: right;
	text-align: right;
	max-width: 700px;
	width: 70%;
	overflow: hidden
}
nav {
	font-family: "Open Sans Condensed", Arial, sans-serif;
	text-transform: uppercase;
	font-size: 15px;
	position: relative;
}
nav * {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
	list-style: none;
}
nav ul {
	height: 48px;
	padding: 0 0 !important;
}
nav li {
	float: right;
	display: inline;
	padding: 0 0 !important;
}
nav li a {
	padding: 0 0;
	margin-left: 30px;
	line-height: 48px;
	color: #A2A7AB !important;
	display: block;
	text-decoration: none;
}
nav li a:hover, nav li a.active {
	color: #fff !important;
}
nav li a:active {
	color: #fff;
}

/* HEADER */

#header-wrapper {
	background: #38424B;
	text-align: left;
	padding: 26px 0;
}
#header-box {
	max-width: 1000px;
	height: auto;
	padding: 0 30px;
	margin: 0 auto;
	overflow: hidden;
}
#header {
	float: left;
	max-width: 280px;
	width: 28%;
}
#header h1.title, #header p.title {
	font-family:"Open Sans Condensed", Arial, sans-serif;
	font-weight:bold;
	letter-spacing: -0.5px;
	line-height: 1.1em;
	font-size: 24px;
	text-transform: uppercase;
	color: #ffffff;
	margin: 0 0;
	padding: 0 0 3px
}
#header h1.title a, #header p.title a {
	color: #ffffff;
}
#header .description {
	font-size: 13px;
	color: #A2A7AB;
	margin: 0;
	padding: 3px 0 0 0;
}

/* WIDGET BAWAH HEADER DAN ATAS FOOTER*/

#bawah-header, #atas-footer {
	max-width: 100%;
}

#bawah-header .widget-content, #atas-footer .widget-content {
	background: #fff;
	padding: 15px;
	overflow: hidden;
}

#bawah-header .widget {
	margin-top: 20px;
}

#atas-footer .widget {
	margin-bottom: 20px;
}

#bawah-header h2, #atas-footer h2 {
    font-family: "Open Sans Condensed", Arial, sans-serif;
    font-weight: normal;
    text-transform: uppercase;
    background: #ffffff;
    color: #4C565F;
    font-size: 18px;
    padding: 20px 20px 0px;
    margin: 0 0 0 0;
}

/* KONTEN WRAPPER */

#content-wrapper {
	padding: 20px 0;
	overflow: hidden;
}	

/* KOTAK POSTING */

.kotak-posting {
	margin: 0 20px 0 0;
	padding: 0;
	word-wrap: break-word;
}
#posting {
	float: left;
	max-width: 660px;
	width: 66%
}
.breadcrumbs {
	text-align: left;
    padding: 26px;
    margin: 0 0 20px;
	font-size: 13px;
    line-height: 1.4;
    border-bottom: none;
    background: #fff;
}
.post {
	background: #ffffff;
	position: relative;
	padding: 26px;
	margin: 0 0 20px 0;
	overflow: hidden;
}
.post-box {
	margin-left: 163px;
}
.img-thumbnail {
	position: absolute;
    top: 26px;
    left: 26px;
    width: 130px;
    height: 130px;
    padding: 8px;
    border: 1px solid #F0F1F3;
}
.img-thumbnail img {
	width: 130px;
	height: 130px;
}
.post-footer {
    margin: 15px 0 0;
	padding: 14px 0 0;
	font-size: 13px;
    border-top: 1px solid #F0F1F3;
    color: #AFAFAF;
}
.item-post-footer {
	font-size: 13px;
	margin: 20px 0 0;
	padding: 15px 0 0;
	border-top: 1px solid #F0F1F3;
	color: #AFAFAF;
}
.item-post-footer abbr {
	border-bottom: none;
}
.post-body {
	line-height: 1.5;
}
h2.post-title {
	font-family: "Open Sans Condensed", Arial, sans-serif;
	line-height: 1.3;
	margin: 0;
	padding: 0 0 15px;
	font-size: 24px
}
h1.post-title {
	font-family: "Open Sans Condensed", Arial, sans-serif;
	line-height: 1.3;
	margin: 0;
	font-size: 28px;
	padding: 0 0 20px 
}
h2.post-title a, h1.post-title a {
	color: #4C565F;
}
h2.post-title a:hover, h1.post-title a:hover {
	color: #219FDE;
}

/* Related posts */
#related-post-desktop {
	overflow: hidden;
	margin: 15px 0;
	padding: 0
}
#related-post-desktop h3 {
	font-size: 20px;
	font-weight: bold;
	padding: 0 0 8px;
	margin: 0;
	color: #4C565F;
}
#related-post-desktop ul {
	margin-left: 20px;
	padding: 0 0 0 10px;
}
#related-post-desktop ul li {
	padding: 0 0 8px;
}

/* Author profile box */
.author-profile {
    padding: 15px 0;
    margin: 20px 0px;
    overflow: hidden;
    border-top: 2px solid #F6F7F9;
    border-bottom: 2px solid #F6F7F9;
}
.author-profile img {
	border: 1px solid #F6F7F9;
	float: left;
	margin-right: 15px;
}
.author-profile a.g-profile {
	font-weight: bold;
}

/* Navigasi halaman */
#blog-pager {
	clear:both !important;
	overflow:hidden;
	margin:20px 0;
	text-align:center
}
#blog-pager-newer-link {
	float:left
}
#blog-pager-older-link {
	float:right
}

/* SIDEBAR */

#sidebar {
	background: transparent;
	float: right;
	max-width: 340px;
	width: 34%;
}
#sidebar h2 {
	font-family: "Open Sans Condensed", Arial, sans-serif;
	font-weight: normal;
	text-transform: uppercase;
	background: #ffffff;
	color: #4C565F;
	font-size: 18px;
	padding: 20px 20px 0px;
	margin: 0 0 0 0;
}
#sidebar .widget {
	margin: 0;
	clear: both
}
#sidebar .widget-content {
	background: #ffffff;
	padding: 20px;
	margin: 0 0 20px;
	overflow: hidden;
}

/* CUSTOM WIDGET STYLE */

/* Lists Widget */
.sidebar ul, .atas-footer ul, .bawah-header ul {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
	list-style-type: none;
}
.sidebar ul li, .atas-footer ul li, .bawah-header ul li {
	margin: 0;
	padding: 8px 0px;
	border-bottom: 1px solid #F0F1F3;
}
.sidebar ul li a, .atas-footer ul li a, .bawah-header ul li a { 
	color: #585858;
}
.sidebar ul li a:hover, .atas-footer ul li a:hover, .bawah-header ul li a:hover {
	color: #C80441
}

/* Widget popular posts */
.PopularPosts .item-snippet {
	color: #666;
	font-size: 12px
}
.PopularPosts .item-title {
}
.PopularPosts .item-thumbnail {
	float: right;
	margin: 0 0 0 8px;
	padding: 6px;
	border: 1px solid #F0F1F3;
	display: inline;
}
.PopularPosts .item-thumbnail a img {
	height: 48px;
	width: 48px;
	display: block;
	margin: 0;
	padding: 0;
}
.PopularPosts .widget-content ul li {
	padding: 8px 0 !important
}

/* Widget label */
.label-size-1,.label-size-2,.label-size-3,.label-size-4,.label-size-5 {
	font-size: 100%;
	filter: alpha(100);
	opacity: 10
}
.cloud-label-widget-content{
	text-align: left
}
.label-size {
    transition: all 0.25s;
    -moz-transition: all 0.25s;
    -webkit-transition: all 0.25s;
    background: #F6F7F9;
    display: block;
    float: left;
    margin: 0 3px 3px 0;
    color: #585858;
    font-size: 11px;
    text-transform: uppercase;
    border: 1px solid #F0F1F3;
}

.label-size a,.label-size span {
	display: inline-block;
	color: #585858 !important;
	padding: 8px;
	font-weight: bold;
}
.label-size:hover {
	background: #F0F1F3;
}
.label-count {
	white-space: nowrap;
	padding-right: 3px;
	margin-left: -3px;
	background: #F0F1F3;
}
.label-size {
	line-height: 1.2
}

/* Widget arsip */
.BlogArchive #ArchiveList ul li {
	padding: 3px 3px 3px 15px;
}

/* FOOTER WRAPPER */

#footer-wrapper {
	background: #38424B;
	padding: 26px 0;
}
#footer-box {
	max-width: 1000px;
	height: auto;
	padding: 0 30px;
	margin: 0 auto;
	overflow: hidden;
	color: #A2A7AB;
}
#footer-wrapper .footer-kiri {
	float: left
}
#footer-wrapper .footer-kanan {
	float: right;
	text-align: right
}
#footer-box a {
	color: #A2A7AB;
}
#footer-box a:hover {
	color: #ffffff;
}

/* SHARE BUTTON */
.social-buttons-box {
	height: 67px;
	margin: 20px 0 15px;
	overflow: hidden;
}
.social-buttons {
	margin: 0 0;
	height: 67px;
	float: left;
}
.social-buttons .share {
	float: left;
	margin-right: 10px;
	display: inline-block;
}
.share-btn {
	margin: 15px 0 25px;
	height: 20px;
	overflow: hidden;
}
.fb_iframe_widget {
	float: left;
}

/* DOWNLOAD BUTTON */
.button {
	font-family: "Open Sans Condensed", sans-serif;
	transition: all 0.5s;-moz-transition:all 0.5s;-webkit-transition:all 0.5s;
	text-align: center;
	position: relative;
	vertical-align: top;
	margin: 0 3px;
	padding: 8px 12px;
	font-size: 16px;
	text-transform: uppercase;
	color: #fff;
	font-weight: normal;
	text-align: center;
	background: #FFCC00;
	border: 0;
	cursor: pointer;
	outline: none;
}
.button:active {
	top: 1px;
	outline: none;
}
.button:hover {
	background: #E2B810;
}

/* KOTAK NOTE */
.note-green { 
	margin: 0.6em 0;
	padding: 16px;
	background-color: #D3F5D3;
	color: #159415;
}
.note-yellow { 
	margin: 0.6em 0;
	padding: 12px;
	background-color: #fcf8e3;
	color: #b58d47;
}
.note-red { 
	margin: 0.6em 0;
	padding: 16px;
	background-color: #FCAFAF;
	color: #C92121;
}
.mark-green { 
	background-color: #A4DDA4
}
.mark-blue { 
	background-color: #A1DAFF
}
.mark-red { 
	background-color: #FF9999
}
.mark-black { 
	background-color: #333333
}
.mark-gray { 
	background-color: #EEEEEE
}
.mark-yellow { 
	background-color: #E4E437
}

/* Template Blogger */

.post-template {
}
.post-template img {
	width: 400px;
	display: block;
}
.post-template table {
	margin: 0 0 15px 0;
}
.post-template table[border="1"] td, .post-template table[border="1"] th {
	padding: 8px 8px;
}
.download-link {
	margin: 20px 0 30px;
    text-align: center;
    padding: 20px;
    border: 1px solid #F6F7F9;
}
.hborder {
    border-bottom: 3px solid #F6F7F9;
	padding-bottom: 6px;
}

.ad-post {
	float: right;
	width: 300px;
	margin: 0 0 15px 15px;
}

/* COMMENT FORM */

#comments {
	background: #fff;
	padding: 26px;
}

.comment-form {
	overflow: hidden;
}
.comments h3 {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 1.2em;
}
h4#comment-post-message {
	display: none;
	margin: 0 0 0 0;
}

.comments {
	clear: both;
	margin-top: 10px;
	margin-bottom: 0
}
.comments .comments-content .comment-header {
	font-size: 14px;
	color: #aaa;
}
.comments .comments-content {
	margin-bottom: 8px
}
.comments .comments-content .comment-thread ol {
	text-align: left;
	margin: 13px 0;
	padding: 0
}
.comments .avatar-image-container {
	overflow: hidden;
	max-height: 50px;
	width: 50px;
}
.comments .comment-block {
	position: relative;
	margin-left: 70px;
	margin-bottom: 20px;
}
.comments .comments-content .comment-replies {
	margin: 8px 0;
	margin-left: 70px
}
.comments .comments-content .comment-thread:empty {
	display: none
}
.comments .comment-replybox-single {
	padding: 0;
	margin: 8px 0;
	margin-left: 70px
}
.comments .comment-replybox-thread {
	margin: 8px 0 0 0;
	padding: 0;
}
.comments .comments-content .comment {
	margin-bottom: 6px;
	padding: 0
}
.comments .comments-content .comment:first-child {
	padding: 0;
	margin: 0
}
.comments .comments-content .comment:last-child {
	padding: 0;
	margin: 0
}
.comments .comment-thread.inline-thread .comment, .comments .comment-thread.inline-thread .comment:last-child {
	margin: 0px 0px 5px 18%
}
.comment .comment-thread.inline-thread .comment:nth-child(6) {
	margin: 0px 0px 5px 15%;
}
.comment .comment-thread.inline-thread .comment:nth-child(5) {
	margin: 0px 0px 5px 12%;
}
.comment .comment-thread.inline-thread .comment:nth-child(4) {
	margin: 0px 0px 5px 9%;
}
.comment .comment-thread.inline-thread .comment:nth-child(3) {
	margin: 0px 0px 5px 6%;
}
.comment .comment-thread.inline-thread .comment:nth-child(2) {
	margin: 0px 0px 5px 3%;
}
.comment .comment-thread.inline-thread .comment:nth-child(1) {
	margin: 0px 0px 5px 0;
}
.comments .comments-content .comment-thread {
	margin: 0;
	padding: 0
}
.comments .comments-content .inline-thread {
	padding: 0 0;
	margin: 0
}
.thread-count {
	font-size: 14px;
}
.comments .comments-content .icon.blog-author {
	width: auto !important;
	font-family: arial, sans-serif;
	font-size: 12px;
}
.comments .comments-content .icon.blog-author:after {
	content:" Admin ";
	padding: 3px 8px;
	color: #888;
	border: 1px solid #888;
	border-radius: 4px;
}
.comments .comment .comment-actions a {
	font-family: Arial, sans-serif;
	display: inline-block;
	color: #aaa;
	font-weight: bold;
	font-size: 12px;
	line-height: 15px;
	margin: 0 12px 0 0;
	padding: 0 0 0 0;
}
.comments .continue a {
	font-family: Arial, sans-serif;
	color: #aaa;
	display: inline-block;
	font-size: 12px;
	padding: 0 0 0 0;
}
.comments .comments-content .loadmore {
	margin-top: 1em;
	margin-bottom: 1em;
}
.comments .comments-content .loadmore a {
	font-family: Arial, sans-serif;
	display: block;
	padding: 10px 16px;
	text-align: center;
	font-weight: bold;
	background: #FFCC00;
	border: none;
	color: #ffffff;
	border-radius: 4px;
}
.comments .comment .comment-actions a:hover, .comments .continue a:hover, .comments .comments-content .loadmore a:hover {
	text-decoration: none;
	color: #E2B810;
}
span.deleted-comment {
	font-style: italic;
	font-size: 11px;
}

.comments .avatar-image-container img {
	width: 50px;
	max-width: 50px;
}
.comments .comments-content .datetime a {
	color: #9b9b9b;
}

/* MEDIA QUERY */
@media only screen and (max-width:1070px){
	#wrapper, #header-box, #footer-box {
		padding: 0 30px;
	}
}
@media only screen and (max-width:768px){
	#wrapper, #header-box, #footer-box {
		padding: 0 20px;
	}
	#header, .menu-navigasi {
		float: none;
		max-width: 768px;
		width: 100%;
		text-align: center;
		margin: 0 auto;
	}
	#posting, #sidebar {
		float: none;
		max-width: 768px;
		width: 100%;
	}
	.img-thumbnail {
		top: 20px;
		left: 20px;
	}
	.post, .breadcrumbs, #comments {
		padding: 20px;
	}
	.kotak-posting {
		margin: 0 0 0 0;
	}
	#content-wrapper {
		padding: 20px 0 0;
	}
	#navigation {
		display: none;
	}
	.menu-navigasi {
		max-width: 768px;
		width: 100%;
		margin-top: 15px;
	}
	.tinynav1 {
		display: block;
	}
}

@media only screen and (max-width:640px){
	#wrapper, #header-box, #footer-box {
		padding: 0 18px;
	}
	#footer-wrapper .footer-kiri, #footer-wrapper .footer-kanan {
		float: none;
		text-align: center;
	}
	#header-wrapper, #footer-wrapper {
		padding: 18px 0;
	}
	.post, #sidebar .widget-content, .breadcrumbs, #comments, .inline-ad {
		padding: 18px;
	}
	.img-thumbnail {
		top: 18px;
		left: 18px;
	}
	.img-thumbnail, .img-thumbnail img {
		width: 100px;
		height: 100px;
	}
	.post-box {
		margin-left: 133px;
	}
	#sidebar h2, #bawah-header h2, #atas-footer h2 {
		padding: 18px 18px 0px;
	}
	#bawah-header .widget {
		margin-top: 18px;
	}
	#sidebar .widget-content, #atas-footer .widget, .post, .breadcrumbs  {
		margin-bottom: 18px;
	}
	#content-wrapper {
		padding: 18px 0 0;
	}
	.kotak-posting {
		margin: 0 0 0 0;
	}
	.ad-post {
		float: none;
		margin: 0 auto 18px;
	}
}

@media only screen and (max-width:480px){
	#wrapper, #header-box, #footer-box {
		padding: 0 14px;
	}
	#footer-wrapper .footer-kiri, #footer-wrapper .footer-kanan {
		float: none;
		text-align: center;
	}
	#header-wrapper, #footer-wrapper {
		padding: 14px 0;
	}
	.post, #sidebar .widget-content, .breadcrumbs, #comments, .inline-ad {
		padding: 14px;
	}
	.img-thumbnail {
		top: 14px;
		left: 14px;
	}
	.img-thumbnail, .img-thumbnail img {
		width: 80px;
		height: 80px;
	}
	.post-box {
		margin-top: 110px;
		margin-left: 0;
	}
	#sidebar h2, #bawah-header h2, #atas-footer h2 {
		padding: 14px 14px 0px;
	}
	#bawah-header .widget {
		margin-top: 14px;
	}
	#sidebar .widget-content, #atas-footer .widget, .post, .breadcrumbs {
		margin-bottom: 14px;
	}
	#content-wrapper {
		padding: 14px 0 0;
	}
	.kotak-posting {
		margin: 0 0 0 0;
	}
}

@media screen and (max-width:320px){
	#wrapper, #header-box, #footer-box {
		padding: 0 8px;
	}
	#header-wrapper, #footer-wrapper {
		padding: 10px 0;
	}
	.post, #sidebar .widget-content, .breadcrumbs, #comments, .inline-ad {
		padding: 10px;
	}
	.img-thumbnail {
		top: 10px;
		left: 10px;
	}
	#sidebar h2, #bawah-header h2, #atas-footer h2 {
		padding: 10px 10px 0px;
	}
	#bawah-header .widget {
		margin-top: 10px;
	}
	#sidebar .widget-content, #atas-footer .widget, .post, .breadcrumbs {
		margin-bottom: 10px;
	}
	#content-wrapper {
		padding: 10px 0 0;
	}
	.kotak-posting {
		margin: 0 0 0 0;
	}
}

]]></b:skin>
<b:template-skin>
<![CDATA[

/* CSS TATA LETAK */

body#layout div.section { 
	background: transparent;
	margin: 0px 0px 15px 0px;
	padding: 0px;
	border: none;
	box-sizing: border-box;
}
body#layout .section h4 {
	display: none;
}

body#layout #wrapper, body#layout #header-box {
	padding: 0 20px;
}
body#layout #header-wrapper, body#layout #content-wrapper {
	padding: 0 0 0 0;
}

body#layout #sidebar .widget-content {
	margin-bottom: 0;
}
body#layout .widget-content {
	margin-top: 0;
}

]]></b:template-skin>
<b:if cond="data:blog.searchLabel">
<style>
.status-msg-wrap { display: none; }
</style>
</b:if>
<b:if cond='data:blog.pageType == "item"'>
<script>
//<![CDATA[
var relatedTitles=new Array();var relatedTitlesNum=0;var relatedUrls=new Array();function related_results_labels(json){for(var i=0;i<json.feed.entry.length;i++){var entry=json.feed.entry[i];relatedTitles[relatedTitlesNum]=entry.title.$t;for(var k=0;k<entry.link.length;k++){if(entry.link[k].rel=='alternate'){relatedUrls[relatedTitlesNum]=entry.link[k].href;relatedTitlesNum++;break;}}}}
function removeRelatedDuplicates(){var tmp=new Array(0);var tmp2=new Array(0);for(var i=0;i<relatedUrls.length;i++){if(!contains(tmp,relatedUrls[i])){tmp.length+=1;tmp[tmp.length-1]=relatedUrls[i];tmp2.length+=1;tmp2[tmp2.length-1]=relatedTitles[i];}}
relatedTitles=tmp2;relatedUrls=tmp;} function contains(a,e){for(var j=0;j<a.length;j++)if(a[j]==e)return true;return false;}
function printRelatedLabels(){var r=Math.floor((relatedTitles.length-1)*Math.random());var i=0;document.write('<ul>');while(i<relatedTitles.length&&i<20){document.write('<li><a href="'+relatedUrls[r]+'">'+relatedTitles[r]+'</a></li>');if(r<relatedTitles.length-1){r++;}else{r=0;}
i++;}
document.write('</ul>');document.write();}//]]>
</script>
</b:if>
<!-- JAVASCRIPT MENU NAVIGASI DROPDOWN -->
<script>
$(function () {
  // TinyNav.js 1
  $(&#39;#navigation&#39;).tinyNav({
	active: &#39;active&#39;,
	header: &#39;Menu&#39;
  });
});
</script>
<script type="text/javascript">
//<![CDATA[
function bp_thumbnail_resize(t,e){var i=130,a=130;return image_tag='<img width="'+i+'" height="'+a+'" src="'+t.replace("/s72-c/","/w"+i+"-h"+a+"-c/")+'" alt="'+e+'" title="'+e+'"/>',""!=t?image_tag:""}
//]]>
</script>
</head>
<body expr:class='"loading" + data:blog.mobileClass'>
<div id="fb-root"></div>
<b:section class="navbar" id="navbar" maxwidgets="1" showaddelement="no">
<b:widget id="Navbar1" locked="false" title="Navbar" type="Navbar" version="1">
<b:includable id="main">&lt;script type="text/javascript"&gt;
    function setAttributeOnload(object, attribute, val) {
      if(window.addEventListener) {
        window.addEventListener('load',
          function(){ object[attribute] = val; }, false);
      } else {
        window.attachEvent('onload', function(){ object[attribute] = val; });
      }
    }
  &lt;/script&gt;
&lt;div id="navbar-iframe-container"&gt;&lt;/div&gt;
&lt;script type="text/javascript" src="https://apis.google.com/js/plusone.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript"&gt;
      gapi.load("gapi.iframes:gapi.iframes.style.bubble", function() {
        if (gapi.iframes &amp;&amp; gapi.iframes.getContext) {
          gapi.iframes.getContext().openChild({
              url: 'https://www.blogger.com/navbar.g?targetBlogID\x3d4025507024411177074\x26blogName\x3dTerry+Chan\x27s+Blog\x26publishMode\x3dPUBLISH_MODE_BLOGSPOT\x26navbarType\x3dLIGHT\x26layoutType\x3dLAYOUTS\x26searchRoot\x3dhttps://terry-chen.blogspot.com/search\x26blogLocale\x3dzh_CN\x26v\x3d2\x26homepageUrl\x3dhttps://terry-chen.blogspot.com/\x26readAccessMode\x3dPRIVATE\x26vt\x3d6555975751364767086',
              where: document.getElementById("navbar-iframe-container"),
              id: "navbar-iframe"
          });
        }
      });
    &lt;/script&gt;&lt;script type="text/javascript"&gt;
(function() {
var script = document.createElement('script');
script.type = 'text/javascript';
script.src = '//pagead2.googlesyndication.com/pagead/js/google_top_exp.js';
var head = document.getElementsByTagName('head')[0];
if (head) {
head.appendChild(script);
}})();
&lt;/script&gt;
</b:includable>
</b:widget>
</b:section>
<!-- header wrapper start -->
<header id="header-wrapper">
<div id="header-box">
<b:section class="header" id="header" maxwidgets="1" showaddelement="no">
<b:widget id="Header1" locked="true" title="Terry Chan's Blog (标题)" type="Header" version="1">
<b:widget-settings>
<b:widget-setting name="displayUrl"></b:widget-setting>
<b:widget-setting name="displayHeight">0</b:widget-setting>
<b:widget-setting name="sectionWidth">-1</b:widget-setting>
<b:widget-setting name="useImage">false</b:widget-setting>
<b:widget-setting name="shrinkToFit">false</b:widget-setting>
<b:widget-setting name="imagePlacement">BEHIND</b:widget-setting>
<b:widget-setting name="displayWidth">0</b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<b:if cond="data:useImage">
<b:if cond='data:imagePlacement == "BEHIND"'>
<!--
      Show image as background to text. You can't really calculate the width
      reliably in JS because margins are not taken into account by any of
      clientWidth, offsetWidth or scrollWidth, so we don't force a minimum
      width if the user is using shrink to fit.
      This results in a margin-width's worth of pixels being cropped. If the
      user is not using shrink to fit then we expand the header.
      -->
<b:if cond="data:mobile">
<div id="header-inner">
<div class="titlewrapper" style="background: transparent">
<h1 class="title" style="background: transparent; border-width: 0px">
<b:include name="title"></b:include>
</h1>
</div>
<b:include name="description"></b:include>
</div>
<b:else></b:else>
<div expr:style='"background-image: url(\"" + data:sourceUrl + "\"); "                        + "background-position: "                        + data:backgroundPositionStyleStr + "; "                        + data:widthStyleStr                        + "min-height: " + data:height                        + "_height: " + data:height                        + "background-repeat: no-repeat; "' id="header-inner">
<div class="titlewrapper" style="background: transparent">
<h1 class="title" style="background: transparent; border-width: 0px">
<b:include name="title"></b:include>
</h1>
</div>
<b:include name="description"></b:include>
</div>
</b:if>
<b:else></b:else>
<!--Show the image only-->
<div id="header-inner">
<b:if cond='data:blog.pageType in {"item","static_page"}'>
<p style="text-indent:-9999px;margin:0 0 0 0;padding:0 0 0 0;height:0px;"><b:include name="title"></b:include></p>
<b:else></b:else>
<h1 style="text-indent:-9999px;margin:0 0 0 0;padding:0 0 0 0;height:0px;"><b:include name="title"></b:include></h1>
</b:if>
<a expr:href="data:blog.homepageUrl" style="display: block">
<img expr:alt="data:title" expr:height="data:height" expr:id='data:widget.instanceId + "_headerimg"' expr:src="data:sourceUrl" expr:width="data:width" style="display: block"/>
</a>
<!--Show the description-->
<b:if cond='data:imagePlacement == "BEFORE_DESCRIPTION"'>
<b:include name="description"></b:include>
<b:if cond='data:blog.pageType in {"item","static_page"}'>
<p style="text-indent:-9999px;margin:0 0 0 0;padding:0 0 0 0;height:0px;"><b:include name="title"></b:include></p>
<b:else></b:else>
<h1 style="text-indent:-9999px;margin:0 0 0 0;padding:0 0 0 0;height:0px;"><b:include name="title"></b:include></h1>
</b:if>
</b:if>
</div>
</b:if>
<b:else></b:else>
<!--No header image -->
<div id="header-inner">
<div class="titlewrapper">
<b:if cond='data:blog.pageType in {"item","static_page"}'>
<p class="title"><b:include name="title"></b:include></p>
<b:else></b:else>
<h1 class="title"><b:include name="title"></b:include></h1>
</b:if>
<b:include name="description"></b:include>
</div>
</div>
</b:if>
</b:includable>
<b:includable id="description">
<div class="descriptionwrapper">
<p class="description"><span><data:description></data:description></span></p>
</div>
</b:includable>
<b:includable id="title">
<b:if cond="data:blog.url == data:blog.homepageUrl">
<data:title></data:title>
<b:else></b:else>
<a expr:href="data:blog.homepageUrl"><data:title></data:title></a>
</b:if>
</b:includable>
</b:widget>
</b:section>
<!-- MENU NAVIGASI BAGIAN ATAS -->
<b:section class="menu-navigasi" id="menu-navigasi" maxwidgets="1" showaddelement="no">
<b:widget id="PageList1" locked="false" title="Pages" type="PageList" version="1">
<b:widget-settings>
<b:widget-setting name="pageListJson"><![CDATA[{'home': {'href': 'http://www.terrychan.org/', 'title': '主页', 'position': 0}}]]></b:widget-setting>
<b:widget-setting name="homeTitle">主页</b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<b:if cond='data:title != ""'><h2 style="display:none;"><data:title></data:title></h2></b:if>
<div class="widget-content">
<b:if cond="data:mobile">
<select expr:id='data:widget.instanceId + "_select"'>
<b:loop values="data:links" var="link">
<b:if cond="data:link.isCurrentPage">
<option expr:value="data:link.href" selected="selected"><data:link.title></data:link.title></option>
<b:else></b:else>
<option expr:value="data:link.href"><data:link.title></data:link.title></option>
</b:if>
</b:loop>
</select>
<span class="pagelist-arrow">&amp;#9660;</span>
<b:else></b:else>
<nav>
<ul id="navigation">
<b:loop values="data:links" var="link">
<b:if cond="data:link.isCurrentPage">
<li class="active"><a expr:href="data:link.href"><data:link.title></data:link.title></a></li>
<b:else></b:else>
<li><a expr:href="data:link.href"><data:link.title></data:link.title></a></li>
</b:if>
</b:loop>
</ul>
</nav>
</b:if>
</div>
</b:includable>
</b:widget>
</b:section>
</div>
</header>
<div class="clear"></div>
<!-- kepala ditutup -->
<!-- wrapper dibuka -->
<div id="wrapper">
<b:section class="bawah-header" id="bawah-header" showaddelement="yes"></b:section>
<div class="clear"></div>
<!-- kotak-kontent dibuka -->
<div id="content-wrapper">
<!-- kotak-posting dibuka -->
<div id="posting">
<b:section class="kotak-posting" id="main" showaddelement="no">
<b:widget id="Blog1" locked="true" title="博文" type="Blog" version="1">
<b:widget-settings>
<b:widget-setting name="showDateHeader">true</b:widget-setting>
<b:widget-setting name="style.textcolor">#000000</b:widget-setting>
<b:widget-setting name="showShareButtons">false</b:widget-setting>
<b:widget-setting name="showCommentLink">false</b:widget-setting>
<b:widget-setting name="style.urlcolor">#008000</b:widget-setting>
<b:widget-setting name="showAuthor">false</b:widget-setting>
<b:widget-setting name="disableGooglePlusShare">true</b:widget-setting>
<b:widget-setting name="style.linkcolor">#0000ff</b:widget-setting>
<b:widget-setting name="style.unittype">TextAndImage</b:widget-setting>
<b:widget-setting name="style.bgcolor">#ffffff</b:widget-setting>
<b:widget-setting name="showAuthorProfile">true</b:widget-setting>
<b:widget-setting name="style.layout">1x1</b:widget-setting>
<b:widget-setting name="showLabels">true</b:widget-setting>
<b:widget-setting name="showLocation">false</b:widget-setting>
<b:widget-setting name="showTimestamp">false</b:widget-setting>
<b:widget-setting name="postsPerAd">1</b:widget-setting>
<b:widget-setting name="showBacklinks">false</b:widget-setting>
<b:widget-setting name="style.bordercolor">#ffffff</b:widget-setting>
<b:widget-setting name="showInlineAds">false</b:widget-setting>
<b:widget-setting name="showReactions">true</b:widget-setting>
</b:widget-settings>
<b:includable id="main" var="top">
<b:include data="posts" name="breadcrumb"></b:include>
<b:if cond='data:mobile == "false"'>
<!-- posts -->
<div class="blog-posts hfeed">
<b:include data="top" name="status-message"></b:include>
<data:defaultadstart></data:defaultadstart>
<b:loop values="data:posts" var="post">
<b:if cond="data:post.isDateStart">
<b:if cond='data:post.isFirstPost == "false"'>
            &lt;/div&gt;&lt;/div&gt;
          </b:if>
</b:if>
<b:if cond="data:post.isDateStart">
          &lt;div class="date-outer"&gt;
        </b:if>
<b:if cond="data:post.isDateStart">
          &lt;div class="date-posts"&gt;
        </b:if>
<div class="post-outer">
<b:include data="post" name="post"></b:include>
<b:if cond='data:blog.pageType == "static_page"'>
<b:if cond="data:post.showThreadedComments">
<b:include data="post" name="threaded_comments"></b:include>
<b:else></b:else>
<b:include data="post" name="comments"></b:include>
</b:if>
</b:if>
<b:if cond='data:blog.pageType == "item"'>
<b:if cond="data:post.showThreadedComments">
<b:include data="post" name="threaded_comments"></b:include>
<b:else></b:else>
<b:include data="post" name="comments"></b:include>
</b:if>
</b:if>
</div>
<b:if cond="data:post.includeAd">
<b:if cond="data:post.isFirstPost">
<data:defaultadend></data:defaultadend>
<b:else></b:else>
<data:adend></data:adend>
</b:if>
<div class="inline-ad">
<data:adcode></data:adcode>
</div>
<data:adstart></data:adstart>
</b:if>
</b:loop>
<b:if cond="data:numPosts != 0">
        &lt;/div&gt;&lt;/div&gt;
      </b:if>
<data:adend></data:adend>
</div>
<!-- navigation -->
<b:include name="nextprev"></b:include>
<!-- feed links -->
<b:include name="feedLinks"></b:include>
<b:if cond="data:top.showStars">
<script src="//www.google.com/jsapi" type="text/javascript"></script>
<script type="text/javascript">
        google.load(&quot;annotations&quot;, &quot;1&quot;, {&quot;locale&quot;: &quot;<data:top.languageCode/>&quot;});
        function initialize() {
          google.annotations.setApplicationId(<data:top.blogspotReviews/>);
          google.annotations.createAll();
          google.annotations.fetch();
        }
        google.setOnLoadCallback(initialize);
      </script>
</b:if>
<b:else></b:else>
<b:include name="mobile-main"></b:include>
</b:if>
<b:if cond="data:top.showDummy">
<data:top.dummybootstrap></data:top.dummybootstrap>
</b:if>
</b:includable>
<b:includable id="backlinkDeleteIcon" var="backlink">
<span expr:class='"item-control " + data:backlink.adminClass'>
<a expr:href="data:backlink.deleteUrl" expr:title="data:top.deleteBacklinkMsg">
<img src="//www.blogger.com/img/icon_delete13.gif"/>
</a>
</span>
</b:includable>
<b:includable id="backlinks" var="post">
<a name="links"></a><h4><data:post.backlinkslabel></data:post.backlinkslabel></h4>
<b:if cond="data:post.numBacklinks != 0">
<dl class="comments-block" id="comments-block">
<b:loop values="data:post.backlinks" var="backlink">
<div class="collapsed-backlink backlink-control">
<dt class="comment-title">
<span class="backlink-toggle-zippy">&nbsp;</span>
<a expr:href="data:backlink.url" rel="nofollow"><data:backlink.title></data:backlink.title></a>
<b:include data="backlink" name="backlinkDeleteIcon"></b:include>
</dt>
<dd class="comment-body collapseable">
<data:backlink.snippet></data:backlink.snippet>
</dd>
<dd class="comment-footer collapseable">
<span class="comment-author"><data:post.authorlabel></data:post.authorlabel> <data:backlink.author></data:backlink.author></span>
<span class="comment-timestamp"><data:post.timestamplabel></data:post.timestamplabel> <data:backlink.timestamp></data:backlink.timestamp></span>
</dd>
</div>
</b:loop>
</dl>
</b:if>
<p class="comment-footer">
<a class="comment-link" expr:href="data:post.createLinkUrl" expr:id='data:widget.instanceId + "_backlinks-create-link"' target="_blank"><data:post.createlinklabel></data:post.createlinklabel></a>
</p>
</b:includable>
<b:includable id="breadcrumb" var="posts"> <b:if cond="data:blog.homepageUrl != data:blog.url">
<b:if cond='data:blog.pageType == "static_page"'> <div class="breadcrumbs"><span><a expr:href="data:blog.homepageUrl" rel="nofollow">首页</a></span> » <span><data:blog.pagename></data:blog.pagename></span></div>
<b:else></b:else>
<b:if cond='data:blog.pageType == "item"'> <b:loop values="data:posts" var="post">
<b:if cond="data:post.labels">
<div class="breadcrumbs"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a expr:href="data:blog.homepageUrl" itemprop="url"><span itemprop="title">Beranda</span></a></span> » <b:loop values="data:post.labels" var="label"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a expr:href='data:label.url + "?&amp;max-results=8"' itemprop="url"><span itemprop="title"><data:label.name></data:label.name></span></a></span><b:if cond='data:label.isLast != "true"'> » </b:if> </b:loop>
</div>
<b:else></b:else>
<div class="breadcrumbs"><span><a expr:href="data:blog.homepageUrl" rel="nofollow">Beranda</a></span> » <span>Tanpa Kategori</span> » <span><data:post.title></data:post.title></span></div> </b:if>
</b:loop>
<b:else></b:else>
<b:if cond='data:blog.pageType == "archive"'><div class="breadcrumbs"> <span><a expr:href="data:blog.homepageUrl" rel="nofollow">Beranda</a></span> » <span>Arsip untuk <data:blog.pagename></data:blog.pagename></span> </div> <b:else></b:else>
<b:if cond="data:blog.searchQuery"><div class="breadcrumbs"><span><a expr:href="data:blog.homepageUrl" rel="nofollow">Beranda</a></span> » <span><data:blog.pagename></data:blog.pagename></span></div>
<b:else></b:else>
<b:if cond='data:blog.pageType == "index"'> <div class="breadcrumbs"> <b:if cond='data:blog.pageName == ""'> <span><a expr:href="data:blog.homepageUrl" rel="nofollow">Beranda</a></span> » <span>Semua Posting</span>
<b:else></b:else>
<span><a expr:href="data:blog.homepageUrl" rel="nofollow">Beranda</a></span> » <span><data:blog.pagename></data:blog.pagename></span> </b:if>
</div>
</b:if>
</b:if>
</b:if>
</b:if>
</b:if>
</b:if>
</b:includable>
<b:includable id="comment-form" var="post">
<div class="comment-form">
<a name="comment-form"></a>
<b:if cond="data:mobile">
<h4 id="comment-post-message">
<a expr:id='data:widget.instanceId + "_comment-editor-toggle-link"' href="javascript:void(0)"><data:postcommentmsg></data:postcommentmsg></a></h4>
<p><data:blogcommentmessage></data:blogcommentmessage></p>
<data:blogteamblogmessage></data:blogteamblogmessage>
<a expr:href="data:post.commentFormIframeSrc" id="comment-editor-src"></a>
<iframe allowtransparency="true" class="blogger-iframe-colorize blogger-comment-from-post" frameborder="0" height="410" id="comment-editor" name="comment-editor" src="" style="display: block !important;" width="100%"></iframe>
<b:else></b:else>
<h4 id="comment-post-message"><data:postcommentmsg></data:postcommentmsg></h4>
<p><data:blogcommentmessage></data:blogcommentmessage></p>
<data:blogteamblogmessage></data:blogteamblogmessage>
<a expr:href="data:post.commentFormIframeSrc" id="comment-editor-src"></a>
<iframe allowtransparency="true" class="blogger-iframe-colorize blogger-comment-from-post" frameborder="0" height="410" id="comment-editor" name="comment-editor" src="" width="100%"></iframe>
</b:if>
<data:post.friendconnectjs></data:post.friendconnectjs>
<data:post.cmtfpiframe></data:post.cmtfpiframe>
<script type="text/javascript">
      BLOG_CMT_createIframe(&#39;<data:post.appRpcRelayPath/>&#39;, &#39;<data:post.communityId/>&#39;);
    </script>
</div>
</b:includable>
<b:includable id="commentDeleteIcon" var="comment">
<span expr:class='"item-control " + data:comment.adminClass'>
<b:if cond="data:showCmtPopup">
<div class="goog-toggle-button">
<div class="goog-inline-block comment-action-icon"></div>
</div>
<b:else></b:else>
<a class="comment-delete" expr:href="data:comment.deleteUrl" expr:title="data:top.deleteCommentMsg">
<img src="//www.blogger.com/img/icon_delete13.gif"/>
</a>
</b:if>
</span>
</b:includable>
<b:includable id="comment_count_picker" var="post">
<b:if cond="data:post.commentSource == 1">
<span class="cmt_count_iframe_holder" expr:data-count="data:post.numComments" expr:data-onclick="data:post.addCommentOnclick" expr:data-post-url="data:post.url" expr:data-url="data:post.canonicalUrl">
</span>
<b:else></b:else>
<a class="comment-link" expr:href="data:post.addCommentUrl" expr:onclick="data:post.addCommentOnclick">
<data:post.commentlabelfull></data:post.commentlabelfull>:
    </a>
</b:if>
</b:includable>
<b:includable id="comment_picker" var="post">
<b:if cond="data:post.forceIframeComments">
<data:post.iframemessage></data:post.iframemessage>
<b:include data="post" name="iframe_comments"></b:include>
<data:post.iframemessage></data:post.iframemessage>
<b:if cond="data:post.showThreadedComments">
<b:include data="post" name="threaded_comments"></b:include>
<b:else></b:else>
<b:include data="post" name="comments"></b:include>
</b:if>
<b:else></b:else>
<b:if cond="data:post.commentSource == 1">
<b:include data="post" name="iframe_comments"></b:include>
<b:else></b:else>
<b:if cond="data:post.showThreadedComments">
<b:include data="post" name="threaded_comments"></b:include>
<b:else></b:else>
<b:include data="post" name="comments"></b:include>
</b:if>
</b:if>
</b:if>
</b:includable>
<b:includable id="comments" var="post">
<!-- UY BEGIN -->
<div id="uyan_frame"></div>
<script src="http://v2.uyan.cc/code/uyan.js" type="text/javascript"></script>
<!-- UY END -->
</b:includable>
<b:includable id="feedLinks">
<b:if cond='data:blog.pageType != "item"'> <!-- Blog feed links -->
<b:if cond="data:feedLinks">
<div class="blog-feeds">
<b:include data="feedLinks" name="feedLinksBody"></b:include>
</div>
</b:if>
<b:else></b:else> <!--Post feed links -->
<div class="post-feeds">
<b:loop values="data:posts" var="post">
<b:include cond="data:post.allowComments and data:post.feedLinks" data="post.feedLinks" name="feedLinksBody"></b:include>
</b:loop>
</div>
</b:if>
</b:includable>
<b:includable id="feedLinksBody" var="links">
<div class="feed-links">
<data:feedlinksmsg></data:feedlinksmsg>
<b:loop values="data:links" var="f">
<a class="feed-link" expr:href="data:f.url" expr:type="data:f.mimeType" target="_blank"><data:f.name></data:f.name> (<data:f.feedtype></data:f.feedtype>)</a>
</b:loop>
</div>
</b:includable>
<b:includable id="iframe_comments" var="post">
<b:if cond="data:post.allowIframeComments">
<script expr:src="data:post.commentSrc" type="text/javascript"></script>
<div class="cmt_iframe_holder"></div>
<b:if cond='data:post.embedCommentForm == "false"'>
<a expr:href="data:post.addCommentUrl" expr:onclick="data:post.addCommentOnclick"><data:postcommentmsg></data:postcommentmsg></a>
</b:if>
</b:if>
</b:includable>
<b:includable id="mobile-index-post" var="post">
</b:includable>
<b:includable id="mobile-main" var="top">
<!-- posts -->
<div class="blog-posts hfeed">
<b:include data="top" name="status-message"></b:include>
<b:if cond='data:blog.pageType == "index"'>
<b:loop values="data:posts" var="post">
<b:include data="post" name="mobile-index-post"></b:include>
</b:loop>
<b:else></b:else>
<b:loop values="data:posts" var="post">
<b:include data="post" name="mobile-post"></b:include>
</b:loop>
</b:if>
</div>
<b:include name="mobile-nextprev"></b:include>
</b:includable>
<b:includable id="mobile-nextprev">
</b:includable>
<b:includable id="mobile-post" var="post">
</b:includable>
<b:includable id="nextprev">
<div class="blog-pager" id="blog-pager">
<b:if cond="data:newerPageUrl">
<span id="blog-pager-newer-link">
<a class="blog-pager-newer-link" expr:href="data:newerPageUrl" expr:id='data:widget.instanceId + "_blog-pager-newer-link"' expr:title="data:newerPageTitle">← <data:newerpagetitle></data:newerpagetitle></a>
</span>
</b:if>
<b:if cond="data:olderPageUrl">
<span id="blog-pager-older-link">
<a class="blog-pager-older-link" expr:href="data:olderPageUrl" expr:id='data:widget.instanceId + "_blog-pager-older-link"' expr:title="data:olderPageTitle"><data:olderpagetitle></data:olderpagetitle> →</a>
</span>
</b:if>
<a class="home-link" expr:href="data:blog.homepageUrl"><data:homemsg></data:homemsg></a>
<b:if cond="data:mobileLinkUrl">
<div class="blog-mobile-link">
<a expr:href="data:mobileLinkUrl"><data:mobilelinkmsg></data:mobilelinkmsg></a>
</div>
</b:if>
</div>
<div class="clear"></div>
</b:includable>
<b:includable id="post" var="post">
<article class="post hentry">
<b:switch var="data:blog.pageType">
<b:case value="static_page"></b:case>
<!-- Posting halaman statis -->
<div>
<b:if cond="data:post.title">
<h1 class="post-title entry-title">
<b:if cond="data:post.link">
<a expr:href="data:post.link"><data:post.title></data:post.title></a>
<b:else></b:else>
<b:if cond="data:post.url">
<b:if cond="data:blog.url != data:post.url">
<a expr:href="data:post.url"><data:post.title></data:post.title></a>
<b:else></b:else>
<data:post.title></data:post.title>
</b:if>
<b:else></b:else>
<data:post.title></data:post.title>
</b:if>
</b:if>
</h1>
</b:if>
<div class="post-body entry-content" expr:id='"post-body-" + data:post.id'>
<data:post.body></data:post.body>
<div style="clear: both;"></div>
</div>
</div>
<b:case value="item"></b:case>
<!-- Posting halaman item -->
<div itemprop="blogPost" itemscope="itemscope" itemtype="http://schema.org/BlogPosting">
<b:if cond="data:post.firstImageUrl">
<meta expr:content="data:post.firstImageUrl" itemprop="image"/>
</b:if>
<a expr:name="data:post.id"></a>
<b:if cond="data:post.title">
<h1 class="post-title entry-title" itemprop="name headline">
<b:if cond="data:post.link">
<a expr:href="data:post.link"><data:post.title></data:post.title></a>
<b:else></b:else>
<b:if cond="data:post.url">
<b:if cond="data:blog.url != data:post.url">
<a expr:href="data:post.url"><data:post.title></data:post.title></a>
<b:else></b:else>
<data:post.title></data:post.title>
</b:if>
<b:else></b:else>
<data:post.title></data:post.title>
</b:if>
</b:if>
</h1>
</b:if>
<div class="post-body entry-content" expr:id='"post-body-" + data:post.id' itemprop="description articleBody">
<!-- iklan di bawah judul taruh di sini -->
<data:post.body></data:post.body>
<!-- iklan di bawah postingan taruh di sini -->
<div style="clear: both;"></div>
<!-- Tombol share media sosial -->
<div style="clear: both;"></div>
<!-- kotak profil di bawah postingan -->
<b:if cond="data:post.authorAboutMe">
<div class="author-profile" itemprop="author" itemscope="itemscope" itemtype="http://schema.org/Person">
<b:if cond="data:post.authorPhoto.url">
<img expr:src="data:post.authorPhoto.url" itemprop="image" width="90px"/>
</b:if>
<div>
<a class="g-profile" expr:href="data:post.authorProfileUrl" itemprop="url" rel="author" title="author profile">
<span itemprop="name"><data:post.author></data:post.author></span>
</a>
</div>
<span itemprop="description"><data:post.authoraboutme></data:post.authoraboutme></span>
</div>
</b:if>
<!-- Related posts di bawah postingan -->
<div id="related-post-desktop">
<h3>Postingan terkait:</h3>
<b:loop values="data:post.labels" var="label"> <b:if cond='data:label.isLast != "true"'></b:if> <b:if cond='data:blog.pageType == "item"'> <script expr:src='"/feeds/posts/default/-/" + data:label.name + "?alt=json-in-script&amp;callback=related_results_labels&amp;max-results=5"' type="text/javascript"></script></b:if> </b:loop> <script type="text/javascript"> removeRelatedDuplicates(); printRelatedLabels(); </script>
</div>
<div class="item-post-footer">
<b:if cond="data:top.showAuthor">
<b:if cond="data:post.authorProfileUrl">
<span class="vcard">
<span class="fn" itemprop="author" itemscope="itemscope" itemtype="http://schema.org/Person">
<meta expr:content="data:post.authorProfileUrl" itemprop="url"/>
                Ditulis <a class="g-profile" expr:href="data:post.authorProfileUrl" rel="author" title="author profile">
<span itemprop="name"><data:post.author></data:post.author></span>
</a>
</span>
</span>
<b:else></b:else>
<span class="vcard">
<span class="fn" itemprop="author" itemscope="itemscope" itemtype="http://schema.org/Person">
                Ditulis <span itemprop="name"><data:post.author></data:post.author></span>
</span>
</span>
</b:if>
</b:if>
<b:if cond="data:post.dateHeader">
		     — <abbr class="updated published" expr:title="data:post.timestampISO8601" itemprop="datePublished" style="text-decoration:none;border-bottom:none;">
<data:post.dateheader></data:post.dateheader>
</abbr>
<b:else></b:else>
<b:if cond="data:top.showTimestamp">
		     — <abbr class="updated published" expr:title="data:post.timestampISO8601" itemprop="datePublished" style="text-decoration:none;border-bottom:none;">
<data:post.timestamp></data:post.timestamp>
</abbr>
</b:if>
</b:if>
<b:if cond="data:post.allowComments"> 
		      — <a expr:onclick="data:post.addCommentOnclick" href="#comments"> <b:if cond="data:post.numComments == 0"> Add Comment </b:if> <b:if cond="data:post.numComments == 1"> 1 Comment </b:if> <b:if cond="data:post.numComments &gt; 1"> <data:post.numcomments></data:post.numcomments> Comments </b:if>
</a>
</b:if>
<b:if cond="data:post.labels">	                      
			  — <b:loop values="data:post.labels" var="label">
<a expr:href="data:label.url" rel="tag"><data:label.name></data:label.name></a><b:if cond="not data:label.isLast">,</b:if>
</b:loop>
</b:if>
<b:include data="post" name="postQuickEdit"></b:include>
</div>
<div style="clear: both;"></div>
</div>
</div>
<b:default></b:default>
<!-- Posting halaman default (index, arsip, dll.) -->
<b:if cond="data:post.thumbnailUrl">
<!--	<a expr:href='data:post.url'><div class='img-thumbnail'><span class='rollover'/><script type='text/javascript'>
		document.write(bp_thumbnail_resize(&quot;<data:post.thumbnailUrl/>&quot;,&quot;<data:post.title/>&quot;));
		</script></div>
		</a> -->
<b:else></b:else>
<!--	<b:if cond='data:post.firstImageUrl'>
		<a expr:href='data:post.url'><div class='img-thumbnail'><span class='rollover'/><img expr:alt='data:post.title' expr:src='data:post.firstImageUrl' expr:title='data:post.title'/></div>
		</a>-->
<b:else></b:else>
<!--	<a expr:href='data:post.url'><div class='img-thumbnail'><span class='rollover'/><img expr:alt='data:post.title' expr:title='data:post.title' src='http://3.bp.blogspot.com/-ltyYh4ysBHI/U04MKlHc6pI/AAAAAAAADQo/PFxXaGZu9PQ/w130-h130-c/no-image.png'/></div>
		</a>
-->
</b:if>
<div class="post-box-v1" itemprop="blogPost" itemscope="itemscope" itemtype="http://schema.org/BlogPosting">
<b:if cond="data:post.firstImageUrl">
<meta expr:content="data:post.firstImageUrl" itemprop="image"/>
</b:if>
<a expr:name="data:post.id"></a>
<b:if cond="data:post.title">
<h2 class="post-title entry-title" itemprop="name headline">
<b:if cond="data:post.link">
<a expr:href="data:post.link"><data:post.title></data:post.title></a>
<b:else></b:else>
<b:if cond="data:post.url">
<b:if cond="data:blog.url != data:post.url">
<a expr:href="data:post.url"><data:post.title></data:post.title></a>
<b:else></b:else>
<data:post.title></data:post.title>
</b:if>
<b:else></b:else>
<data:post.title></data:post.title>
</b:if>
</b:if>
</h2>
</b:if>
<div class="post-body entry-content" expr:id='"post-body-" + data:post.id' itemprop="articleBody description">
<div expr:id='"summary" + data:post.id'>
<data:post.snippet></data:post.snippet>
</div>
</div>
<div class="post-footer">
<b:if cond="data:top.showAuthor">
<b:if cond="data:post.authorProfileUrl">
<span class="vcard">
<span class="fn" itemprop="author" itemscope="itemscope" itemtype="http://schema.org/Person">
<meta expr:content="data:post.authorProfileUrl" itemprop="url"/>
                Ditulis <a class="g-profile" expr:href="data:post.authorProfileUrl" rel="author" title="author profile">
<span itemprop="name"><data:post.author></data:post.author></span>
</a>
</span>
</span>
<b:else></b:else>
<span class="vcard">
<span class="fn" itemprop="author" itemscope="itemscope" itemtype="http://schema.org/Person">
                Ditulis <span itemprop="name"><data:post.author></data:post.author></span>
</span>
</span>
</b:if>
</b:if>
<b:if cond="data:post.dateHeader">
		     — <abbr class="updated published" expr:title="data:post.timestampISO8601" itemprop="datePublished" style="text-decoration:none;border-bottom:none;">
<data:post.dateheader></data:post.dateheader>
</abbr>
<b:else></b:else>
<b:if cond="data:top.showTimestamp">
		     — <abbr class="updated published" expr:title="data:post.timestampISO8601" itemprop="datePublished" style="text-decoration:none;border-bottom:none;">
<data:post.timestamp></data:post.timestamp>
</abbr>
</b:if>
</b:if>
<b:if cond="data:post.allowComments"> 
		      — <a expr:href='data:post.url + "#comments"' expr:onclick="data:post.addCommentOnclick"> <b:if cond="data:post.numComments == 0"> Add Comment </b:if> <b:if cond="data:post.numComments == 1"> 1 Comment </b:if> <b:if cond="data:post.numComments &gt; 1"> <data:post.numcomments></data:post.numcomments> Comments </b:if>
</a>
</b:if>
<b:if cond="data:post.labels">	                      
			  — <b:loop values="data:post.labels" var="label">
<a expr:href="data:label.url" rel="tag"><data:label.name></data:label.name></a><b:if cond="not data:label.isLast">,</b:if>
</b:loop>
</b:if>
</div>
</div>
</b:switch>
</article>
</b:includable>
<b:includable id="postQuickEdit" var="post">
<b:if cond="data:post.editUrl">
<span expr:class='"item-control " + data:post.adminClass'>
<a expr:href="data:post.editUrl" expr:title="data:top.editPostMsg">
<img alt="Edit Post" class="icon-action" height="18" src="https://img2.blogblog.com/img/icon18_edit_allbkg.gif" width="18"/>
</a>
</span>
</b:if>
</b:includable>
<b:includable id="shareButtons" var="post">
<b:if cond="data:top.showEmailButton"><a class="goog-inline-block share-button sb-email" expr:href='data:post.sharePostUrl + "&amp;target=email"' expr:title="data:top.emailThisMsg" target="_blank"><span class="share-button-link-text"><data:top.emailthismsg></data:top.emailthismsg></span></a></b:if><b:if cond="data:top.showBlogThisButton"><a class="goog-inline-block share-button sb-blog" expr:href='data:post.sharePostUrl + "&amp;target=blog"' expr:onclick='"window.open(this.href, \"_blank\", \"height=270,width=475\"); return false;"' expr:title="data:top.blogThisMsg" target="_blank"><span class="share-button-link-text"><data:top.blogthismsg></data:top.blogthismsg></span></a></b:if><b:if cond="data:top.showTwitterButton"><a class="goog-inline-block share-button sb-twitter" expr:href='data:post.sharePostUrl + "&amp;target=twitter"' expr:title="data:top.shareToTwitterMsg" target="_blank"><span class="share-button-link-text"><data:top.sharetotwittermsg></data:top.sharetotwittermsg></span></a></b:if><b:if cond="data:top.showFacebookButton"><a class="goog-inline-block share-button sb-facebook" expr:href='data:post.sharePostUrl + "&amp;target=facebook"' expr:onclick='"window.open(this.href, \"_blank\", \"height=430,width=640\"); return false;"' expr:title="data:top.shareToFacebookMsg" target="_blank"><span class="share-button-link-text"><data:top.sharetofacebookmsg></data:top.sharetofacebookmsg></span></a></b:if><b:if cond="data:top.showOrkutButton"><a class="goog-inline-block share-button sb-orkut" expr:href='data:post.sharePostUrl + "&amp;target=orkut"' expr:title="data:top.shareToOrkutMsg" target="_blank"><span class="share-button-link-text"><data:top.sharetoorkutmsg></data:top.sharetoorkutmsg></span></a></b:if><b:if cond="data:top.showPinterestButton"><a class="goog-inline-block share-button sb-pinterest" expr:href='data:post.sharePostUrl + "&amp;target=pinterest"' expr:title="data:top.shareToPinterestMsg" target="_blank"><span class="share-button-link-text"><data:top.sharetopinterestmsg></data:top.sharetopinterestmsg></span></a></b:if><b:if cond="data:top.showDummy"><div class="goog-inline-block dummy-container"><data:post.dummytag></data:post.dummytag></div></b:if>
</b:includable>
<b:includable id="status-message">
<b:if cond="data:navMessage">
<div class="status-msg-wrap">
<div class="status-msg-body">
<data:navmessage></data:navmessage>
</div>
<div class="status-msg-border">
<div class="status-msg-bg">
<div class="status-msg-hidden"><data:navmessage></data:navmessage></div>
</div>
</div>
</div>
<div style="clear: both;"></div>
</b:if>
</b:includable>
<b:includable id="threaded-comment-form" var="post">
<div class="comment-form">
<a name="comment-form"></a>
<div id="form-wrapper">
<b:if cond="data:mobile">
<p><data:blogcommentmessage></data:blogcommentmessage></p>
<data:blogteamblogmessage></data:blogteamblogmessage>
<a expr:href="data:post.commentFormIframeSrc" id="comment-editor-src"></a>
<iframe allowtransparency="true" class="blogger-iframe-colorize blogger-comment-from-post" frameborder="0" height="410" id="comment-editor" name="comment-editor" src="" style="display: block !important;" width="100%"></iframe>
<b:else></b:else>
<p><data:blogcommentmessage></data:blogcommentmessage></p>
<data:blogteamblogmessage></data:blogteamblogmessage>
<a expr:href="data:post.commentFormIframeSrc" id="comment-editor-src"></a>
<iframe allowtransparency="true" class="blogger-iframe-colorize blogger-comment-from-post" frameborder="0" height="410" id="comment-editor" name="comment-editor" src="" width="100%"></iframe>
</b:if>
</div>
<data:post.friendconnectjs></data:post.friendconnectjs>
<data:post.cmtfpiframe></data:post.cmtfpiframe>
<script type="text/javascript">
      BLOG_CMT_createIframe(&#39;<data:post.appRpcRelayPath/>&#39;, &#39;<data:post.communityId/>&#39;);
    </script>
</div>
</b:includable>
<b:includable id="threaded_comment_js" var="post">
<script async="async" expr:src="data:post.commentSrc" type="text/javascript"></script>
<script type="text/javascript">
    (function() {
      var items = <data:post.commentJso/>;
      var msgs = <data:post.commentMsgs/>;
      var config = <data:post.commentConfig/>;

// <![CDATA[
      var cursor = null;
      if (items && items.length > 0) {
        cursor = parseInt(items[items.length - 1].timestamp) + 1;
      }

      var bodyFromEntry = function(entry) {
        if (entry.gd$extendedProperty) {
          for (var k in entry.gd$extendedProperty) {
            if (entry.gd$extendedProperty[k].name == 'blogger.contentRemoved') {
              return '<span class="deleted-comment">' + entry.content.$t + '</span>';
            }
          }
        }
        return entry.content.$t;
      }

      var parse = function(data) {
        cursor = null;
        var comments = [];
        if (data && data.feed && data.feed.entry) {
          for (var i = 0, entry; entry = data.feed.entry[i]; i++) {
            var comment = {};
            // comment ID, parsed out of the original id format
            var id = /blog-(\d+).post-(\d+)/.exec(entry.id.$t);
            comment.id = id ? id[2] : null;
            comment.body = bodyFromEntry(entry);
            comment.timestamp = Date.parse(entry.published.$t) + '';
            if (entry.author && entry.author.constructor === Array) {
              var auth = entry.author[0];
              if (auth) {
                comment.author = {
                  name: (auth.name ? auth.name.$t : undefined),
                  profileUrl: (auth.uri ? auth.uri.$t : undefined),
                  avatarUrl: (auth.gd$image ? auth.gd$image.src : undefined)
                };
              }
            }
            if (entry.link) {
              if (entry.link[2]) {
                comment.link = comment.permalink = entry.link[2].href;
              }
              if (entry.link[3]) {
                var pid = /.*comments\/default\/(\d+)\?.*/.exec(entry.link[3].href);
                if (pid && pid[1]) {
                  comment.parentId = pid[1];
                }
              }
            }
            comment.deleteclass = 'item-control blog-admin';
            if (entry.gd$extendedProperty) {
              for (var k in entry.gd$extendedProperty) {
                if (entry.gd$extendedProperty[k].name == 'blogger.itemClass') {
                  comment.deleteclass += ' ' + entry.gd$extendedProperty[k].value;
                } else if (entry.gd$extendedProperty[k].name == 'blogger.displayTime') {
                  comment.displayTime = entry.gd$extendedProperty[k].value;
                }
              }
            }
            comments.push(comment);
          }
        }
        return comments;
      };

      var paginator = function(callback) {
        if (hasMore()) {
          var url = config.feed + '?alt=json&v=2&orderby=published&reverse=false&max-results=50';
          if (cursor) {
            url += '&published-min=' + new Date(cursor).toISOString();
          }
          window.bloggercomments = function(data) {
            var parsed = parse(data);
            cursor = parsed.length < 50 ? null
                : parseInt(parsed[parsed.length - 1].timestamp) + 1
            callback(parsed);
            window.bloggercomments = null;
          }
          url += '&callback=bloggercomments';
          var script = document.createElement('script');
          script.type = 'text/javascript';
          script.src = url;
          document.getElementsByTagName('head')[0].appendChild(script);
        }
      };
      var hasMore = function() {
        return !!cursor;
      };
      var getMeta = function(key, comment) {
        if ('iswriter' == key) {
          var matches = !!comment.author
              && comment.author.name == config.authorName
              && comment.author.profileUrl == config.authorUrl;
          return matches ? 'true' : '';
        } else if ('deletelink' == key) {
          return config.baseUri + '/delete-comment.g?blogID='
               + config.blogId + '&postID=' + comment.id;
        } else if ('deleteclass' == key) {
          return comment.deleteclass;
        }
        return '';
      };

      var replybox = null;
      var replyUrlParts = null;
      var replyParent = undefined;

      var onReply = function(commentId, domId) {
        if (replybox == null) {
          // lazily cache replybox, and adjust to suit this style:
          replybox = document.getElementById('comment-editor');
          if (replybox != null) {
            replybox.height = '250px';
            replybox.style.display = 'block';
            replyUrlParts = replybox.src.split('#');
          }
        }
        if (replybox && (commentId !== replyParent)) {
          document.getElementById(domId).insertBefore(document.getElementById('form-wrapper'), null);
          replybox.src = replyUrlParts[0]
              + (commentId ? '&parentID=' + commentId : '')
              + '#' + replyUrlParts[1];
          replyParent = commentId;
        }
      };

      var hash = (window.location.hash || '#').substring(1);
      var startThread, targetComment;
      if (/^comment-form_/.test(hash)) {
        startThread = hash.substring('comment-form_'.length);
      } else if (/^c[0-9]+$/.test(hash)) {
        targetComment = hash.substring(1);
      }

      // Configure commenting API:
      var configJso = {
        'maxDepth': config.maxThreadDepth
      };
      var provider = {
        'id': config.postId,
        'data': items,
        'loadNext': paginator,
        'hasMore': hasMore,
        'getMeta': getMeta,
        'onReply': onReply,
        'rendered': true,
        'initComment': targetComment,
        'initReplyThread': startThread,
        'config': configJso,
        'messages': msgs
      };

      var render = function() {
        if (window.goog && window.goog.comments) {
          var holder = document.getElementById('comment-holder');
          window.goog.comments.render(holder, provider);
        }
      };

      // render now, or queue to render when library loads:
      if (window.goog && window.goog.comments) {
        render();
      } else {
        window.goog = window.goog || {};
        window.goog.comments = window.goog.comments || {};
        window.goog.comments.loadQueue = window.goog.comments.loadQueue || [];
        window.goog.comments.loadQueue.push(render);
      }
    })();
// ]]>
  </script>
</b:includable>
<b:includable id="threaded_comments" var="post">
<div class="comments" id="comments">
<a name="comments"></a>
<h3> <b:if cond="data:post.numComments == 0"> Belum ada tanggapan untuk "<data:blog.pagename></data:blog.pagename>"</b:if> <b:if cond="data:post.numComments &gt; 0"> <data:post.numcomments></data:post.numcomments> Tanggapan untuk "<data:blog.pagename></data:blog.pagename>" </b:if> </h3>
<div class="comments-content">
<b:if cond="data:post.embedCommentForm">
<b:include data="post" name="threaded_comment_js"></b:include>
</b:if>
<div id="comment-holder">
<data:post.commenthtml></data:post.commenthtml>
</div>
</div>
<p class="comment-footer">
<b:if cond="data:post.allowNewComments">
<b:include data="post" name="threaded-comment-form"></b:include>
<b:else></b:else>
<data:post.nonewcommentstext></data:post.nonewcommentstext>
</b:if>
</p>
<b:if cond="data:showCmtPopup">
<div id="comment-popup">
<iframe allowtransparency="true" frameborder="0" id="comment-actions" name="comment-actions" scrolling="no">
</iframe>
</div>
</b:if>
<div id="backlinks-container">
<div expr:id='data:widget.instanceId + "_backlinks-container"'>
<b:if cond="data:post.showBacklinks">
<b:include data="post" name="backlinks"></b:include>
</b:if>
</div>
</div>
</div>
</b:includable>
</b:widget>
<b:widget id="HTML1" locked="false" title="评论" type="HTML">
<b:widget-settings>
<b:widget-setting name="content">&lt;!-- 来必力City版安装代码 --&gt;
&lt;div id="lv-container" data-id="city" data-uid="MTAyMC80OTg1OS8yNjM1MA=="&gt;
	&lt;script type="text/javascript"&gt;
   (function(d, s) {
       var j, e = d.getElementsByTagName(s)[0];

       if (typeof LivereTower === 'function') { return; }

       j = d.createElement(s);
       j.src = 'https://cdn-city.livere.com/js/embed.dist.js';
       j.async = true;

       e.parentNode.insertBefore(j, e);
   })(document, 'script');
	&lt;/script&gt;
&lt;noscript&gt; 为正常使用来必力评论功能请激活JavaScript&lt;/noscript&gt;
&lt;/div&gt;
&lt;!-- City版安装代码已完成 --&gt;</b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<!-- only display title if it's non-empty -->
<b:if cond='data:title != ""'>
<h2 class="title"><data:title></data:title></h2>
</b:if>
<div class="widget-content">
<data:content></data:content>
</div>
<b:include name="quickedit"></b:include>
</b:includable>
</b:widget>
</b:section>
<div class="clear"></div>
</div>
<!-- kotak-posting ditutup -->
<!-- sidebar dibuka -->
<aside id="sidebar">
<b:section class="sidebar" id="kotak-sidebar" preferred="yes">
<b:widget id="HTML3" locked="false" title="" type="HTML">
<b:widget-settings>
<b:widget-setting name="content"><![CDATA[<script type="text/javascript">(function(){document.write(unescape('%3Cdiv id="bdcs"%3E%3C/div%3E'));var bdcs = document.createElement('script');bdcs.type = 'text/javascript';bdcs.async = true;bdcs.src = 'http://znsv.baidu.com/customer_search/api/js?sid=17106319262256895754' + '&plate_url=' + encodeURIComponent(window.location.href) + '&t=' + Math.ceil(new Date()/3600000);var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(bdcs, s);})();</script>]]></b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<!-- only display title if it's non-empty -->
<b:if cond='data:title != ""'>
<h2 class="title"><data:title></data:title></h2>
</b:if>
<div class="widget-content">
<data:content></data:content>
</div>
<b:include name="quickedit"></b:include>
</b:includable>
</b:widget>
<b:widget id="HTML2" locked="false" title="联系我" type="HTML">
<b:widget-settings>
<b:widget-setting name="content"><![CDATA[<a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=442Ck4yPhpHR09Pbo4SOgoqPzYCMjg" style="text-decoration:none;"><img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_01.png"/></a>]]></b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<!-- only display title if it's non-empty -->
<b:if cond='data:title != ""'>
<h2 class="title"><data:title></data:title></h2>
</b:if>
<div class="widget-content">
<data:content></data:content>
</div>
<b:include name="quickedit"></b:include>
</b:includable>
</b:widget>
<b:widget id="PopularPosts1" locked="false" title="热门博文" type="PopularPosts">
<b:widget-settings>
<b:widget-setting name="numItemsToShow">10</b:widget-setting>
<b:widget-setting name="showThumbnails">false</b:widget-setting>
<b:widget-setting name="showSnippets">false</b:widget-setting>
<b:widget-setting name="timeRange">LAST_MONTH</b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<b:if cond='data:title != ""'><h2><data:title></data:title></h2></b:if>
<div class="widget-content popular-posts">
<ul>
<b:loop values="data:posts" var="post">
<li>
<b:if cond="!data:showThumbnails">
<b:if cond="!data:showSnippets">
<!-- (1) No snippet/thumbnail -->
<a expr:href="data:post.href"><data:post.title></data:post.title></a>
<b:else></b:else>
<!-- (2) Show only snippets -->
<div class="item-title"><a expr:href="data:post.href"><data:post.title></data:post.title></a></div>
<div class="item-snippet"><data:post.snippet></data:post.snippet></div>
</b:if>
<b:else></b:else>
<!-- (3) Show only thumbnails or (4) Snippets and thumbnails. -->
<div expr:class='data:showSnippets ? "item-content" : "item-thumbnail-only"'>
<b:if cond="data:post.featuredImage.isResizable or data:post.thumbnail">
<div class="item-thumbnail">
<a expr:href="data:post.href" target="_blank">
<b:with value='data:post.featuredImage.isResizable                                  ? resizeImage(data:post.featuredImage, 72, "1:1")                                  : data:post.thumbnail' var="image">
<img alt="" border="0" expr:src="data:image"/>
</b:with>
</a>
</div>
</b:if>
<div class="item-title"><a expr:href="data:post.href"><data:post.title></data:post.title></a></div>
<b:if cond="data:showSnippets">
<div class="item-snippet"><data:post.snippet></data:post.snippet></div>
</b:if>
</div>
<div style="clear: both;"></div>
</b:if>
</li>
</b:loop>
</ul>
<b:include name="quickedit"></b:include>
</div>
</b:includable>
</b:widget>
<b:widget id="BlogArchive1" locked="false" title="博客归档" type="BlogArchive" version="1">
<b:widget-settings>
<b:widget-setting name="showStyle">MENU</b:widget-setting>
<b:widget-setting name="yearPattern">yyyy</b:widget-setting>
<b:widget-setting name="showWeekEnd">true</b:widget-setting>
<b:widget-setting name="monthPattern">MMM yyyy</b:widget-setting>
<b:widget-setting name="dayPattern">MMM dd</b:widget-setting>
<b:widget-setting name="weekPattern">MM/dd</b:widget-setting>
<b:widget-setting name="chronological">false</b:widget-setting>
<b:widget-setting name="showPosts">false</b:widget-setting>
<b:widget-setting name="frequency">MONTHLY</b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<b:if cond='data:title != ""'>
<h2><data:title></data:title></h2>
</b:if>
<div class="widget-content">
<div id="ArchiveList">
<div expr:id='data:widget.instanceId + "_ArchiveList"'>
<b:include cond='data:style == "HIERARCHY"' data="data" name="interval"></b:include>
<b:include cond='data:style == "FLAT"' data="data" name="flat"></b:include>
<b:include cond='data:style == "MENU"' data="data" name="menu"></b:include>
</div>
</div>
</div>
</b:includable>
<b:includable id="flat" var="data">
<ul class="flat">
<b:loop values="data:data" var="i">
<li class="archivedate">
<a expr:href="data:i.url"><data:i.name></data:i.name></a> (<data:i.post-count></data:i.post-count>)
      </li>
</b:loop>
</ul>
</b:includable>
<b:includable id="interval" var="intervalData">
<b:loop values="data:intervalData" var="interval">
<ul class="hierarchy">
<li expr:class='"archivedate " + data:interval.expclass'>
<b:include cond="data:interval.toggleId" data="interval" name="toggle"></b:include>
<a class="post-count-link" expr:href="data:interval.url">
<data:interval.name></data:interval.name>
</a>
<span class="post-count" dir="ltr">(<data:interval.post-count></data:interval.post-count>)</span>
<b:include cond="data:interval.data" data="interval.data" name="interval"></b:include>
<b:include cond="data:interval.posts" data="interval.posts" name="posts"></b:include>
</li>
</ul>
</b:loop>
</b:includable>
<b:includable id="menu" var="data">
<select expr:id='data:widget.instanceId + "_ArchiveMenu"'>
<option value=""><data:title></data:title></option>
<b:loop values="data:data" var="i">
<option expr:value="data:i.url"><data:i.name></data:i.name> (<data:i.post-count></data:i.post-count>)</option>
</b:loop>
</select>
</b:includable>
<b:includable id="posts" var="posts">
<ul class="posts">
<b:loop values="data:posts" var="post">
<li><a expr:href="data:post.url"><data:post.title></data:post.title></a></li>
</b:loop>
</ul>
</b:includable>
<b:includable id="toggle" var="interval">
<a class="toggle" href="javascript:void(0)">
<span expr:class='"zippy" + (data:interval.expclass == "expanded" ? " toggle-open" : "")'>
<b:if cond='data:interval.expclass == "expanded"'>
        ▼&nbsp;
      <b:elseif cond='data:blog.languageDirection == "rtl"'></b:elseif>
        ◄&nbsp;
      <b:else></b:else>
        ►&nbsp;
      </b:if>
</span>
</a>
</b:includable>
</b:widget>
<b:widget id="Label2" locked="false" title="标签" type="Label">
<b:widget-settings>
<b:widget-setting name="sorting">FREQUENCY</b:widget-setting>
<b:widget-setting name="display">CLOUD</b:widget-setting>
<b:widget-setting name="selectedLabelsList">301跳转,CDN,Drupal,Drupal7,GPT2,Google,Jackett,RSs,drupal8,kindle,ngrok,python,pytorch,reformer,seo,书签栏小工具,人工智能,前端,数据迁移,机器写作,标准化操作,树莓派,汉化,浏览器,电子商务,磁力搜索</b:widget-setting>
<b:widget-setting name="showType">USER_SELECTED</b:widget-setting>
<b:widget-setting name="showFreqNumbers">true</b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<b:if cond='data:title != ""'>
<h2><data:title></data:title></h2>
</b:if>
<div expr:class='"widget-content " + data:display + "-label-widget-content"'>
<b:if cond='data:display == "list"'>
<ul>
<b:loop values="data:labels" var="label">
<li>
<b:if cond="data:blog.url == data:label.url">
<span expr:dir="data:blog.languageDirection"><data:label.name></data:label.name></span>
<b:else></b:else>
<a expr:dir="data:blog.languageDirection" expr:href="data:label.url"><data:label.name></data:label.name></a>
</b:if>
<b:if cond="data:showFreqNumbers">
<span dir="ltr">(<data:label.count></data:label.count>)</span>
</b:if>
</li>
</b:loop>
</ul>
<b:else></b:else>
<b:loop values="data:labels" var="label">
<span expr:class='"label-size label-size-" + data:label.cssSize'>
<b:if cond="data:blog.url == data:label.url">
<span expr:dir="data:blog.languageDirection"><data:label.name></data:label.name></span>
<b:else></b:else>
<a expr:dir="data:blog.languageDirection" expr:href="data:label.url"><data:label.name></data:label.name></a>
</b:if>
<b:if cond="data:showFreqNumbers">
<span class="label-count" dir="ltr">(<data:label.count></data:label.count>)</span>
</b:if>
</span>
</b:loop>
</b:if>
<b:include name="quickedit"></b:include>
</div>
</b:includable>
</b:widget>
<b:widget id="LinkList1" locked="false" title="链接" type="LinkList">
<b:widget-settings>
<b:widget-setting name="link-3">http://python.terrychan.org</b:widget-setting>
<b:widget-setting name="sorting">NONE</b:widget-setting>
<b:widget-setting name="text-1">猫咪盒子</b:widget-setting>
<b:widget-setting name="link-1">https://www.maomihezi.com/</b:widget-setting>
<b:widget-setting name="text-0">前端测试</b:widget-setting>
<b:widget-setting name="link-2">https://webio.terrychan.org/</b:widget-setting>
<b:widget-setting name="text-3">python</b:widget-setting>
<b:widget-setting name="link-0">https://webio.terrychan.org/webio/</b:widget-setting>
<b:widget-setting name="text-2">Webio</b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<b:if cond='data:title != ""'><h2><data:title></data:title></h2></b:if>
<div class="widget-content">
<ul>
<b:loop values="data:links" var="link">
<li><a expr:href="data:link.target"><data:link.name></data:link.name></a></li>
</b:loop>
</ul>
<b:include name="quickedit"></b:include>
</div>
</b:includable>
</b:widget>
</b:section>
<div class="clear"></div>
</aside>
<div class="clear"></div>
<!-- sidebar ditutup -->
</div>
<div class="clear"></div>
<!-- kotak-kontent ditutup -->
<b:section class="atas-footer" id="atas-footer" showaddelement="yes"></b:section>
<div class="clear"></div>
</div>
<!-- wrapper ditutup -->
<!-- footer dibuka -->
<footer id="footer-wrapper">
<div id="footer-box">
<div class="footer-kiri">
	Copyright © <script type="text/javascript">var creditsyear = new Date();document.write(creditsyear.getFullYear());</script> <a expr:href="data:blog.homepageUrl"><data:blog.title></data:blog.title></a>
</div>
<div class="footer-kanan">
<script src="//alexa.chinaz.com/show_alexa.aspx?Url=www.terrychan.org"></script>
</div>
</div>
</footer>
<!-- footer ditutup  -->
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement(&quot;script&quot;);
  hm.src = &quot;https://hm.baidu.com/hm.js?4b6f3ab3669188d93d255b2045f8ddcf&quot;;
  var s = document.getElementsByTagName(&quot;script&quot;)[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
<script>
//<![CDATA[
(function(a,c,d){a.fn.tinyNav=function(e){var b=a.extend({active:"selected",header:"",label:""},e);return this.each(function(){d++;var e=a(this),h="tinynav"+d,k=".l_"+h,g=a("<select/>").attr("id",h).addClass("tinynav "+h);if(e.is("ul,ol")){""!==b.header&&g.append(a("<option/>").text(b.header));var f="";e.addClass("l_"+h).find("a").each(function(){f+='<option value="'+a(this).attr("href")+'">';var b;for(b=0;b<a(this).parents("ul, ol").length-1;b++)f+="- ";f+=a(this).text()+"</option>"});g.append(f);b.header||
g.find(":eq("+a(k+" li").index(a(k+" li."+b.active))+")").attr("selected",!0);g.change(function(){c.location.href=a(this).val()});a(k).after(g);b.label&&g.before(a("<label/>").attr("for",h).addClass("tinynav_label "+h+"_label").append(b.label))}})}})(jQuery,this,0);
//]]>
</script>
<script async="async" src="//code.tidio.co/6kchaz9rrrxrq8evgzk4pjztdcoypsgi.js"></script>

&lt;!--[if 0] &gt;</body>&lt;![endif]--&gt;
</html>---
layout: post
comments: 1
categories: Default
tags: 
comments: 1
---
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html>

<html b:version="2" class="v2" expr:dir="data:blog.languageDirection" xmlns="http://www.w3.org/1999/xhtml" xmlns:b="http://www.google.com/2005/gml/b" xmlns:data="http://www.google.com/2005/gml/data" xmlns:expr="http://www.google.com/2005/gml/expr">
<head>
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"> </script>
<![endif]-->
<meta content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1" name="viewport"/>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type"/>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible"/>
<b:include data="blog" name="all-head-content"></b:include>
<!-- Judul Blogger dioptimalkan -->
<b:if cond='data:blog.pageType in {"index"} and data:blog.homepageUrl == data:blog.url'>
<title><data:blog.pagetitle></data:blog.pagetitle></title>
<b:else></b:else>
<b:if cond='data:blog.pageType in {"item","static_page"}'>
<title><data:blog.pagename></data:blog.pagename> - <data:blog.title></data:blog.title></title>
<b:else></b:else>
<b:if cond='data:blog.pageType in {"index"} and data:blog.pageName == ""'>
<title>All Posts - <data:blog.title></data:blog.title></title>
<b:else></b:else>
<b:if cond='data:blog.pageType in {"error_page"}'>
<title>Page Not Found - <data:blog.title></data:blog.title></title>
<b:else></b:else>
<title><data:blog.pagename></data:blog.pagename></title>
</b:if>
</b:if>
</b:if>
</b:if>
<!-- Meta keywords otomatis halaman depan, statis, dan postingan -->
<b:if cond='data:blog.pageType in {"index"} and data:blog.homepageUrl == data:blog.url'>
<meta expr:content="data:blog.title" name="keywords"/>
</b:if>
<b:if cond='data:blog.pageType in {"item","static_page"}'>
<meta expr:content="data:blog.pageName" name="keywords"/>
</b:if>
<!-- Noindex halaman pencarian, label, dan arsip -->
<b:if cond='data:blog.pageType in {"archive"} or data:blog.searchLabel or data:blog.searchQuery'>
<meta content="noindex,nofollow" name="robots"/>
</b:if>
<!-- Facebook Open Graph Tag -->
<b:if cond='data:blog.pageType == "item"'>
<meta expr:content="data:blog.pageName" property="og:title"/>
<meta content="article" property="og:type"/>
<b:else></b:else>
<meta expr:content="data:blog.pageTitle" property="og:title"/>
<meta content="website" property="og:type"/>
</b:if>
<meta expr:content="data:blog.canonicalUrl" property="og:url"/>
<!-- Large image, original size -->
<b:if cond="data:blog.postImageUrl">
<meta expr:content="data:blog.postImageUrl" property="og:image"/>
<b:else></b:else>
<!-- Thumbnail image, 72 &#215; 72 pixels -->
<b:if cond="data:blog.postImageThumbnailUrl">
<meta expr:content="data:blog.postThumbnailUrl" property="og:image"/>
<b:else></b:else>
<!-- Default, no image -->
<meta content="http://1.bp.blogspot.com/-7vDs5hMaDho/U268E2ecF4I/AAAAAAAADY8/RBHVTTuJrxc/s1600/no-image.png" property="og:image"/>
</b:if>
</b:if>
<b:if cond="data:blog.metaDescription">
<meta expr:content="data:blog.metaDescription" property="og:description"/>
</b:if>
<meta expr:content="data:blog.title" property="og:site_name"/>
<!-- 
<link href='https://fonts.useso.com/css?family=PT+Serif|Open+Sans+Condensed:700' rel='stylesheet' type='text/css'/>
 -->
<script async="async" data-ad-client="ca-pub-9152038220843260" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<meta content="J1bF9nDRxL" name="sogou_site_verification"/>
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
<b:skin><![CDATA[/*
-----------------------------------------------
Blogger Template Style
Name:     Blogku Template
Designer: Mas Sugeng
URL:      sugeng.id
----------------------------------------------- */
/**
* Eric Meyer&#39;s Reset CSS v2.0 (http://meyerweb.com/eric/tools/css/reset/)
* http://cssreset.com
*/
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}/* HTML5 display-role reset for older browsers */article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block;}body{line-height:1;display:block;}*{margin:0;padding:0;}html{display:block;}ol,ul{list-style:none;}blockquote,q{quotes:none;}blockquote:before,blockquote:after,q:before,q:after{content:"";content:none;}table{border-collapse:collapse;border-spacing:0;}

/* FRAMEWORK */
strong, b {
	font-weight: bold;
}
cite, em, i {
	font-style: italic;
}
a:link {
	color: #219FDE;
	text-decoration: none;
	outline: none;
	transition: all 0.5s;
	-moz-transition: all 0.5s;
	-webkit-transition: all 0.5s;
}
a:visited {
	color: #219FDE;
	text-decoration: none;
}
a:hover {
	color: #EE3322;
	text-decoration: none;
}
a img {
	border: none;
	border-width: 0;
	outline: none;
}
abbr,acronym {
	border-bottom: 1px dotted;
	cursor: help;
}
sup,sub {
	vertical-align: baseline;
	position: relative;
	top: -.4em;
	font-size: 86%;
}
sub {
	top: .4em;
}
small {
	font-size: 86%;
}
kbd {
	font-size: 80%;
	border: 1px solid #999;
	padding: 2px 5px;
	border-bottom-width: 2px;
	border-radius: 3px;
}
mark {
	background-color: #ffce00;
	color: black;
}
p,blockquote,pre,table,figure,hr,form,ol,ul,dl {
	margin: 1.5em 0;
}
hr {
	height: 1px;
	border: none;
	background-color: #666;
}

/* Heading */
h1,h2,h3,h4,h5,h6 {
	font-family: "Open Sans Condensed", Arial, sans-serif;
	font-weight: bold;
	line-height: normal;
	margin: 0 0 0.8em;
	letter-spacing: -0.5px;
}
h1 {
	font-size: 200%
}
h2 {
	font-size: 180%
}
h3 {
	font-size: 160%
}
h4 {
	font-size: 140%
}
h5 {
	font-size: 120%
}
h6 {
	font-size: 100%
}

/* List */
ol,ul,dl {
	margin: .8em 0em .8em 3em;
}
ol {
	list-style: decimal outside;
}
ul {
	list-style: disc outside;
}
li {
	margin: .5em 0;
}
dt {
	font-weight: bold;
}
dd {
	margin: 0 0 .5em 2em;
}

/* Form */
input,button,select,textarea {
	font: inherit;
	font-size: 100%;
	line-height: normal;
	vertical-align: baseline;
}
textarea {
	display: block;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
pre,code {
	font-family: "Courier New",Courier,Monospace;
	color: inherit;
}
pre {
	white-space: pre;
	word-wrap: normal;
	overflow: auto;
}

/* Blockquote */
blockquote {
	background: #F6F7F9;
    margin-left: 2em;
    margin-right: 2em;
    border-left: 4px solid #DDDFE2;
    padding: 1em 1em;
    font-style: italic;
}

/* Table */
table[border="1"] td, table[border="1"] th {
	vertical-align: top;
	text-align: left;
	font-size: 13px;
	padding: 3px 5px;
	border: 1px solid #ededed;
}
table[border="1"] th {
	background: #F6F7F9;
}

table, img {
	max-width: 100%;
	height: auto;
}
img, iframe {
	max-width: 100%;
}

/* BLOGGER DEFAULT CSS RESET */

.section, .widget {
	margin: 0 0 0 0;
}
.navbar, .blog-feeds, .feed-links, #backlinks-container {
	display:none;
}
.inline-ad {
	margin: 20px 0;
	background: #fff;
    padding: 20px;
}

body {
	background: #F6F7F9;
	margin: 0;
	padding: 0;
	color: #585858;
	font: normal 100% "PT Serif", Georgia, serif;
	font-size: 16px;
	text-align: center;
}
#wrapper {
	text-align: left;
	max-width: 1000px;
	margin: 0 auto;
	padding: 0 30px;
}

/* MENU NAVIGASI */

.tinynav1 {
	display: none;
	width: 100%;
	margin: 0 auto;
	border: 2px solid #ffffff;
	padding: 6px;
	background-color: #ffffff;
	font-weight: bold;
	cursor: pointer;
	outline: none;
	color: #585858;
}
.menu-navigasi {
	float: right;
	text-align: right;
	max-width: 700px;
	width: 70%;
	overflow: hidden
}
nav {
	font-family: "Open Sans Condensed", Arial, sans-serif;
	text-transform: uppercase;
	font-size: 15px;
	position: relative;
}
nav * {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
	list-style: none;
}
nav ul {
	height: 48px;
	padding: 0 0 !important;
}
nav li {
	float: right;
	display: inline;
	padding: 0 0 !important;
}
nav li a {
	padding: 0 0;
	margin-left: 30px;
	line-height: 48px;
	color: #A2A7AB !important;
	display: block;
	text-decoration: none;
}
nav li a:hover, nav li a.active {
	color: #fff !important;
}
nav li a:active {
	color: #fff;
}

/* HEADER */

#header-wrapper {
	background: #38424B;
	text-align: left;
	padding: 26px 0;
}
#header-box {
	max-width: 1000px;
	height: auto;
	padding: 0 30px;
	margin: 0 auto;
	overflow: hidden;
}
#header {
	float: left;
	max-width: 280px;
	width: 28%;
}
#header h1.title, #header p.title {
	font-family:"Open Sans Condensed", Arial, sans-serif;
	font-weight:bold;
	letter-spacing: -0.5px;
	line-height: 1.1em;
	font-size: 24px;
	text-transform: uppercase;
	color: #ffffff;
	margin: 0 0;
	padding: 0 0 3px
}
#header h1.title a, #header p.title a {
	color: #ffffff;
}
#header .description {
	font-size: 13px;
	color: #A2A7AB;
	margin: 0;
	padding: 3px 0 0 0;
}

/* WIDGET BAWAH HEADER DAN ATAS FOOTER*/

#bawah-header, #atas-footer {
	max-width: 100%;
}

#bawah-header .widget-content, #atas-footer .widget-content {
	background: #fff;
	padding: 15px;
	overflow: hidden;
}

#bawah-header .widget {
	margin-top: 20px;
}

#atas-footer .widget {
	margin-bottom: 20px;
}

#bawah-header h2, #atas-footer h2 {
    font-family: "Open Sans Condensed", Arial, sans-serif;
    font-weight: normal;
    text-transform: uppercase;
    background: #ffffff;
    color: #4C565F;
    font-size: 18px;
    padding: 20px 20px 0px;
    margin: 0 0 0 0;
}

/* KONTEN WRAPPER */

#content-wrapper {
	padding: 20px 0;
	overflow: hidden;
}	

/* KOTAK POSTING */

.kotak-posting {
	margin: 0 20px 0 0;
	padding: 0;
	word-wrap: break-word;
}
#posting {
	float: left;
	max-width: 660px;
	width: 66%
}
.breadcrumbs {
	text-align: left;
    padding: 26px;
    margin: 0 0 20px;
	font-size: 13px;
    line-height: 1.4;
    border-bottom: none;
    background: #fff;
}
.post {
	background: #ffffff;
	position: relative;
	padding: 26px;
	margin: 0 0 20px 0;
	overflow: hidden;
}
.post-box {
	margin-left: 163px;
}
.img-thumbnail {
	position: absolute;
    top: 26px;
    left: 26px;
    width: 130px;
    height: 130px;
    padding: 8px;
    border: 1px solid #F0F1F3;
}
.img-thumbnail img {
	width: 130px;
	height: 130px;
}
.post-footer {
    margin: 15px 0 0;
	padding: 14px 0 0;
	font-size: 13px;
    border-top: 1px solid #F0F1F3;
    color: #AFAFAF;
}
.item-post-footer {
	font-size: 13px;
	margin: 20px 0 0;
	padding: 15px 0 0;
	border-top: 1px solid #F0F1F3;
	color: #AFAFAF;
}
.item-post-footer abbr {
	border-bottom: none;
}
.post-body {
	line-height: 1.5;
}
h2.post-title {
	font-family: "Open Sans Condensed", Arial, sans-serif;
	line-height: 1.3;
	margin: 0;
	padding: 0 0 15px;
	font-size: 24px
}
h1.post-title {
	font-family: "Open Sans Condensed", Arial, sans-serif;
	line-height: 1.3;
	margin: 0;
	font-size: 28px;
	padding: 0 0 20px 
}
h2.post-title a, h1.post-title a {
	color: #4C565F;
}
h2.post-title a:hover, h1.post-title a:hover {
	color: #219FDE;
}

/* Related posts */
#related-post-desktop {
	overflow: hidden;
	margin: 15px 0;
	padding: 0
}
#related-post-desktop h3 {
	font-size: 20px;
	font-weight: bold;
	padding: 0 0 8px;
	margin: 0;
	color: #4C565F;
}
#related-post-desktop ul {
	margin-left: 20px;
	padding: 0 0 0 10px;
}
#related-post-desktop ul li {
	padding: 0 0 8px;
}

/* Author profile box */
.author-profile {
    padding: 15px 0;
    margin: 20px 0px;
    overflow: hidden;
    border-top: 2px solid #F6F7F9;
    border-bottom: 2px solid #F6F7F9;
}
.author-profile img {
	border: 1px solid #F6F7F9;
	float: left;
	margin-right: 15px;
}
.author-profile a.g-profile {
	font-weight: bold;
}

/* Navigasi halaman */
#blog-pager {
	clear:both !important;
	overflow:hidden;
	margin:20px 0;
	text-align:center
}
#blog-pager-newer-link {
	float:left
}
#blog-pager-older-link {
	float:right
}

/* SIDEBAR */

#sidebar {
	background: transparent;
	float: right;
	max-width: 340px;
	width: 34%;
}
#sidebar h2 {
	font-family: "Open Sans Condensed", Arial, sans-serif;
	font-weight: normal;
	text-transform: uppercase;
	background: #ffffff;
	color: #4C565F;
	font-size: 18px;
	padding: 20px 20px 0px;
	margin: 0 0 0 0;
}
#sidebar .widget {
	margin: 0;
	clear: both
}
#sidebar .widget-content {
	background: #ffffff;
	padding: 20px;
	margin: 0 0 20px;
	overflow: hidden;
}

/* CUSTOM WIDGET STYLE */

/* Lists Widget */
.sidebar ul, .atas-footer ul, .bawah-header ul {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
	list-style-type: none;
}
.sidebar ul li, .atas-footer ul li, .bawah-header ul li {
	margin: 0;
	padding: 8px 0px;
	border-bottom: 1px solid #F0F1F3;
}
.sidebar ul li a, .atas-footer ul li a, .bawah-header ul li a { 
	color: #585858;
}
.sidebar ul li a:hover, .atas-footer ul li a:hover, .bawah-header ul li a:hover {
	color: #C80441
}

/* Widget popular posts */
.PopularPosts .item-snippet {
	color: #666;
	font-size: 12px
}
.PopularPosts .item-title {
}
.PopularPosts .item-thumbnail {
	float: right;
	margin: 0 0 0 8px;
	padding: 6px;
	border: 1px solid #F0F1F3;
	display: inline;
}
.PopularPosts .item-thumbnail a img {
	height: 48px;
	width: 48px;
	display: block;
	margin: 0;
	padding: 0;
}
.PopularPosts .widget-content ul li {
	padding: 8px 0 !important
}

/* Widget label */
.label-size-1,.label-size-2,.label-size-3,.label-size-4,.label-size-5 {
	font-size: 100%;
	filter: alpha(100);
	opacity: 10
}
.cloud-label-widget-content{
	text-align: left
}
.label-size {
    transition: all 0.25s;
    -moz-transition: all 0.25s;
    -webkit-transition: all 0.25s;
    background: #F6F7F9;
    display: block;
    float: left;
    margin: 0 3px 3px 0;
    color: #585858;
    font-size: 11px;
    text-transform: uppercase;
    border: 1px solid #F0F1F3;
}

.label-size a,.label-size span {
	display: inline-block;
	color: #585858 !important;
	padding: 8px;
	font-weight: bold;
}
.label-size:hover {
	background: #F0F1F3;
}
.label-count {
	white-space: nowrap;
	padding-right: 3px;
	margin-left: -3px;
	background: #F0F1F3;
}
.label-size {
	line-height: 1.2
}

/* Widget arsip */
.BlogArchive #ArchiveList ul li {
	padding: 3px 3px 3px 15px;
}

/* FOOTER WRAPPER */

#footer-wrapper {
	background: #38424B;
	padding: 26px 0;
}
#footer-box {
	max-width: 1000px;
	height: auto;
	padding: 0 30px;
	margin: 0 auto;
	overflow: hidden;
	color: #A2A7AB;
}
#footer-wrapper .footer-kiri {
	float: left
}
#footer-wrapper .footer-kanan {
	float: right;
	text-align: right
}
#footer-box a {
	color: #A2A7AB;
}
#footer-box a:hover {
	color: #ffffff;
}

/* SHARE BUTTON */
.social-buttons-box {
	height: 67px;
	margin: 20px 0 15px;
	overflow: hidden;
}
.social-buttons {
	margin: 0 0;
	height: 67px;
	float: left;
}
.social-buttons .share {
	float: left;
	margin-right: 10px;
	display: inline-block;
}
.share-btn {
	margin: 15px 0 25px;
	height: 20px;
	overflow: hidden;
}
.fb_iframe_widget {
	float: left;
}

/* DOWNLOAD BUTTON */
.button {
	font-family: "Open Sans Condensed", sans-serif;
	transition: all 0.5s;-moz-transition:all 0.5s;-webkit-transition:all 0.5s;
	text-align: center;
	position: relative;
	vertical-align: top;
	margin: 0 3px;
	padding: 8px 12px;
	font-size: 16px;
	text-transform: uppercase;
	color: #fff;
	font-weight: normal;
	text-align: center;
	background: #FFCC00;
	border: 0;
	cursor: pointer;
	outline: none;
}
.button:active {
	top: 1px;
	outline: none;
}
.button:hover {
	background: #E2B810;
}

/* KOTAK NOTE */
.note-green { 
	margin: 0.6em 0;
	padding: 16px;
	background-color: #D3F5D3;
	color: #159415;
}
.note-yellow { 
	margin: 0.6em 0;
	padding: 12px;
	background-color: #fcf8e3;
	color: #b58d47;
}
.note-red { 
	margin: 0.6em 0;
	padding: 16px;
	background-color: #FCAFAF;
	color: #C92121;
}
.mark-green { 
	background-color: #A4DDA4
}
.mark-blue { 
	background-color: #A1DAFF
}
.mark-red { 
	background-color: #FF9999
}
.mark-black { 
	background-color: #333333
}
.mark-gray { 
	background-color: #EEEEEE
}
.mark-yellow { 
	background-color: #E4E437
}

/* Template Blogger */

.post-template {
}
.post-template img {
	width: 400px;
	display: block;
}
.post-template table {
	margin: 0 0 15px 0;
}
.post-template table[border="1"] td, .post-template table[border="1"] th {
	padding: 8px 8px;
}
.download-link {
	margin: 20px 0 30px;
    text-align: center;
    padding: 20px;
    border: 1px solid #F6F7F9;
}
.hborder {
    border-bottom: 3px solid #F6F7F9;
	padding-bottom: 6px;
}

.ad-post {
	float: right;
	width: 300px;
	margin: 0 0 15px 15px;
}

/* COMMENT FORM */

#comments {
	background: #fff;
	padding: 26px;
}

.comment-form {
	overflow: hidden;
}
.comments h3 {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 1.2em;
}
h4#comment-post-message {
	display: none;
	margin: 0 0 0 0;
}

.comments {
	clear: both;
	margin-top: 10px;
	margin-bottom: 0
}
.comments .comments-content .comment-header {
	font-size: 14px;
	color: #aaa;
}
.comments .comments-content {
	margin-bottom: 8px
}
.comments .comments-content .comment-thread ol {
	text-align: left;
	margin: 13px 0;
	padding: 0
}
.comments .avatar-image-container {
	overflow: hidden;
	max-height: 50px;
	width: 50px;
}
.comments .comment-block {
	position: relative;
	margin-left: 70px;
	margin-bottom: 20px;
}
.comments .comments-content .comment-replies {
	margin: 8px 0;
	margin-left: 70px
}
.comments .comments-content .comment-thread:empty {
	display: none
}
.comments .comment-replybox-single {
	padding: 0;
	margin: 8px 0;
	margin-left: 70px
}
.comments .comment-replybox-thread {
	margin: 8px 0 0 0;
	padding: 0;
}
.comments .comments-content .comment {
	margin-bottom: 6px;
	padding: 0
}
.comments .comments-content .comment:first-child {
	padding: 0;
	margin: 0
}
.comments .comments-content .comment:last-child {
	padding: 0;
	margin: 0
}
.comments .comment-thread.inline-thread .comment, .comments .comment-thread.inline-thread .comment:last-child {
	margin: 0px 0px 5px 18%
}
.comment .comment-thread.inline-thread .comment:nth-child(6) {
	margin: 0px 0px 5px 15%;
}
.comment .comment-thread.inline-thread .comment:nth-child(5) {
	margin: 0px 0px 5px 12%;
}
.comment .comment-thread.inline-thread .comment:nth-child(4) {
	margin: 0px 0px 5px 9%;
}
.comment .comment-thread.inline-thread .comment:nth-child(3) {
	margin: 0px 0px 5px 6%;
}
.comment .comment-thread.inline-thread .comment:nth-child(2) {
	margin: 0px 0px 5px 3%;
}
.comment .comment-thread.inline-thread .comment:nth-child(1) {
	margin: 0px 0px 5px 0;
}
.comments .comments-content .comment-thread {
	margin: 0;
	padding: 0
}
.comments .comments-content .inline-thread {
	padding: 0 0;
	margin: 0
}
.thread-count {
	font-size: 14px;
}
.comments .comments-content .icon.blog-author {
	width: auto !important;
	font-family: arial, sans-serif;
	font-size: 12px;
}
.comments .comments-content .icon.blog-author:after {
	content:" Admin ";
	padding: 3px 8px;
	color: #888;
	border: 1px solid #888;
	border-radius: 4px;
}
.comments .comment .comment-actions a {
	font-family: Arial, sans-serif;
	display: inline-block;
	color: #aaa;
	font-weight: bold;
	font-size: 12px;
	line-height: 15px;
	margin: 0 12px 0 0;
	padding: 0 0 0 0;
}
.comments .continue a {
	font-family: Arial, sans-serif;
	color: #aaa;
	display: inline-block;
	font-size: 12px;
	padding: 0 0 0 0;
}
.comments .comments-content .loadmore {
	margin-top: 1em;
	margin-bottom: 1em;
}
.comments .comments-content .loadmore a {
	font-family: Arial, sans-serif;
	display: block;
	padding: 10px 16px;
	text-align: center;
	font-weight: bold;
	background: #FFCC00;
	border: none;
	color: #ffffff;
	border-radius: 4px;
}
.comments .comment .comment-actions a:hover, .comments .continue a:hover, .comments .comments-content .loadmore a:hover {
	text-decoration: none;
	color: #E2B810;
}
span.deleted-comment {
	font-style: italic;
	font-size: 11px;
}

.comments .avatar-image-container img {
	width: 50px;
	max-width: 50px;
}
.comments .comments-content .datetime a {
	color: #9b9b9b;
}

/* MEDIA QUERY */
@media only screen and (max-width:1070px){
	#wrapper, #header-box, #footer-box {
		padding: 0 30px;
	}
}
@media only screen and (max-width:768px){
	#wrapper, #header-box, #footer-box {
		padding: 0 20px;
	}
	#header, .menu-navigasi {
		float: none;
		max-width: 768px;
		width: 100%;
		text-align: center;
		margin: 0 auto;
	}
	#posting, #sidebar {
		float: none;
		max-width: 768px;
		width: 100%;
	}
	.img-thumbnail {
		top: 20px;
		left: 20px;
	}
	.post, .breadcrumbs, #comments {
		padding: 20px;
	}
	.kotak-posting {
		margin: 0 0 0 0;
	}
	#content-wrapper {
		padding: 20px 0 0;
	}
	#navigation {
		display: none;
	}
	.menu-navigasi {
		max-width: 768px;
		width: 100%;
		margin-top: 15px;
	}
	.tinynav1 {
		display: block;
	}
}

@media only screen and (max-width:640px){
	#wrapper, #header-box, #footer-box {
		padding: 0 18px;
	}
	#footer-wrapper .footer-kiri, #footer-wrapper .footer-kanan {
		float: none;
		text-align: center;
	}
	#header-wrapper, #footer-wrapper {
		padding: 18px 0;
	}
	.post, #sidebar .widget-content, .breadcrumbs, #comments, .inline-ad {
		padding: 18px;
	}
	.img-thumbnail {
		top: 18px;
		left: 18px;
	}
	.img-thumbnail, .img-thumbnail img {
		width: 100px;
		height: 100px;
	}
	.post-box {
		margin-left: 133px;
	}
	#sidebar h2, #bawah-header h2, #atas-footer h2 {
		padding: 18px 18px 0px;
	}
	#bawah-header .widget {
		margin-top: 18px;
	}
	#sidebar .widget-content, #atas-footer .widget, .post, .breadcrumbs  {
		margin-bottom: 18px;
	}
	#content-wrapper {
		padding: 18px 0 0;
	}
	.kotak-posting {
		margin: 0 0 0 0;
	}
	.ad-post {
		float: none;
		margin: 0 auto 18px;
	}
}

@media only screen and (max-width:480px){
	#wrapper, #header-box, #footer-box {
		padding: 0 14px;
	}
	#footer-wrapper .footer-kiri, #footer-wrapper .footer-kanan {
		float: none;
		text-align: center;
	}
	#header-wrapper, #footer-wrapper {
		padding: 14px 0;
	}
	.post, #sidebar .widget-content, .breadcrumbs, #comments, .inline-ad {
		padding: 14px;
	}
	.img-thumbnail {
		top: 14px;
		left: 14px;
	}
	.img-thumbnail, .img-thumbnail img {
		width: 80px;
		height: 80px;
	}
	.post-box {
		margin-top: 110px;
		margin-left: 0;
	}
	#sidebar h2, #bawah-header h2, #atas-footer h2 {
		padding: 14px 14px 0px;
	}
	#bawah-header .widget {
		margin-top: 14px;
	}
	#sidebar .widget-content, #atas-footer .widget, .post, .breadcrumbs {
		margin-bottom: 14px;
	}
	#content-wrapper {
		padding: 14px 0 0;
	}
	.kotak-posting {
		margin: 0 0 0 0;
	}
}

@media screen and (max-width:320px){
	#wrapper, #header-box, #footer-box {
		padding: 0 8px;
	}
	#header-wrapper, #footer-wrapper {
		padding: 10px 0;
	}
	.post, #sidebar .widget-content, .breadcrumbs, #comments, .inline-ad {
		padding: 10px;
	}
	.img-thumbnail {
		top: 10px;
		left: 10px;
	}
	#sidebar h2, #bawah-header h2, #atas-footer h2 {
		padding: 10px 10px 0px;
	}
	#bawah-header .widget {
		margin-top: 10px;
	}
	#sidebar .widget-content, #atas-footer .widget, .post, .breadcrumbs {
		margin-bottom: 10px;
	}
	#content-wrapper {
		padding: 10px 0 0;
	}
	.kotak-posting {
		margin: 0 0 0 0;
	}
}

]]></b:skin>
<b:template-skin>
<![CDATA[

/* CSS TATA LETAK */

body#layout div.section { 
	background: transparent;
	margin: 0px 0px 15px 0px;
	padding: 0px;
	border: none;
	box-sizing: border-box;
}
body#layout .section h4 {
	display: none;
}

body#layout #wrapper, body#layout #header-box {
	padding: 0 20px;
}
body#layout #header-wrapper, body#layout #content-wrapper {
	padding: 0 0 0 0;
}

body#layout #sidebar .widget-content {
	margin-bottom: 0;
}
body#layout .widget-content {
	margin-top: 0;
}

]]></b:template-skin>
<b:if cond="data:blog.searchLabel">
<style>
.status-msg-wrap { display: none; }
</style>
</b:if>
<b:if cond='data:blog.pageType == "item"'>
<script>
//<![CDATA[
var relatedTitles=new Array();var relatedTitlesNum=0;var relatedUrls=new Array();function related_results_labels(json){for(var i=0;i<json.feed.entry.length;i++){var entry=json.feed.entry[i];relatedTitles[relatedTitlesNum]=entry.title.$t;for(var k=0;k<entry.link.length;k++){if(entry.link[k].rel=='alternate'){relatedUrls[relatedTitlesNum]=entry.link[k].href;relatedTitlesNum++;break;}}}}
function removeRelatedDuplicates(){var tmp=new Array(0);var tmp2=new Array(0);for(var i=0;i<relatedUrls.length;i++){if(!contains(tmp,relatedUrls[i])){tmp.length+=1;tmp[tmp.length-1]=relatedUrls[i];tmp2.length+=1;tmp2[tmp2.length-1]=relatedTitles[i];}}
relatedTitles=tmp2;relatedUrls=tmp;} function contains(a,e){for(var j=0;j<a.length;j++)if(a[j]==e)return true;return false;}
function printRelatedLabels(){var r=Math.floor((relatedTitles.length-1)*Math.random());var i=0;document.write('<ul>');while(i<relatedTitles.length&&i<20){document.write('<li><a href="'+relatedUrls[r]+'">'+relatedTitles[r]+'</a></li>');if(r<relatedTitles.length-1){r++;}else{r=0;}
i++;}
document.write('</ul>');document.write();}//]]>
</script>
</b:if>
<!-- JAVASCRIPT MENU NAVIGASI DROPDOWN -->
<script>
$(function () {
  // TinyNav.js 1
  $(&#39;#navigation&#39;).tinyNav({
	active: &#39;active&#39;,
	header: &#39;Menu&#39;
  });
});
</script>
<script type="text/javascript">
//<![CDATA[
function bp_thumbnail_resize(t,e){var i=130,a=130;return image_tag='<img width="'+i+'" height="'+a+'" src="'+t.replace("/s72-c/","/w"+i+"-h"+a+"-c/")+'" alt="'+e+'" title="'+e+'"/>',""!=t?image_tag:""}
//]]>
</script>
</head>
<body expr:class='"loading" + data:blog.mobileClass'>
<div id="fb-root"></div>
<b:section class="navbar" id="navbar" maxwidgets="1" showaddelement="no">
<b:widget id="Navbar1" locked="false" title="Navbar" type="Navbar" version="1">
<b:includable id="main">&lt;script type="text/javascript"&gt;
    function setAttributeOnload(object, attribute, val) {
      if(window.addEventListener) {
        window.addEventListener('load',
          function(){ object[attribute] = val; }, false);
      } else {
        window.attachEvent('onload', function(){ object[attribute] = val; });
      }
    }
  &lt;/script&gt;
&lt;div id="navbar-iframe-container"&gt;&lt;/div&gt;
&lt;script type="text/javascript" src="https://apis.google.com/js/plusone.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript"&gt;
      gapi.load("gapi.iframes:gapi.iframes.style.bubble", function() {
        if (gapi.iframes &amp;&amp; gapi.iframes.getContext) {
          gapi.iframes.getContext().openChild({
              url: 'https://www.blogger.com/navbar.g?targetBlogID\x3d4025507024411177074\x26blogName\x3dTerry+Chan\x27s+Blog\x26publishMode\x3dPUBLISH_MODE_BLOGSPOT\x26navbarType\x3dLIGHT\x26layoutType\x3dLAYOUTS\x26searchRoot\x3dhttps://terry-chen.blogspot.com/search\x26blogLocale\x3dzh_CN\x26v\x3d2\x26homepageUrl\x3dhttps://terry-chen.blogspot.com/\x26readAccessMode\x3dPRIVATE\x26vt\x3d6555975751364767086',
              where: document.getElementById("navbar-iframe-container"),
              id: "navbar-iframe"
          });
        }
      });
    &lt;/script&gt;&lt;script type="text/javascript"&gt;
(function() {
var script = document.createElement('script');
script.type = 'text/javascript';
script.src = '//pagead2.googlesyndication.com/pagead/js/google_top_exp.js';
var head = document.getElementsByTagName('head')[0];
if (head) {
head.appendChild(script);
}})();
&lt;/script&gt;
</b:includable>
</b:widget>
</b:section>
<!-- header wrapper start -->
<header id="header-wrapper">
<div id="header-box">
<b:section class="header" id="header" maxwidgets="1" showaddelement="no">
<b:widget id="Header1" locked="true" title="Terry Chan's Blog (标题)" type="Header" version="1">
<b:widget-settings>
<b:widget-setting name="displayUrl"></b:widget-setting>
<b:widget-setting name="displayHeight">0</b:widget-setting>
<b:widget-setting name="sectionWidth">-1</b:widget-setting>
<b:widget-setting name="useImage">false</b:widget-setting>
<b:widget-setting name="shrinkToFit">false</b:widget-setting>
<b:widget-setting name="imagePlacement">BEHIND</b:widget-setting>
<b:widget-setting name="displayWidth">0</b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<b:if cond="data:useImage">
<b:if cond='data:imagePlacement == "BEHIND"'>
<!--
      Show image as background to text. You can't really calculate the width
      reliably in JS because margins are not taken into account by any of
      clientWidth, offsetWidth or scrollWidth, so we don't force a minimum
      width if the user is using shrink to fit.
      This results in a margin-width's worth of pixels being cropped. If the
      user is not using shrink to fit then we expand the header.
      -->
<b:if cond="data:mobile">
<div id="header-inner">
<div class="titlewrapper" style="background: transparent">
<h1 class="title" style="background: transparent; border-width: 0px">
<b:include name="title"></b:include>
</h1>
</div>
<b:include name="description"></b:include>
</div>
<b:else></b:else>
<div expr:style='"background-image: url(\"" + data:sourceUrl + "\"); "                        + "background-position: "                        + data:backgroundPositionStyleStr + "; "                        + data:widthStyleStr                        + "min-height: " + data:height                        + "_height: " + data:height                        + "background-repeat: no-repeat; "' id="header-inner">
<div class="titlewrapper" style="background: transparent">
<h1 class="title" style="background: transparent; border-width: 0px">
<b:include name="title"></b:include>
</h1>
</div>
<b:include name="description"></b:include>
</div>
</b:if>
<b:else></b:else>
<!--Show the image only-->
<div id="header-inner">
<b:if cond='data:blog.pageType in {"item","static_page"}'>
<p style="text-indent:-9999px;margin:0 0 0 0;padding:0 0 0 0;height:0px;"><b:include name="title"></b:include></p>
<b:else></b:else>
<h1 style="text-indent:-9999px;margin:0 0 0 0;padding:0 0 0 0;height:0px;"><b:include name="title"></b:include></h1>
</b:if>
<a expr:href="data:blog.homepageUrl" style="display: block">
<img expr:alt="data:title" expr:height="data:height" expr:id='data:widget.instanceId + "_headerimg"' expr:src="data:sourceUrl" expr:width="data:width" style="display: block"/>
</a>
<!--Show the description-->
<b:if cond='data:imagePlacement == "BEFORE_DESCRIPTION"'>
<b:include name="description"></b:include>
<b:if cond='data:blog.pageType in {"item","static_page"}'>
<p style="text-indent:-9999px;margin:0 0 0 0;padding:0 0 0 0;height:0px;"><b:include name="title"></b:include></p>
<b:else></b:else>
<h1 style="text-indent:-9999px;margin:0 0 0 0;padding:0 0 0 0;height:0px;"><b:include name="title"></b:include></h1>
</b:if>
</b:if>
</div>
</b:if>
<b:else></b:else>
<!--No header image -->
<div id="header-inner">
<div class="titlewrapper">
<b:if cond='data:blog.pageType in {"item","static_page"}'>
<p class="title"><b:include name="title"></b:include></p>
<b:else></b:else>
<h1 class="title"><b:include name="title"></b:include></h1>
</b:if>
<b:include name="description"></b:include>
</div>
</div>
</b:if>
</b:includable>
<b:includable id="description">
<div class="descriptionwrapper">
<p class="description"><span><data:description></data:description></span></p>
</div>
</b:includable>
<b:includable id="title">
<b:if cond="data:blog.url == data:blog.homepageUrl">
<data:title></data:title>
<b:else></b:else>
<a expr:href="data:blog.homepageUrl"><data:title></data:title></a>
</b:if>
</b:includable>
</b:widget>
</b:section>
<!-- MENU NAVIGASI BAGIAN ATAS -->
<b:section class="menu-navigasi" id="menu-navigasi" maxwidgets="1" showaddelement="no">
<b:widget id="PageList1" locked="false" title="Pages" type="PageList" version="1">
<b:widget-settings>
<b:widget-setting name="pageListJson"><![CDATA[{'home': {'href': 'http://www.terrychan.org/', 'title': '主页', 'position': 0}}]]></b:widget-setting>
<b:widget-setting name="homeTitle">主页</b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<b:if cond='data:title != ""'><h2 style="display:none;"><data:title></data:title></h2></b:if>
<div class="widget-content">
<b:if cond="data:mobile">
<select expr:id='data:widget.instanceId + "_select"'>
<b:loop values="data:links" var="link">
<b:if cond="data:link.isCurrentPage">
<option expr:value="data:link.href" selected="selected"><data:link.title></data:link.title></option>
<b:else></b:else>
<option expr:value="data:link.href"><data:link.title></data:link.title></option>
</b:if>
</b:loop>
</select>
<span class="pagelist-arrow">&amp;#9660;</span>
<b:else></b:else>
<nav>
<ul id="navigation">
<b:loop values="data:links" var="link">
<b:if cond="data:link.isCurrentPage">
<li class="active"><a expr:href="data:link.href"><data:link.title></data:link.title></a></li>
<b:else></b:else>
<li><a expr:href="data:link.href"><data:link.title></data:link.title></a></li>
</b:if>
</b:loop>
</ul>
</nav>
</b:if>
</div>
</b:includable>
</b:widget>
</b:section>
</div>
</header>
<div class="clear"></div>
<!-- kepala ditutup -->
<!-- wrapper dibuka -->
<div id="wrapper">
<b:section class="bawah-header" id="bawah-header" showaddelement="yes"></b:section>
<div class="clear"></div>
<!-- kotak-kontent dibuka -->
<div id="content-wrapper">
<!-- kotak-posting dibuka -->
<div id="posting">
<b:section class="kotak-posting" id="main" showaddelement="no">
<b:widget id="Blog1" locked="true" title="博文" type="Blog" version="1">
<b:widget-settings>
<b:widget-setting name="showDateHeader">true</b:widget-setting>
<b:widget-setting name="style.textcolor">#000000</b:widget-setting>
<b:widget-setting name="showShareButtons">false</b:widget-setting>
<b:widget-setting name="showCommentLink">false</b:widget-setting>
<b:widget-setting name="style.urlcolor">#008000</b:widget-setting>
<b:widget-setting name="showAuthor">false</b:widget-setting>
<b:widget-setting name="disableGooglePlusShare">true</b:widget-setting>
<b:widget-setting name="style.linkcolor">#0000ff</b:widget-setting>
<b:widget-setting name="style.unittype">TextAndImage</b:widget-setting>
<b:widget-setting name="style.bgcolor">#ffffff</b:widget-setting>
<b:widget-setting name="showAuthorProfile">true</b:widget-setting>
<b:widget-setting name="style.layout">1x1</b:widget-setting>
<b:widget-setting name="showLabels">true</b:widget-setting>
<b:widget-setting name="showLocation">false</b:widget-setting>
<b:widget-setting name="showTimestamp">false</b:widget-setting>
<b:widget-setting name="postsPerAd">1</b:widget-setting>
<b:widget-setting name="showBacklinks">false</b:widget-setting>
<b:widget-setting name="style.bordercolor">#ffffff</b:widget-setting>
<b:widget-setting name="showInlineAds">false</b:widget-setting>
<b:widget-setting name="showReactions">true</b:widget-setting>
</b:widget-settings>
<b:includable id="main" var="top">
<b:include data="posts" name="breadcrumb"></b:include>
<b:if cond='data:mobile == "false"'>
<!-- posts -->
<div class="blog-posts hfeed">
<b:include data="top" name="status-message"></b:include>
<data:defaultadstart></data:defaultadstart>
<b:loop values="data:posts" var="post">
<b:if cond="data:post.isDateStart">
<b:if cond='data:post.isFirstPost == "false"'>
            &lt;/div&gt;&lt;/div&gt;
          </b:if>
</b:if>
<b:if cond="data:post.isDateStart">
          &lt;div class="date-outer"&gt;
        </b:if>
<b:if cond="data:post.isDateStart">
          &lt;div class="date-posts"&gt;
        </b:if>
<div class="post-outer">
<b:include data="post" name="post"></b:include>
<b:if cond='data:blog.pageType == "static_page"'>
<b:if cond="data:post.showThreadedComments">
<b:include data="post" name="threaded_comments"></b:include>
<b:else></b:else>
<b:include data="post" name="comments"></b:include>
</b:if>
</b:if>
<b:if cond='data:blog.pageType == "item"'>
<b:if cond="data:post.showThreadedComments">
<b:include data="post" name="threaded_comments"></b:include>
<b:else></b:else>
<b:include data="post" name="comments"></b:include>
</b:if>
</b:if>
</div>
<b:if cond="data:post.includeAd">
<b:if cond="data:post.isFirstPost">
<data:defaultadend></data:defaultadend>
<b:else></b:else>
<data:adend></data:adend>
</b:if>
<div class="inline-ad">
<data:adcode></data:adcode>
</div>
<data:adstart></data:adstart>
</b:if>
</b:loop>
<b:if cond="data:numPosts != 0">
        &lt;/div&gt;&lt;/div&gt;
      </b:if>
<data:adend></data:adend>
</div>
<!-- navigation -->
<b:include name="nextprev"></b:include>
<!-- feed links -->
<b:include name="feedLinks"></b:include>
<b:if cond="data:top.showStars">
<script src="//www.google.com/jsapi" type="text/javascript"></script>
<script type="text/javascript">
        google.load(&quot;annotations&quot;, &quot;1&quot;, {&quot;locale&quot;: &quot;<data:top.languageCode/>&quot;});
        function initialize() {
          google.annotations.setApplicationId(<data:top.blogspotReviews/>);
          google.annotations.createAll();
          google.annotations.fetch();
        }
        google.setOnLoadCallback(initialize);
      </script>
</b:if>
<b:else></b:else>
<b:include name="mobile-main"></b:include>
</b:if>
<b:if cond="data:top.showDummy">
<data:top.dummybootstrap></data:top.dummybootstrap>
</b:if>
</b:includable>
<b:includable id="backlinkDeleteIcon" var="backlink">
<span expr:class='"item-control " + data:backlink.adminClass'>
<a expr:href="data:backlink.deleteUrl" expr:title="data:top.deleteBacklinkMsg">
<img src="//www.blogger.com/img/icon_delete13.gif"/>
</a>
</span>
</b:includable>
<b:includable id="backlinks" var="post">
<a name="links"></a><h4><data:post.backlinkslabel></data:post.backlinkslabel></h4>
<b:if cond="data:post.numBacklinks != 0">
<dl class="comments-block" id="comments-block">
<b:loop values="data:post.backlinks" var="backlink">
<div class="collapsed-backlink backlink-control">
<dt class="comment-title">
<span class="backlink-toggle-zippy">&nbsp;</span>
<a expr:href="data:backlink.url" rel="nofollow"><data:backlink.title></data:backlink.title></a>
<b:include data="backlink" name="backlinkDeleteIcon"></b:include>
</dt>
<dd class="comment-body collapseable">
<data:backlink.snippet></data:backlink.snippet>
</dd>
<dd class="comment-footer collapseable">
<span class="comment-author"><data:post.authorlabel></data:post.authorlabel> <data:backlink.author></data:backlink.author></span>
<span class="comment-timestamp"><data:post.timestamplabel></data:post.timestamplabel> <data:backlink.timestamp></data:backlink.timestamp></span>
</dd>
</div>
</b:loop>
</dl>
</b:if>
<p class="comment-footer">
<a class="comment-link" expr:href="data:post.createLinkUrl" expr:id='data:widget.instanceId + "_backlinks-create-link"' target="_blank"><data:post.createlinklabel></data:post.createlinklabel></a>
</p>
</b:includable>
<b:includable id="breadcrumb" var="posts"> <b:if cond="data:blog.homepageUrl != data:blog.url">
<b:if cond='data:blog.pageType == "static_page"'> <div class="breadcrumbs"><span><a expr:href="data:blog.homepageUrl" rel="nofollow">首页</a></span> » <span><data:blog.pagename></data:blog.pagename></span></div>
<b:else></b:else>
<b:if cond='data:blog.pageType == "item"'> <b:loop values="data:posts" var="post">
<b:if cond="data:post.labels">
<div class="breadcrumbs"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a expr:href="data:blog.homepageUrl" itemprop="url"><span itemprop="title">Beranda</span></a></span> » <b:loop values="data:post.labels" var="label"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a expr:href='data:label.url + "?&amp;max-results=8"' itemprop="url"><span itemprop="title"><data:label.name></data:label.name></span></a></span><b:if cond='data:label.isLast != "true"'> » </b:if> </b:loop>
</div>
<b:else></b:else>
<div class="breadcrumbs"><span><a expr:href="data:blog.homepageUrl" rel="nofollow">Beranda</a></span> » <span>Tanpa Kategori</span> » <span><data:post.title></data:post.title></span></div> </b:if>
</b:loop>
<b:else></b:else>
<b:if cond='data:blog.pageType == "archive"'><div class="breadcrumbs"> <span><a expr:href="data:blog.homepageUrl" rel="nofollow">Beranda</a></span> » <span>Arsip untuk <data:blog.pagename></data:blog.pagename></span> </div> <b:else></b:else>
<b:if cond="data:blog.searchQuery"><div class="breadcrumbs"><span><a expr:href="data:blog.homepageUrl" rel="nofollow">Beranda</a></span> » <span><data:blog.pagename></data:blog.pagename></span></div>
<b:else></b:else>
<b:if cond='data:blog.pageType == "index"'> <div class="breadcrumbs"> <b:if cond='data:blog.pageName == ""'> <span><a expr:href="data:blog.homepageUrl" rel="nofollow">Beranda</a></span> » <span>Semua Posting</span>
<b:else></b:else>
<span><a expr:href="data:blog.homepageUrl" rel="nofollow">Beranda</a></span> » <span><data:blog.pagename></data:blog.pagename></span> </b:if>
</div>
</b:if>
</b:if>
</b:if>
</b:if>
</b:if>
</b:if>
</b:includable>
<b:includable id="comment-form" var="post">
<div class="comment-form">
<a name="comment-form"></a>
<b:if cond="data:mobile">
<h4 id="comment-post-message">
<a expr:id='data:widget.instanceId + "_comment-editor-toggle-link"' href="javascript:void(0)"><data:postcommentmsg></data:postcommentmsg></a></h4>
<p><data:blogcommentmessage></data:blogcommentmessage></p>
<data:blogteamblogmessage></data:blogteamblogmessage>
<a expr:href="data:post.commentFormIframeSrc" id="comment-editor-src"></a>
<iframe allowtransparency="true" class="blogger-iframe-colorize blogger-comment-from-post" frameborder="0" height="410" id="comment-editor" name="comment-editor" src="" style="display: block !important;" width="100%"></iframe>
<b:else></b:else>
<h4 id="comment-post-message"><data:postcommentmsg></data:postcommentmsg></h4>
<p><data:blogcommentmessage></data:blogcommentmessage></p>
<data:blogteamblogmessage></data:blogteamblogmessage>
<a expr:href="data:post.commentFormIframeSrc" id="comment-editor-src"></a>
<iframe allowtransparency="true" class="blogger-iframe-colorize blogger-comment-from-post" frameborder="0" height="410" id="comment-editor" name="comment-editor" src="" width="100%"></iframe>
</b:if>
<data:post.friendconnectjs></data:post.friendconnectjs>
<data:post.cmtfpiframe></data:post.cmtfpiframe>
<script type="text/javascript">
      BLOG_CMT_createIframe(&#39;<data:post.appRpcRelayPath/>&#39;, &#39;<data:post.communityId/>&#39;);
    </script>
</div>
</b:includable>
<b:includable id="commentDeleteIcon" var="comment">
<span expr:class='"item-control " + data:comment.adminClass'>
<b:if cond="data:showCmtPopup">
<div class="goog-toggle-button">
<div class="goog-inline-block comment-action-icon"></div>
</div>
<b:else></b:else>
<a class="comment-delete" expr:href="data:comment.deleteUrl" expr:title="data:top.deleteCommentMsg">
<img src="//www.blogger.com/img/icon_delete13.gif"/>
</a>
</b:if>
</span>
</b:includable>
<b:includable id="comment_count_picker" var="post">
<b:if cond="data:post.commentSource == 1">
<span class="cmt_count_iframe_holder" expr:data-count="data:post.numComments" expr:data-onclick="data:post.addCommentOnclick" expr:data-post-url="data:post.url" expr:data-url="data:post.canonicalUrl">
</span>
<b:else></b:else>
<a class="comment-link" expr:href="data:post.addCommentUrl" expr:onclick="data:post.addCommentOnclick">
<data:post.commentlabelfull></data:post.commentlabelfull>:
    </a>
</b:if>
</b:includable>
<b:includable id="comment_picker" var="post">
<b:if cond="data:post.forceIframeComments">
<data:post.iframemessage></data:post.iframemessage>
<b:include data="post" name="iframe_comments"></b:include>
<data:post.iframemessage></data:post.iframemessage>
<b:if cond="data:post.showThreadedComments">
<b:include data="post" name="threaded_comments"></b:include>
<b:else></b:else>
<b:include data="post" name="comments"></b:include>
</b:if>
<b:else></b:else>
<b:if cond="data:post.commentSource == 1">
<b:include data="post" name="iframe_comments"></b:include>
<b:else></b:else>
<b:if cond="data:post.showThreadedComments">
<b:include data="post" name="threaded_comments"></b:include>
<b:else></b:else>
<b:include data="post" name="comments"></b:include>
</b:if>
</b:if>
</b:if>
</b:includable>
<b:includable id="comments" var="post">
<!-- UY BEGIN -->
<div id="uyan_frame"></div>
<script src="http://v2.uyan.cc/code/uyan.js" type="text/javascript"></script>
<!-- UY END -->
</b:includable>
<b:includable id="feedLinks">
<b:if cond='data:blog.pageType != "item"'> <!-- Blog feed links -->
<b:if cond="data:feedLinks">
<div class="blog-feeds">
<b:include data="feedLinks" name="feedLinksBody"></b:include>
</div>
</b:if>
<b:else></b:else> <!--Post feed links -->
<div class="post-feeds">
<b:loop values="data:posts" var="post">
<b:include cond="data:post.allowComments and data:post.feedLinks" data="post.feedLinks" name="feedLinksBody"></b:include>
</b:loop>
</div>
</b:if>
</b:includable>
<b:includable id="feedLinksBody" var="links">
<div class="feed-links">
<data:feedlinksmsg></data:feedlinksmsg>
<b:loop values="data:links" var="f">
<a class="feed-link" expr:href="data:f.url" expr:type="data:f.mimeType" target="_blank"><data:f.name></data:f.name> (<data:f.feedtype></data:f.feedtype>)</a>
</b:loop>
</div>
</b:includable>
<b:includable id="iframe_comments" var="post">
<b:if cond="data:post.allowIframeComments">
<script expr:src="data:post.commentSrc" type="text/javascript"></script>
<div class="cmt_iframe_holder"></div>
<b:if cond='data:post.embedCommentForm == "false"'>
<a expr:href="data:post.addCommentUrl" expr:onclick="data:post.addCommentOnclick"><data:postcommentmsg></data:postcommentmsg></a>
</b:if>
</b:if>
</b:includable>
<b:includable id="mobile-index-post" var="post">
</b:includable>
<b:includable id="mobile-main" var="top">
<!-- posts -->
<div class="blog-posts hfeed">
<b:include data="top" name="status-message"></b:include>
<b:if cond='data:blog.pageType == "index"'>
<b:loop values="data:posts" var="post">
<b:include data="post" name="mobile-index-post"></b:include>
</b:loop>
<b:else></b:else>
<b:loop values="data:posts" var="post">
<b:include data="post" name="mobile-post"></b:include>
</b:loop>
</b:if>
</div>
<b:include name="mobile-nextprev"></b:include>
</b:includable>
<b:includable id="mobile-nextprev">
</b:includable>
<b:includable id="mobile-post" var="post">
</b:includable>
<b:includable id="nextprev">
<div class="blog-pager" id="blog-pager">
<b:if cond="data:newerPageUrl">
<span id="blog-pager-newer-link">
<a class="blog-pager-newer-link" expr:href="data:newerPageUrl" expr:id='data:widget.instanceId + "_blog-pager-newer-link"' expr:title="data:newerPageTitle">← <data:newerpagetitle></data:newerpagetitle></a>
</span>
</b:if>
<b:if cond="data:olderPageUrl">
<span id="blog-pager-older-link">
<a class="blog-pager-older-link" expr:href="data:olderPageUrl" expr:id='data:widget.instanceId + "_blog-pager-older-link"' expr:title="data:olderPageTitle"><data:olderpagetitle></data:olderpagetitle> →</a>
</span>
</b:if>
<a class="home-link" expr:href="data:blog.homepageUrl"><data:homemsg></data:homemsg></a>
<b:if cond="data:mobileLinkUrl">
<div class="blog-mobile-link">
<a expr:href="data:mobileLinkUrl"><data:mobilelinkmsg></data:mobilelinkmsg></a>
</div>
</b:if>
</div>
<div class="clear"></div>
</b:includable>
<b:includable id="post" var="post">
<article class="post hentry">
<b:switch var="data:blog.pageType">
<b:case value="static_page"></b:case>
<!-- Posting halaman statis -->
<div>
<b:if cond="data:post.title">
<h1 class="post-title entry-title">
<b:if cond="data:post.link">
<a expr:href="data:post.link"><data:post.title></data:post.title></a>
<b:else></b:else>
<b:if cond="data:post.url">
<b:if cond="data:blog.url != data:post.url">
<a expr:href="data:post.url"><data:post.title></data:post.title></a>
<b:else></b:else>
<data:post.title></data:post.title>
</b:if>
<b:else></b:else>
<data:post.title></data:post.title>
</b:if>
</b:if>
</h1>
</b:if>
<div class="post-body entry-content" expr:id='"post-body-" + data:post.id'>
<data:post.body></data:post.body>
<div style="clear: both;"></div>
</div>
</div>
<b:case value="item"></b:case>
<!-- Posting halaman item -->
<div itemprop="blogPost" itemscope="itemscope" itemtype="http://schema.org/BlogPosting">
<b:if cond="data:post.firstImageUrl">
<meta expr:content="data:post.firstImageUrl" itemprop="image"/>
</b:if>
<a expr:name="data:post.id"></a>
<b:if cond="data:post.title">
<h1 class="post-title entry-title" itemprop="name headline">
<b:if cond="data:post.link">
<a expr:href="data:post.link"><data:post.title></data:post.title></a>
<b:else></b:else>
<b:if cond="data:post.url">
<b:if cond="data:blog.url != data:post.url">
<a expr:href="data:post.url"><data:post.title></data:post.title></a>
<b:else></b:else>
<data:post.title></data:post.title>
</b:if>
<b:else></b:else>
<data:post.title></data:post.title>
</b:if>
</b:if>
</h1>
</b:if>
<div class="post-body entry-content" expr:id='"post-body-" + data:post.id' itemprop="description articleBody">
<!-- iklan di bawah judul taruh di sini -->
<data:post.body></data:post.body>
<!-- iklan di bawah postingan taruh di sini -->
<div style="clear: both;"></div>
<!-- Tombol share media sosial -->
<div style="clear: both;"></div>
<!-- kotak profil di bawah postingan -->
<b:if cond="data:post.authorAboutMe">
<div class="author-profile" itemprop="author" itemscope="itemscope" itemtype="http://schema.org/Person">
<b:if cond="data:post.authorPhoto.url">
<img expr:src="data:post.authorPhoto.url" itemprop="image" width="90px"/>
</b:if>
<div>
<a class="g-profile" expr:href="data:post.authorProfileUrl" itemprop="url" rel="author" title="author profile">
<span itemprop="name"><data:post.author></data:post.author></span>
</a>
</div>
<span itemprop="description"><data:post.authoraboutme></data:post.authoraboutme></span>
</div>
</b:if>
<!-- Related posts di bawah postingan -->
<div id="related-post-desktop">
<h3>Postingan terkait:</h3>
<b:loop values="data:post.labels" var="label"> <b:if cond='data:label.isLast != "true"'></b:if> <b:if cond='data:blog.pageType == "item"'> <script expr:src='"/feeds/posts/default/-/" + data:label.name + "?alt=json-in-script&amp;callback=related_results_labels&amp;max-results=5"' type="text/javascript"></script></b:if> </b:loop> <script type="text/javascript"> removeRelatedDuplicates(); printRelatedLabels(); </script>
</div>
<div class="item-post-footer">
<b:if cond="data:top.showAuthor">
<b:if cond="data:post.authorProfileUrl">
<span class="vcard">
<span class="fn" itemprop="author" itemscope="itemscope" itemtype="http://schema.org/Person">
<meta expr:content="data:post.authorProfileUrl" itemprop="url"/>
                Ditulis <a class="g-profile" expr:href="data:post.authorProfileUrl" rel="author" title="author profile">
<span itemprop="name"><data:post.author></data:post.author></span>
</a>
</span>
</span>
<b:else></b:else>
<span class="vcard">
<span class="fn" itemprop="author" itemscope="itemscope" itemtype="http://schema.org/Person">
                Ditulis <span itemprop="name"><data:post.author></data:post.author></span>
</span>
</span>
</b:if>
</b:if>
<b:if cond="data:post.dateHeader">
		     — <abbr class="updated published" expr:title="data:post.timestampISO8601" itemprop="datePublished" style="text-decoration:none;border-bottom:none;">
<data:post.dateheader></data:post.dateheader>
</abbr>
<b:else></b:else>
<b:if cond="data:top.showTimestamp">
		     — <abbr class="updated published" expr:title="data:post.timestampISO8601" itemprop="datePublished" style="text-decoration:none;border-bottom:none;">
<data:post.timestamp></data:post.timestamp>
</abbr>
</b:if>
</b:if>
<b:if cond="data:post.allowComments"> 
		      — <a expr:onclick="data:post.addCommentOnclick" href="#comments"> <b:if cond="data:post.numComments == 0"> Add Comment </b:if> <b:if cond="data:post.numComments == 1"> 1 Comment </b:if> <b:if cond="data:post.numComments &gt; 1"> <data:post.numcomments></data:post.numcomments> Comments </b:if>
</a>
</b:if>
<b:if cond="data:post.labels">	                      
			  — <b:loop values="data:post.labels" var="label">
<a expr:href="data:label.url" rel="tag"><data:label.name></data:label.name></a><b:if cond="not data:label.isLast">,</b:if>
</b:loop>
</b:if>
<b:include data="post" name="postQuickEdit"></b:include>
</div>
<div style="clear: both;"></div>
</div>
</div>
<b:default></b:default>
<!-- Posting halaman default (index, arsip, dll.) -->
<b:if cond="data:post.thumbnailUrl">
<!--	<a expr:href='data:post.url'><div class='img-thumbnail'><span class='rollover'/><script type='text/javascript'>
		document.write(bp_thumbnail_resize(&quot;<data:post.thumbnailUrl/>&quot;,&quot;<data:post.title/>&quot;));
		</script></div>
		</a> -->
<b:else></b:else>
<!--	<b:if cond='data:post.firstImageUrl'>
		<a expr:href='data:post.url'><div class='img-thumbnail'><span class='rollover'/><img expr:alt='data:post.title' expr:src='data:post.firstImageUrl' expr:title='data:post.title'/></div>
		</a>-->
<b:else></b:else>
<!--	<a expr:href='data:post.url'><div class='img-thumbnail'><span class='rollover'/><img expr:alt='data:post.title' expr:title='data:post.title' src='http://3.bp.blogspot.com/-ltyYh4ysBHI/U04MKlHc6pI/AAAAAAAADQo/PFxXaGZu9PQ/w130-h130-c/no-image.png'/></div>
		</a>
-->
</b:if>
<div class="post-box-v1" itemprop="blogPost" itemscope="itemscope" itemtype="http://schema.org/BlogPosting">
<b:if cond="data:post.firstImageUrl">
<meta expr:content="data:post.firstImageUrl" itemprop="image"/>
</b:if>
<a expr:name="data:post.id"></a>
<b:if cond="data:post.title">
<h2 class="post-title entry-title" itemprop="name headline">
<b:if cond="data:post.link">
<a expr:href="data:post.link"><data:post.title></data:post.title></a>
<b:else></b:else>
<b:if cond="data:post.url">
<b:if cond="data:blog.url != data:post.url">
<a expr:href="data:post.url"><data:post.title></data:post.title></a>
<b:else></b:else>
<data:post.title></data:post.title>
</b:if>
<b:else></b:else>
<data:post.title></data:post.title>
</b:if>
</b:if>
</h2>
</b:if>
<div class="post-body entry-content" expr:id='"post-body-" + data:post.id' itemprop="articleBody description">
<div expr:id='"summary" + data:post.id'>
<data:post.snippet></data:post.snippet>
</div>
</div>
<div class="post-footer">
<b:if cond="data:top.showAuthor">
<b:if cond="data:post.authorProfileUrl">
<span class="vcard">
<span class="fn" itemprop="author" itemscope="itemscope" itemtype="http://schema.org/Person">
<meta expr:content="data:post.authorProfileUrl" itemprop="url"/>
                Ditulis <a class="g-profile" expr:href="data:post.authorProfileUrl" rel="author" title="author profile">
<span itemprop="name"><data:post.author></data:post.author></span>
</a>
</span>
</span>
<b:else></b:else>
<span class="vcard">
<span class="fn" itemprop="author" itemscope="itemscope" itemtype="http://schema.org/Person">
                Ditulis <span itemprop="name"><data:post.author></data:post.author></span>
</span>
</span>
</b:if>
</b:if>
<b:if cond="data:post.dateHeader">
		     — <abbr class="updated published" expr:title="data:post.timestampISO8601" itemprop="datePublished" style="text-decoration:none;border-bottom:none;">
<data:post.dateheader></data:post.dateheader>
</abbr>
<b:else></b:else>
<b:if cond="data:top.showTimestamp">
		     — <abbr class="updated published" expr:title="data:post.timestampISO8601" itemprop="datePublished" style="text-decoration:none;border-bottom:none;">
<data:post.timestamp></data:post.timestamp>
</abbr>
</b:if>
</b:if>
<b:if cond="data:post.allowComments"> 
		      — <a expr:href='data:post.url + "#comments"' expr:onclick="data:post.addCommentOnclick"> <b:if cond="data:post.numComments == 0"> Add Comment </b:if> <b:if cond="data:post.numComments == 1"> 1 Comment </b:if> <b:if cond="data:post.numComments &gt; 1"> <data:post.numcomments></data:post.numcomments> Comments </b:if>
</a>
</b:if>
<b:if cond="data:post.labels">	                      
			  — <b:loop values="data:post.labels" var="label">
<a expr:href="data:label.url" rel="tag"><data:label.name></data:label.name></a><b:if cond="not data:label.isLast">,</b:if>
</b:loop>
</b:if>
</div>
</div>
</b:switch>
</article>
</b:includable>
<b:includable id="postQuickEdit" var="post">
<b:if cond="data:post.editUrl">
<span expr:class='"item-control " + data:post.adminClass'>
<a expr:href="data:post.editUrl" expr:title="data:top.editPostMsg">
<img alt="Edit Post" class="icon-action" height="18" src="https://img2.blogblog.com/img/icon18_edit_allbkg.gif" width="18"/>
</a>
</span>
</b:if>
</b:includable>
<b:includable id="shareButtons" var="post">
<b:if cond="data:top.showEmailButton"><a class="goog-inline-block share-button sb-email" expr:href='data:post.sharePostUrl + "&amp;target=email"' expr:title="data:top.emailThisMsg" target="_blank"><span class="share-button-link-text"><data:top.emailthismsg></data:top.emailthismsg></span></a></b:if><b:if cond="data:top.showBlogThisButton"><a class="goog-inline-block share-button sb-blog" expr:href='data:post.sharePostUrl + "&amp;target=blog"' expr:onclick='"window.open(this.href, \"_blank\", \"height=270,width=475\"); return false;"' expr:title="data:top.blogThisMsg" target="_blank"><span class="share-button-link-text"><data:top.blogthismsg></data:top.blogthismsg></span></a></b:if><b:if cond="data:top.showTwitterButton"><a class="goog-inline-block share-button sb-twitter" expr:href='data:post.sharePostUrl + "&amp;target=twitter"' expr:title="data:top.shareToTwitterMsg" target="_blank"><span class="share-button-link-text"><data:top.sharetotwittermsg></data:top.sharetotwittermsg></span></a></b:if><b:if cond="data:top.showFacebookButton"><a class="goog-inline-block share-button sb-facebook" expr:href='data:post.sharePostUrl + "&amp;target=facebook"' expr:onclick='"window.open(this.href, \"_blank\", \"height=430,width=640\"); return false;"' expr:title="data:top.shareToFacebookMsg" target="_blank"><span class="share-button-link-text"><data:top.sharetofacebookmsg></data:top.sharetofacebookmsg></span></a></b:if><b:if cond="data:top.showOrkutButton"><a class="goog-inline-block share-button sb-orkut" expr:href='data:post.sharePostUrl + "&amp;target=orkut"' expr:title="data:top.shareToOrkutMsg" target="_blank"><span class="share-button-link-text"><data:top.sharetoorkutmsg></data:top.sharetoorkutmsg></span></a></b:if><b:if cond="data:top.showPinterestButton"><a class="goog-inline-block share-button sb-pinterest" expr:href='data:post.sharePostUrl + "&amp;target=pinterest"' expr:title="data:top.shareToPinterestMsg" target="_blank"><span class="share-button-link-text"><data:top.sharetopinterestmsg></data:top.sharetopinterestmsg></span></a></b:if><b:if cond="data:top.showDummy"><div class="goog-inline-block dummy-container"><data:post.dummytag></data:post.dummytag></div></b:if>
</b:includable>
<b:includable id="status-message">
<b:if cond="data:navMessage">
<div class="status-msg-wrap">
<div class="status-msg-body">
<data:navmessage></data:navmessage>
</div>
<div class="status-msg-border">
<div class="status-msg-bg">
<div class="status-msg-hidden"><data:navmessage></data:navmessage></div>
</div>
</div>
</div>
<div style="clear: both;"></div>
</b:if>
</b:includable>
<b:includable id="threaded-comment-form" var="post">
<div class="comment-form">
<a name="comment-form"></a>
<div id="form-wrapper">
<b:if cond="data:mobile">
<p><data:blogcommentmessage></data:blogcommentmessage></p>
<data:blogteamblogmessage></data:blogteamblogmessage>
<a expr:href="data:post.commentFormIframeSrc" id="comment-editor-src"></a>
<iframe allowtransparency="true" class="blogger-iframe-colorize blogger-comment-from-post" frameborder="0" height="410" id="comment-editor" name="comment-editor" src="" style="display: block !important;" width="100%"></iframe>
<b:else></b:else>
<p><data:blogcommentmessage></data:blogcommentmessage></p>
<data:blogteamblogmessage></data:blogteamblogmessage>
<a expr:href="data:post.commentFormIframeSrc" id="comment-editor-src"></a>
<iframe allowtransparency="true" class="blogger-iframe-colorize blogger-comment-from-post" frameborder="0" height="410" id="comment-editor" name="comment-editor" src="" width="100%"></iframe>
</b:if>
</div>
<data:post.friendconnectjs></data:post.friendconnectjs>
<data:post.cmtfpiframe></data:post.cmtfpiframe>
<script type="text/javascript">
      BLOG_CMT_createIframe(&#39;<data:post.appRpcRelayPath/>&#39;, &#39;<data:post.communityId/>&#39;);
    </script>
</div>
</b:includable>
<b:includable id="threaded_comment_js" var="post">
<script async="async" expr:src="data:post.commentSrc" type="text/javascript"></script>
<script type="text/javascript">
    (function() {
      var items = <data:post.commentJso/>;
      var msgs = <data:post.commentMsgs/>;
      var config = <data:post.commentConfig/>;

// <![CDATA[
      var cursor = null;
      if (items && items.length > 0) {
        cursor = parseInt(items[items.length - 1].timestamp) + 1;
      }

      var bodyFromEntry = function(entry) {
        if (entry.gd$extendedProperty) {
          for (var k in entry.gd$extendedProperty) {
            if (entry.gd$extendedProperty[k].name == 'blogger.contentRemoved') {
              return '<span class="deleted-comment">' + entry.content.$t + '</span>';
            }
          }
        }
        return entry.content.$t;
      }

      var parse = function(data) {
        cursor = null;
        var comments = [];
        if (data && data.feed && data.feed.entry) {
          for (var i = 0, entry; entry = data.feed.entry[i]; i++) {
            var comment = {};
            // comment ID, parsed out of the original id format
            var id = /blog-(\d+).post-(\d+)/.exec(entry.id.$t);
            comment.id = id ? id[2] : null;
            comment.body = bodyFromEntry(entry);
            comment.timestamp = Date.parse(entry.published.$t) + '';
            if (entry.author && entry.author.constructor === Array) {
              var auth = entry.author[0];
              if (auth) {
                comment.author = {
                  name: (auth.name ? auth.name.$t : undefined),
                  profileUrl: (auth.uri ? auth.uri.$t : undefined),
                  avatarUrl: (auth.gd$image ? auth.gd$image.src : undefined)
                };
              }
            }
            if (entry.link) {
              if (entry.link[2]) {
                comment.link = comment.permalink = entry.link[2].href;
              }
              if (entry.link[3]) {
                var pid = /.*comments\/default\/(\d+)\?.*/.exec(entry.link[3].href);
                if (pid && pid[1]) {
                  comment.parentId = pid[1];
                }
              }
            }
            comment.deleteclass = 'item-control blog-admin';
            if (entry.gd$extendedProperty) {
              for (var k in entry.gd$extendedProperty) {
                if (entry.gd$extendedProperty[k].name == 'blogger.itemClass') {
                  comment.deleteclass += ' ' + entry.gd$extendedProperty[k].value;
                } else if (entry.gd$extendedProperty[k].name == 'blogger.displayTime') {
                  comment.displayTime = entry.gd$extendedProperty[k].value;
                }
              }
            }
            comments.push(comment);
          }
        }
        return comments;
      };

      var paginator = function(callback) {
        if (hasMore()) {
          var url = config.feed + '?alt=json&v=2&orderby=published&reverse=false&max-results=50';
          if (cursor) {
            url += '&published-min=' + new Date(cursor).toISOString();
          }
          window.bloggercomments = function(data) {
            var parsed = parse(data);
            cursor = parsed.length < 50 ? null
                : parseInt(parsed[parsed.length - 1].timestamp) + 1
            callback(parsed);
            window.bloggercomments = null;
          }
          url += '&callback=bloggercomments';
          var script = document.createElement('script');
          script.type = 'text/javascript';
          script.src = url;
          document.getElementsByTagName('head')[0].appendChild(script);
        }
      };
      var hasMore = function() {
        return !!cursor;
      };
      var getMeta = function(key, comment) {
        if ('iswriter' == key) {
          var matches = !!comment.author
              && comment.author.name == config.authorName
              && comment.author.profileUrl == config.authorUrl;
          return matches ? 'true' : '';
        } else if ('deletelink' == key) {
          return config.baseUri + '/delete-comment.g?blogID='
               + config.blogId + '&postID=' + comment.id;
        } else if ('deleteclass' == key) {
          return comment.deleteclass;
        }
        return '';
      };

      var replybox = null;
      var replyUrlParts = null;
      var replyParent = undefined;

      var onReply = function(commentId, domId) {
        if (replybox == null) {
          // lazily cache replybox, and adjust to suit this style:
          replybox = document.getElementById('comment-editor');
          if (replybox != null) {
            replybox.height = '250px';
            replybox.style.display = 'block';
            replyUrlParts = replybox.src.split('#');
          }
        }
        if (replybox && (commentId !== replyParent)) {
          document.getElementById(domId).insertBefore(document.getElementById('form-wrapper'), null);
          replybox.src = replyUrlParts[0]
              + (commentId ? '&parentID=' + commentId : '')
              + '#' + replyUrlParts[1];
          replyParent = commentId;
        }
      };

      var hash = (window.location.hash || '#').substring(1);
      var startThread, targetComment;
      if (/^comment-form_/.test(hash)) {
        startThread = hash.substring('comment-form_'.length);
      } else if (/^c[0-9]+$/.test(hash)) {
        targetComment = hash.substring(1);
      }

      // Configure commenting API:
      var configJso = {
        'maxDepth': config.maxThreadDepth
      };
      var provider = {
        'id': config.postId,
        'data': items,
        'loadNext': paginator,
        'hasMore': hasMore,
        'getMeta': getMeta,
        'onReply': onReply,
        'rendered': true,
        'initComment': targetComment,
        'initReplyThread': startThread,
        'config': configJso,
        'messages': msgs
      };

      var render = function() {
        if (window.goog && window.goog.comments) {
          var holder = document.getElementById('comment-holder');
          window.goog.comments.render(holder, provider);
        }
      };

      // render now, or queue to render when library loads:
      if (window.goog && window.goog.comments) {
        render();
      } else {
        window.goog = window.goog || {};
        window.goog.comments = window.goog.comments || {};
        window.goog.comments.loadQueue = window.goog.comments.loadQueue || [];
        window.goog.comments.loadQueue.push(render);
      }
    })();
// ]]>
  </script>
</b:includable>
<b:includable id="threaded_comments" var="post">
<div class="comments" id="comments">
<a name="comments"></a>
<h3> <b:if cond="data:post.numComments == 0"> Belum ada tanggapan untuk "<data:blog.pagename></data:blog.pagename>"</b:if> <b:if cond="data:post.numComments &gt; 0"> <data:post.numcomments></data:post.numcomments> Tanggapan untuk "<data:blog.pagename></data:blog.pagename>" </b:if> </h3>
<div class="comments-content">
<b:if cond="data:post.embedCommentForm">
<b:include data="post" name="threaded_comment_js"></b:include>
</b:if>
<div id="comment-holder">
<data:post.commenthtml></data:post.commenthtml>
</div>
</div>
<p class="comment-footer">
<b:if cond="data:post.allowNewComments">
<b:include data="post" name="threaded-comment-form"></b:include>
<b:else></b:else>
<data:post.nonewcommentstext></data:post.nonewcommentstext>
</b:if>
</p>
<b:if cond="data:showCmtPopup">
<div id="comment-popup">
<iframe allowtransparency="true" frameborder="0" id="comment-actions" name="comment-actions" scrolling="no">
</iframe>
</div>
</b:if>
<div id="backlinks-container">
<div expr:id='data:widget.instanceId + "_backlinks-container"'>
<b:if cond="data:post.showBacklinks">
<b:include data="post" name="backlinks"></b:include>
</b:if>
</div>
</div>
</div>
</b:includable>
</b:widget>
<b:widget id="HTML1" locked="false" title="评论" type="HTML">
<b:widget-settings>
<b:widget-setting name="content">&lt;!-- 来必力City版安装代码 --&gt;
&lt;div id="lv-container" data-id="city" data-uid="MTAyMC80OTg1OS8yNjM1MA=="&gt;
	&lt;script type="text/javascript"&gt;
   (function(d, s) {
       var j, e = d.getElementsByTagName(s)[0];

       if (typeof LivereTower === 'function') { return; }

       j = d.createElement(s);
       j.src = 'https://cdn-city.livere.com/js/embed.dist.js';
       j.async = true;

       e.parentNode.insertBefore(j, e);
   })(document, 'script');
	&lt;/script&gt;
&lt;noscript&gt; 为正常使用来必力评论功能请激活JavaScript&lt;/noscript&gt;
&lt;/div&gt;
&lt;!-- City版安装代码已完成 --&gt;</b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<!-- only display title if it's non-empty -->
<b:if cond='data:title != ""'>
<h2 class="title"><data:title></data:title></h2>
</b:if>
<div class="widget-content">
<data:content></data:content>
</div>
<b:include name="quickedit"></b:include>
</b:includable>
</b:widget>
</b:section>
<div class="clear"></div>
</div>
<!-- kotak-posting ditutup -->
<!-- sidebar dibuka -->
<aside id="sidebar">
<b:section class="sidebar" id="kotak-sidebar" preferred="yes">
<b:widget id="HTML3" locked="false" title="" type="HTML">
<b:widget-settings>
<b:widget-setting name="content"><![CDATA[<script type="text/javascript">(function(){document.write(unescape('%3Cdiv id="bdcs"%3E%3C/div%3E'));var bdcs = document.createElement('script');bdcs.type = 'text/javascript';bdcs.async = true;bdcs.src = 'http://znsv.baidu.com/customer_search/api/js?sid=17106319262256895754' + '&plate_url=' + encodeURIComponent(window.location.href) + '&t=' + Math.ceil(new Date()/3600000);var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(bdcs, s);})();</script>]]></b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<!-- only display title if it's non-empty -->
<b:if cond='data:title != ""'>
<h2 class="title"><data:title></data:title></h2>
</b:if>
<div class="widget-content">
<data:content></data:content>
</div>
<b:include name="quickedit"></b:include>
</b:includable>
</b:widget>
<b:widget id="HTML2" locked="false" title="联系我" type="HTML">
<b:widget-settings>
<b:widget-setting name="content"><![CDATA[<a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=442Ck4yPhpHR09Pbo4SOgoqPzYCMjg" style="text-decoration:none;"><img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_01.png"/></a>]]></b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<!-- only display title if it's non-empty -->
<b:if cond='data:title != ""'>
<h2 class="title"><data:title></data:title></h2>
</b:if>
<div class="widget-content">
<data:content></data:content>
</div>
<b:include name="quickedit"></b:include>
</b:includable>
</b:widget>
<b:widget id="PopularPosts1" locked="false" title="热门博文" type="PopularPosts">
<b:widget-settings>
<b:widget-setting name="numItemsToShow">10</b:widget-setting>
<b:widget-setting name="showThumbnails">false</b:widget-setting>
<b:widget-setting name="showSnippets">false</b:widget-setting>
<b:widget-setting name="timeRange">LAST_MONTH</b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<b:if cond='data:title != ""'><h2><data:title></data:title></h2></b:if>
<div class="widget-content popular-posts">
<ul>
<b:loop values="data:posts" var="post">
<li>
<b:if cond="!data:showThumbnails">
<b:if cond="!data:showSnippets">
<!-- (1) No snippet/thumbnail -->
<a expr:href="data:post.href"><data:post.title></data:post.title></a>
<b:else></b:else>
<!-- (2) Show only snippets -->
<div class="item-title"><a expr:href="data:post.href"><data:post.title></data:post.title></a></div>
<div class="item-snippet"><data:post.snippet></data:post.snippet></div>
</b:if>
<b:else></b:else>
<!-- (3) Show only thumbnails or (4) Snippets and thumbnails. -->
<div expr:class='data:showSnippets ? "item-content" : "item-thumbnail-only"'>
<b:if cond="data:post.featuredImage.isResizable or data:post.thumbnail">
<div class="item-thumbnail">
<a expr:href="data:post.href" target="_blank">
<b:with value='data:post.featuredImage.isResizable                                  ? resizeImage(data:post.featuredImage, 72, "1:1")                                  : data:post.thumbnail' var="image">
<img alt="" border="0" expr:src="data:image"/>
</b:with>
</a>
</div>
</b:if>
<div class="item-title"><a expr:href="data:post.href"><data:post.title></data:post.title></a></div>
<b:if cond="data:showSnippets">
<div class="item-snippet"><data:post.snippet></data:post.snippet></div>
</b:if>
</div>
<div style="clear: both;"></div>
</b:if>
</li>
</b:loop>
</ul>
<b:include name="quickedit"></b:include>
</div>
</b:includable>
</b:widget>
<b:widget id="BlogArchive1" locked="false" title="博客归档" type="BlogArchive" version="1">
<b:widget-settings>
<b:widget-setting name="showStyle">MENU</b:widget-setting>
<b:widget-setting name="yearPattern">yyyy</b:widget-setting>
<b:widget-setting name="showWeekEnd">true</b:widget-setting>
<b:widget-setting name="monthPattern">MMM yyyy</b:widget-setting>
<b:widget-setting name="dayPattern">MMM dd</b:widget-setting>
<b:widget-setting name="weekPattern">MM/dd</b:widget-setting>
<b:widget-setting name="chronological">false</b:widget-setting>
<b:widget-setting name="showPosts">false</b:widget-setting>
<b:widget-setting name="frequency">MONTHLY</b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<b:if cond='data:title != ""'>
<h2><data:title></data:title></h2>
</b:if>
<div class="widget-content">
<div id="ArchiveList">
<div expr:id='data:widget.instanceId + "_ArchiveList"'>
<b:include cond='data:style == "HIERARCHY"' data="data" name="interval"></b:include>
<b:include cond='data:style == "FLAT"' data="data" name="flat"></b:include>
<b:include cond='data:style == "MENU"' data="data" name="menu"></b:include>
</div>
</div>
</div>
</b:includable>
<b:includable id="flat" var="data">
<ul class="flat">
<b:loop values="data:data" var="i">
<li class="archivedate">
<a expr:href="data:i.url"><data:i.name></data:i.name></a> (<data:i.post-count></data:i.post-count>)
      </li>
</b:loop>
</ul>
</b:includable>
<b:includable id="interval" var="intervalData">
<b:loop values="data:intervalData" var="interval">
<ul class="hierarchy">
<li expr:class='"archivedate " + data:interval.expclass'>
<b:include cond="data:interval.toggleId" data="interval" name="toggle"></b:include>
<a class="post-count-link" expr:href="data:interval.url">
<data:interval.name></data:interval.name>
</a>
<span class="post-count" dir="ltr">(<data:interval.post-count></data:interval.post-count>)</span>
<b:include cond="data:interval.data" data="interval.data" name="interval"></b:include>
<b:include cond="data:interval.posts" data="interval.posts" name="posts"></b:include>
</li>
</ul>
</b:loop>
</b:includable>
<b:includable id="menu" var="data">
<select expr:id='data:widget.instanceId + "_ArchiveMenu"'>
<option value=""><data:title></data:title></option>
<b:loop values="data:data" var="i">
<option expr:value="data:i.url"><data:i.name></data:i.name> (<data:i.post-count></data:i.post-count>)</option>
</b:loop>
</select>
</b:includable>
<b:includable id="posts" var="posts">
<ul class="posts">
<b:loop values="data:posts" var="post">
<li><a expr:href="data:post.url"><data:post.title></data:post.title></a></li>
</b:loop>
</ul>
</b:includable>
<b:includable id="toggle" var="interval">
<a class="toggle" href="javascript:void(0)">
<span expr:class='"zippy" + (data:interval.expclass == "expanded" ? " toggle-open" : "")'>
<b:if cond='data:interval.expclass == "expanded"'>
        ▼&nbsp;
      <b:elseif cond='data:blog.languageDirection == "rtl"'></b:elseif>
        ◄&nbsp;
      <b:else></b:else>
        ►&nbsp;
      </b:if>
</span>
</a>
</b:includable>
</b:widget>
<b:widget id="Label2" locked="false" title="标签" type="Label">
<b:widget-settings>
<b:widget-setting name="sorting">FREQUENCY</b:widget-setting>
<b:widget-setting name="display">CLOUD</b:widget-setting>
<b:widget-setting name="selectedLabelsList">301跳转,CDN,Drupal,Drupal7,GPT2,Google,Jackett,RSs,drupal8,kindle,ngrok,python,pytorch,reformer,seo,书签栏小工具,人工智能,前端,数据迁移,机器写作,标准化操作,树莓派,汉化,浏览器,电子商务,磁力搜索</b:widget-setting>
<b:widget-setting name="showType">USER_SELECTED</b:widget-setting>
<b:widget-setting name="showFreqNumbers">true</b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<b:if cond='data:title != ""'>
<h2><data:title></data:title></h2>
</b:if>
<div expr:class='"widget-content " + data:display + "-label-widget-content"'>
<b:if cond='data:display == "list"'>
<ul>
<b:loop values="data:labels" var="label">
<li>
<b:if cond="data:blog.url == data:label.url">
<span expr:dir="data:blog.languageDirection"><data:label.name></data:label.name></span>
<b:else></b:else>
<a expr:dir="data:blog.languageDirection" expr:href="data:label.url"><data:label.name></data:label.name></a>
</b:if>
<b:if cond="data:showFreqNumbers">
<span dir="ltr">(<data:label.count></data:label.count>)</span>
</b:if>
</li>
</b:loop>
</ul>
<b:else></b:else>
<b:loop values="data:labels" var="label">
<span expr:class='"label-size label-size-" + data:label.cssSize'>
<b:if cond="data:blog.url == data:label.url">
<span expr:dir="data:blog.languageDirection"><data:label.name></data:label.name></span>
<b:else></b:else>
<a expr:dir="data:blog.languageDirection" expr:href="data:label.url"><data:label.name></data:label.name></a>
</b:if>
<b:if cond="data:showFreqNumbers">
<span class="label-count" dir="ltr">(<data:label.count></data:label.count>)</span>
</b:if>
</span>
</b:loop>
</b:if>
<b:include name="quickedit"></b:include>
</div>
</b:includable>
</b:widget>
<b:widget id="LinkList1" locked="false" title="链接" type="LinkList">
<b:widget-settings>
<b:widget-setting name="link-3">http://python.terrychan.org</b:widget-setting>
<b:widget-setting name="sorting">NONE</b:widget-setting>
<b:widget-setting name="text-1">猫咪盒子</b:widget-setting>
<b:widget-setting name="link-1">https://www.maomihezi.com/</b:widget-setting>
<b:widget-setting name="text-0">前端测试</b:widget-setting>
<b:widget-setting name="link-2">https://webio.terrychan.org/</b:widget-setting>
<b:widget-setting name="text-3">python</b:widget-setting>
<b:widget-setting name="link-0">https://webio.terrychan.org/webio/</b:widget-setting>
<b:widget-setting name="text-2">Webio</b:widget-setting>
</b:widget-settings>
<b:includable id="main">
<b:if cond='data:title != ""'><h2><data:title></data:title></h2></b:if>
<div class="widget-content">
<ul>
<b:loop values="data:links" var="link">
<li><a expr:href="data:link.target"><data:link.name></data:link.name></a></li>
</b:loop>
</ul>
<b:include name="quickedit"></b:include>
</div>
</b:includable>
</b:widget>
</b:section>
<div class="clear"></div>
</aside>
<div class="clear"></div>
<!-- sidebar ditutup -->
</div>
<div class="clear"></div>
<!-- kotak-kontent ditutup -->
<b:section class="atas-footer" id="atas-footer" showaddelement="yes"></b:section>
<div class="clear"></div>
</div>
<!-- wrapper ditutup -->
<!-- footer dibuka -->
<footer id="footer-wrapper">
<div id="footer-box">
<div class="footer-kiri">
	Copyright © <script type="text/javascript">var creditsyear = new Date();document.write(creditsyear.getFullYear());</script> <a expr:href="data:blog.homepageUrl"><data:blog.title></data:blog.title></a>
</div>
<div class="footer-kanan">
<script src="//alexa.chinaz.com/show_alexa.aspx?Url=www.terrychan.org"></script>
</div>
</div>
</footer>
<!-- footer ditutup  -->
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement(&quot;script&quot;);
  hm.src = &quot;https://hm.baidu.com/hm.js?4b6f3ab3669188d93d255b2045f8ddcf&quot;;
  var s = document.getElementsByTagName(&quot;script&quot;)[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
<script>
//<![CDATA[
(function(a,c,d){a.fn.tinyNav=function(e){var b=a.extend({active:"selected",header:"",label:""},e);return this.each(function(){d++;var e=a(this),h="tinynav"+d,k=".l_"+h,g=a("<select/>").attr("id",h).addClass("tinynav "+h);if(e.is("ul,ol")){""!==b.header&&g.append(a("<option/>").text(b.header));var f="";e.addClass("l_"+h).find("a").each(function(){f+='<option value="'+a(this).attr("href")+'">';var b;for(b=0;b<a(this).parents("ul, ol").length-1;b++)f+="- ";f+=a(this).text()+"</option>"});g.append(f);b.header||
g.find(":eq("+a(k+" li").index(a(k+" li."+b.active))+")").attr("selected",!0);g.change(function(){c.location.href=a(this).val()});a(k).after(g);b.label&&g.before(a("<label/>").attr("for",h).addClass("tinynav_label "+h+"_label").append(b.label))}})}})(jQuery,this,0);
//]]>
</script>
<script async="async" src="//code.tidio.co/6kchaz9rrrxrq8evgzk4pjztdcoypsgi.js"></script>

&lt;!--[if 0] &gt;</body>&lt;![endif]--&gt;
</html>