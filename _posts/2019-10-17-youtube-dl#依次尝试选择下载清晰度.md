---
layout: post
title: "youtube-dl #依次尝试选择下载清晰度"
permalink: '/2019/10/youtube-dl.html'
comments: 1
categories: Default
tags: 默认
---
[youtube-dl/README.md at master · ytdl-org/youtube-dl](https://github.com/ytdl-org/youtube-dl/blob/master/README.md#format-selection-examples)

>  
> \# Download best mp4 format available or any other best if no mp4 available
> >  
> $ youtube-dl -f ‘bestvideo\[ext=mp4\]+bestaudio\[ext=m4a\]/best\[ext=mp4\]/best’
> 