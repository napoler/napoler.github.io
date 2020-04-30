---
layout: post
title: '解决ImportError: cannot import name 'QtWebKitWidgets'错误'
permalink: '/2019/08/importerror-cannot-import-name.html'
comments: 1
categories: Default
tags: 默认
comments: 1
---
首先安装1)

<pre class="wp-block-code"><code>    pip install PyQtWebEngine</code></pre>

2)

<pre class="wp-block-code"><code>    pip install PyQt5==5.11.3</code></pre>

## 使用QtWebEngineWidgets替换__QtWebKitWidgets__

2In PyQt5&nbsp;__“QtWebKitWidgets”__&nbsp;is&nbsp;_Deprecated_. I just replace this line

<pre class="wp-block-code"><code>from PyQt5.*QtWebKitWidgets* import *QWebView*, *QWebPage*from PyQt5.*QtWebKit* import *QWebSettings*</code></pre>

With this code:

<pre class="wp-block-code"><code>from PyQt5.QtWebEngineWidgets import QWebEngineView as QWebView,QWebEnginePage as QWebPagefrom PyQt5.QtWebEngineWidgets import QWebEngineSettings as QWebSettings</code></pre>

<div><div><div><div>QtWebKitWidgets.QWebView<span style="font-size: 1rem;">()</span></div></div></div><div>替换为</div><div>QtWebEngineWidgets.QWebEngineView()</div></div>