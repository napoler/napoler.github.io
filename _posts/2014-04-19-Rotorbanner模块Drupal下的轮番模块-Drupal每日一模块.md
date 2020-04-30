---
layout: post
title: 'Rotor banner模块Drupal下的轮番模块-Drupal每日一模块'
permalink: '/2014/04/rotor-bannerdrupal-drupal.html'
comments: 1
categories: Default
tags: drupal模块 Drupal 轮番 Drupal每日推荐一模块 Rotor banner
comments: 1
---
<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">drupal 可以实现图片轮播的方法有很多种，最傻瓜的方法应该是使用现成的模块。<br/>但是drupal的一个缺点也暴露出来了，类似的功能有N多的模块，功能大同小异，眼花缭乱，但是如何从中找到优质的适合需求的模块却需要花费很大的精力。<br/>我也是为了找一个适合自己需求的模块可是让我费了很大的力气。</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">先给大家罗列下drupal常用的轮播模块</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">* Content Glider – Another jQuery plugin for image slider, very easy to use.<br/>* Rotor banner -The Rotor Banner module allows you to create blocks with ‘rotating’ content. This can be very useful for advertising or highlighting information.<br/>* Dynamic display block – Enables you to create and present blocks of content in a dynamic and attractive way. Uses the jQuery Cycle Plug-in.<br/>* Views Rotator – a Views style plugin using the Cycle jQuery plugin with a small number of options for controlling transition behaviour. Currently being merged into Views Cycle.<br/>* Views Cycle – a Views style plugin using the Cycle jQuery plugin, with an option for tabs, several transition effect options and other transition behavior settings.<br/>* Views Slideshow – a Views style plugin using jquery cycle. The Drupal 6-2.0 version is an extensible API that allows other cycles, rotators, and carousels to plug into the module, so they don’t need to recreate the Views functionality.<br/>* Views Slideshow: Dynamic display block – a Views slideshow plugin which enables you to present slideshows in an attractive way.<br/>* Views Slideshow: ImageFlow – offers an ImageFlow option to Views Slideshow, similar to Apple’s CoverFlow.<br/>* Featured Content Slider – select nodes based on content type and create up to 3 blocks of featured content.<br/>* Slider – create a “slider” content type with a multi-value nodereference field to create carousel-style sliders of the referenced nodes.<br/>* Views Carousel – a Views style plugin using the jCarousel jQuery plugin for the rotation, suitable for e.g. a scrollable thumbnail viewer.<br/>* Ajax Slideshow – Sequential presentation of any of the site nodes, using various effects. The slideshow is ajax-based which means the page load-time is agnostic to the amount of content included.</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">我先使用了Rotor banner 总的来说挺灵活的，功能也不错，可惜不能实现数字页码的形式，<br/>还有依赖的模块太多了。（ jquery_plugin, upload_element, views）</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">模块官方说明http://www.kirkdesigns.co.uk/docs/drupal-rotor-banner-module</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">安装步骤，依次安装下载好依赖的模块与本模块后，在内容类型中会出现rotor item类型，接下来就可以，在发布文章选项中发布几篇rotor item类型的文章，其实就是每张图片的详细内容（包括标题内容alt项等等），然后到区块设置里找到rotor: Block 进行设置，把它放到想出现的地方，最后到views列表页面找到rotor并编辑，主要是编辑Basic settings 中的style选项Rotor，</div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;">比较简单就不详细说明了。编辑好保存后就可以看到效果了。</div>