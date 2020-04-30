---
layout: post
title: 'Drupal8 使用views创建接口 获取当前用户信息'
permalink: '/2017/09/drupal8-views.html'
comments: 1
categories: Default
tags: 
comments: 1
---
<div style="font-size: 14px; line-height: 1.75; white-space: pre-wrap;" yne-bulb-block="paragraph"><span style="background-color: white; color: #242729; font-family: Arial; font-size: 15px;">1) Duplicate the default people view and rename it </span><span style="background-color: white; color: #df402a; font-family: Arial; font-size: 15px;">current_user.</span><span style="background-color: white; color: #242729; font-family: Arial; font-size: 15px;"> 2) Add a rest export route eg. rest/users/current_user. 3) Add a filter for current user. 4) Save all. 5) Retrieve the current user via http get request on example.com/rest/user/current_user?_format=hal_json</span></div>

<div style="font-size: 14px; line-height: 1.75; white-space: pre-wrap;" yne-bulb-block="paragraph"><span style="background-color: white; color: #242729; font-family: Arial; font-size: 15px;">Thanks to QueenVictoria for the advice.</span></div>