---
layout: post
title: "Drupal8解析json数据"
permalink: '/2017/07/drupal8json.html'
comments: 1
categories: Default
tags: drupal8
---
  
Use the Json::decode() method:  
  
  
```  
use Drupal\Component\Serialization\Json;  
  
...  
  
$decoded = Json::decode($data);  
```  

<div><br/></div>