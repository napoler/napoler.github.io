---
layout: post
title: "使用Drupal & Ubercart 5小时搭建在线图书电子商务网站"
permalink: '/2014/04/drupal-ubercart-5.html'
comments: 1
categories: Default
tags: drupal模块 Drupal Ubercart Drupal7 drupal6 drupal5 电子商务
---
<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">这是刚刚在网上看到的一篇文章,感觉很不错就在这里拿来和大家分享一下.</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">For a friend, on a Saturday afternoon: Michael Steinberg, who writes and publishes books as Black Rain Press.</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Install Drupal. This specific site is in 5; normally I would do 6, but it was in a folder with other friends’ sites that I didn’t want to upgrade at the time.</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Enable the following modules:</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">The following core modules: Blog, Contact, Search, and Taxonomy</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Content Construction Kit (CCK) and its bundled Node Reference</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Imagefield (Drupal 6 version also requires FileField)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Image API and its bundled Image API GD2</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">ImageCache and its bundled ImageCache UI</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Messaging and its bundled Simple Mail</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Notifications and its bundled Content Notifications, Notifications Autosubscribe, and Notifications UI</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">AddToAny</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Google Analytics (make sure to set up a key)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Mollom (make sure to set up a key for Mollom as well)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Pathauto</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Token (required by Pathauto and other modules)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Update Status (comes automatically with Drupal 6)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Printer-friendly pages and Send by e-mail (bundled with Printer, e-mail and PDF versions)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Ubercart: (lots of modules here, but the setup will be simple: Cart; Order; Product; Store; Notify; Payment; Reports; Cart Links; PayPal)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Views and its bundled Views UI</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Workflow-NG and its bundled Workflow-NG UI (required by Ubercart in Drupal 5, but not in 6)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Install the Zen theme, and create a quick subtheme with their instructions (or for Drupal 6) (you can grab zpress.css if you need to see how that’s customized)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Create the following content types &amp; fields:</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Book (not to be confused with the Book module in core; if you also need that content type, then call this type something else so they don’t conflict), with a Book Cover (an ImageField with default settings)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Excerpt, with a Node Reference to Book (default settings, but select the type as the above ‘Book’ content type)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Create an ImageCache preset named ‘book_front’ with Scale And Crop: width: 150, height: 231.</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Create a view like this:</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Basic info: Name: books</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Page: check ‘provide page’; URL is ‘books’; View Type is ‘List View’; Title is ‘Books’; check ‘Use pager’; leave at 10 nodes</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Fields: Image: Cover, with an option to ‘book_front as link to node’; Node: Title</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Filters: Node Type is one of ‘book’; Node: Published Equals Yes</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Sort by Node Title Ascending</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Create another view:</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Basic info: Name: excerpts</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Block: check ‘provide block’; View Type: ‘List View’, Title: ‘Book Excerpts’; Uncheck ‘More’ Link</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Fields: Node: Title; Node: Body as Teaser; Node: View Link with option of ‘Read more…’</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Arguments: Node Reference: Book (field_book) with Option of ‘Book Excerpts from %1′; Argument Handling Code: “if (arg(1) &amp;&amp; is_numeric(arg(1))) { return array(arg(1)); }”</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Filters: Node Type is one of excerpt; Node Published equals Yes</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Sort by Node: Created Type (Descending)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Configure some blocks:</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Content Top: a custom ‘Ordering Info’ block, with some static HTML with the basic ordering info that you see on the site. Shows up on book* and cart*.</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Left Sidebar: Navigation menu; Recent blog posts; Recent comments; User login</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Right Sidebar: Excerpts (we created a view for that, remember?)</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Site Info: The regular (Name, e-mail, etc). Most of this is set up during installation, but we also want to set the front page to ‘books’, so our fancy new View goes on the home page.</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Ubercart configuration for E-Commerce:</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Store administration &gt; Products &gt; Manage classes: Add a class of ID: book, Name: Book, which seems to turn on product info for our Book content type. I really don’t know Ubercart, but that’s literally all I had to do besides</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Store administration &gt; Configuration &gt; Payment settings — set up a Payment method for PayPal, where you enter the required PayPal information.</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Set up the contact page</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Make sure the Navigation menu has what you want</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Make sure you have all the Print, AddToAny, and any other settings you want configured</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Set up the PathAuto settings to turn your ugly node/123 URLs into pretty book/[title-raw] or what-have-you.</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">(Optional): Migrate your content, if this is coming from WordPress or somewhere. In this case, it was actually just the books and about a dozen e-mail posts that were turned into blog entries; just a 20 minute cut &amp; paste.</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Hope that’s useful to some folks! Let me know any questions or comments you have.</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Thanks,</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">Aaron</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">PS: I did all the graphics for that, and even created the logo for him some years ago, when I fancied myself an artist…</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">From:http://aaronwinborn.com/blogs/aaron/5-hour-book-publishers-ecommerce-site-drupal</span></div>

<div style="background-color: white; font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: 17px; text-align: justify;"><span style="color: #0000ee;">虽然是用的drupal5但是对于drupal6甚至drupal7制作都是有很多借鉴作用的.napoler看了之后非常激动,准备尝试搭建个网店试试.</span></div>

<div class="addtoany_share_save_container addtoany_content_bottom" style="background-color: white; clear: both; font-family: Arial, Verdana, sans-serif; font-size: 14px; margin: 16px 0px; text-align: justify;">&nbsp;</div>