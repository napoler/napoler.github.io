---
layout: post
title: 'react-native-splash-screen编译出现错误解决方案'
permalink: '/2018/07/react-native-splash-screen.html'
comments: 1
categories: Default
tags: 
comments: 1
---
  
  
  
  
react-native-splash-screen安装时候出现类似错误  
https://github.com/crazycodeboy/react-native-splash-screen  
  

<blockquote class="tr_bq">:app:processDebugManifest<br/>:app:processDebugResources<br/>/Users/jiangsong/git/apps/test1/yichangqiusai/android/app/build/intermediates/res/merged/debug/values-v24/values-v24.xml:3:  AAPT: Error retrieving parent for item: No resource found that matches  the given name  'android:TextAppearance.Material.Widget.Button.Borderless.Colored'.<br/>/Users/jiangsong/git/apps/test1/yichangqiusai/android/app/build/intermediates/res/merged/debug/values-v24/values-v24.xml:4:  AAPT: Error retrieving parent for item: No resource found that matches  the given name 'android:TextAppearance.Material.Widget.Button.Colored'.<br/>/Users/jiangsong/git/apps/test1/yichangqiusai/android/app/build/intermediates/res/merged/debug/values-v26/values-v26.xml:15:21-54:  AAPT: Noresource found that matches the given name: attr  'android:keyboardNavigationCluster'.<br/>/Users/jiangsong/git/apps/test1/yichangqiusai/android/app/build/intermediates/res/merged/debug/values-v24/values-v24.xml:3:  error: Error retrieving parent for item: No resource found that matches  the given name  'android:TextAppearance.Material.Widget.Button.Borderless.Colored'.<br/>/Users/jiangsong/git/apps/test1/yichangqiusai/android/app/build/intermediates/res/merged/debug/values-v24/values-v24.xml:4:  error: Error retrieving parent for item: No resource found that matches  the given name 'android:TextAppearance.Material.Widget.Button.Colored'.<br/>/Users/jiangsong/git/apps/test1/yichangqiusai/android/app/build/intermediates/res/merged/debug/values-v26/values-v26.xml:15:  error: Error: No resource found that matches the given name: attr  'android:keyboardNavigationCluster'.</blockquote>

  
  
&nbsp;卸载`` react-native-splash-screen ``   

<blockquote class="tr_bq"><code>npm uninstall react-native-splash-screen</code>&nbsp;</blockquote>

安装 `` 3.0.9 ``版本  

<blockquote class="tr_bq"><code>npm install --save react-native-splash-screen@3.0.9</code>&nbsp;</blockquote>

之后重新编译即可。  
  
另外  
package.json文件中  

<blockquote class="tr_bq">dependencies{<br/>"react-native-splash-screen": "3.0.9", <br/>} </blockquote>

去掉“^”，防止自动升级。