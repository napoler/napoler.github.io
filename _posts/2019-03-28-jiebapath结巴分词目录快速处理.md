---
layout: post
title: 'jieba path 结巴分词目录快速处理'
permalink: '/2019/03/jieba-path.html'
comments: 1
categories: Default
tags: python gitbub 开源项目
comments: 1
---
<p style="box-sizing: border-box; margin-bottom: 16px; color: #24292e; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 16px; margin-top: 0px !important;">#jieba path 结巴分词目录快速处理</p>

<pre style="box-sizing: border-box; font-family: SFMono-Regular, Consolas, 'Liberation Mono', Menlo, Courier, monospace; font-size: 13.6px; margin-top: 0px; overflow-wrap: normal; background-color: #f6f8fa; border-radius: 3px; line-height: 1.45; overflow: auto; padding: 16px; color: #24292e; margin-bottom: 0px !important;"><code>项目地址</code><a href="https://github.com/napoler/jieba_path" style="background-color: transparent; font-size: 13.6px;">https://github.com/napoler/jieba_path</a></pre>

<h2 style="box-sizing: border-box; margin-bottom: 16px; margin-top: 24px; line-height: 1.25; border-bottom: 1px solid #eaecef; padding-bottom: 0.3em; color: #24292e; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol';"><a class="anchor" href="https://github.com/napoler/jieba_path#%E5%AE%89%E8%A3%85" id="user-content-安装" style="box-sizing: border-box; background-color: transparent; color: #0366d6; text-decoration-line: none; float: left; line-height: 1; margin-left: -20px; padding-right: 4px;"></a>安装</h2>

<pre style="box-sizing: border-box; font-family: SFMono-Regular, Consolas, 'Liberation Mono', Menlo, Courier, monospace; font-size: 13.6px; margin-bottom: 16px; margin-top: 0px; overflow-wrap: normal; background-color: #f6f8fa; border-radius: 3px; line-height: 1.45; overflow: auto; padding: 16px; color: #24292e;"><code style="box-sizing: border-box; font-family: SFMono-Regular, Consolas, 'Liberation Mono', Menlo, Courier, monospace; font-size: 13.6px; background: transparent; border-radius: 3px; margin: 0px; padding: 0px; border: 0px; word-break: normal; display: inline; line-height: inherit; overflow: visible; overflow-wrap: normal;">pip install jieba_path</code></pre>

<h2 style="box-sizing: border-box; margin-bottom: 16px; margin-top: 24px; line-height: 1.25; border-bottom: 1px solid #eaecef; padding-bottom: 0.3em; color: #24292e; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol';"><a class="anchor" href="https://github.com/napoler/jieba_path#%E4%BD%BF%E7%94%A8" id="user-content-使用" style="box-sizing: border-box; background-color: transparent; color: #0366d6; text-decoration-line: none; float: left; line-height: 1; margin-left: -20px; padding-right: 4px;"></a>使用</h2>

<p style="box-sizing: border-box; margin-bottom: 16px; margin-top: 0px; color: #24292e; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 16px;">批量处理文件</p>

<pre style="box-sizing: border-box; font-family: SFMono-Regular, Consolas, 'Liberation Mono', Menlo, Courier, monospace; font-size: 13.6px; margin-top: 0px; overflow-wrap: normal; background-color: #f6f8fa; border-radius: 3px; line-height: 1.45; overflow: auto; padding: 16px; color: #24292e; margin-bottom: 0px !important;"><code style="box-sizing: border-box; font-family: SFMono-Regular, Consolas, 'Liberation Mono', Menlo, Courier, monospace; font-size: 13.6px; background: transparent; border-radius: 3px; margin: 0px; padding: 0px; border: 0px; word-break: normal; display: inline; line-height: inherit; overflow: visible; overflow-wrap: normal;">from jieba_path import jieba_pathjpath = jieba_path.Jpath()#处理目录下的txt所有文件jpath.jieba_path('./data/', 'txt')#单个文件处理jpath.jieba_file('./data/001.txt')#获取目录下的txt文件列表jpath.file_List('./data/', 'txt')</code></pre>