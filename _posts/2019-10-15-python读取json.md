---
layout: post
title: 'python读取json'
permalink: '/2019/10/pythonjson.html'
comments: 1
categories: Default
tags: 默认
comments: 1
---
import json

with open(“../config/record.json”,’r’) as load_f:  
 load_dict = json.load(load\_f)