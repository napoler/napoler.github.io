---
layout: post
comments: 1
title:  精通Python爬虫框架Scrapy
categories: 读书
tags: 默认
---


Twisted
3.4.1　使用爬虫实现双向爬取
yield
yield与return在某种意义上来说有些相似，都是将返回值提供给调用者。不过，和return不同的是，yield不会退出函数，而是继续执行for循环。从功能上来说，前面的例子与下面的代码大体相当：
5.2.1　在响应间传参
好
parse_item()内部，可以使用该值替代之前使用过的XPath表达式。
l.add_value(’title’,response.meta[’title’],
MapCompose(unicode.strip,unicode.title))
你会发现我们不再调用add_xpath()，而是转为调用add_value()，这是因为我们在该字段中将不会再使用到任何XPath表达式。现在，可以使用scrapy crawl运行这个新的爬虫，并且可以在PropertyItems中看到来自api.json的标题
第6章　部署到Scrapinghub
云托管
Scrapinghub是Scrapy托管的Amazon服务器，它是由Scrapy开发者创建的Scrapy云基础设施提供商。它是一个付费服务，不过也提供了免费方
6.2　部署爬虫与计划运行
放屏蔽
Scrapinghub使用了算法预估每秒的请求数，能够让你在执行时不会被屏蔽。
7.1　使用Scrapy设置
临时参数
对于一些临时修改，可以使用命令行参数-s，在命令行中传输设置。我们在前面已经使用过几次，比如-s CLOSESPIDR_PAGECOUNT=3，即用于启用爬虫关闭扩展，以便爬虫尽早关闭。在该级别中，我们可能会去设置API secrets、密码等。不要将这些信息写入settings.py文件中，因为你不会希望它们意外出现在某些公开代码库当中。
7.2.4　HTTP缓存和离线运行
HTTP缓存和离线运行
HTTP缓存和离线运行
Scrapy的HttpCacheMiddleware组件(默认未激活)为HTTP请求和响应提供了一个低级的缓存。当启用该组件时，缓存会存储每个请求及其对应的响应。通
7.2.7　媒体下载
Scrapy可以使用图像管道下载媒体内容，此外还可以将图像转换为不同的格式、生成缩略图以及基于大小过滤图
Scrapy可以使用图像管道下载媒体内容，此外还可以将图像转换为不同的格式、生成缩略图以及基于大小过滤图
8.1　Scrapy是一个Twisted应用
们使用该非阻塞架构时，只需一个线程，就能达到类似使用数千个线程才能达到的性能。坦率地说，操作系统开发人员花费了数十年的时间优化线程操作，以使它们速度更快。性能的争论没有以前那么强烈了。有一件大家都认同的事情是，为复杂应用编写正确的线程安全代码非常困难。
我们使用该非阻塞架构时，只需一个线程，就能达到类似使用数千个线程才能达到的性能。
坦率地说，操作系统开发人员花费了数十年的时间优化线程操作，以使它们速度更快。性能的争论没有以前那么强烈了。有一件大家都认同的事情是，为复杂应用编写正确的线程安全代码非常困难。
们使用该非阻塞架构时，只需一个线程，就能达到类似使用数千个线程才能达到的性能。
坦率地说，操作系统开发人员花费了数十年的时间优化线程操作，以使它们速度更快。性能的争论没有以前那么强烈了。有一件大家都认同的事情是，为复杂应用编写正确的线程安全代码非常困难。
8.1.1　延迟和延迟链
延迟机制是Twisted提供的最基础的机制，能够帮助我们编写异步代码。Twisted API使用延迟机制，允许我们定义发生某些事件时所采取的动作序列。
延迟机制是Twisted提供的最基础的机制，能够帮助我们编写异步代码。Twisted API使用延迟机制，允许我们定义发生某些事件时所采取的动作序列。
9.1.1　使用treq
treq是一个Python包，相当于基于Twisted应用编写的Python req**sts包。它可以让我们轻松执行GET、POST以及其他HTTP请求。
treq是一个Python包，相当于基于Twisted应用编写的Python requests包。它可以让我们轻松执行GET、POST以及其他HTTP请求。
9.1.2　用于写入Elasticsearch的管道
倾向于选择treq而不是Scrapy的Req**st/crawler.engine.download()的原因是，虽然它们都很简单，但是在性能上treq更有优
倾向于选择treq而不是Scrapy的Request/crawler.engine.download()的原因是，虽然它们都很简单，但是在性能上treq更有优
