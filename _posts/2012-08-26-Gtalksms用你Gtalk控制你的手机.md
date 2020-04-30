---
layout: post
title: "Gtalksms用你Gtalk控制你的手机"
permalink: '/2012/08/gtalksmsgtalk.html'
comments: 1
categories: Default
tags: 
---
Gtalksms 着实是一个令人欣喜的android应用,只要在你的android手机里面装了Gtalksms就可以轻松的实现远程接受手机短信,以及其他一系列的操作了.下面是terry自己测试的:

 

<img height="175" src="http://lh3.ggpht.com/-R1b2kRyh43Q/UDnSC8-axHI/AAAAAAAAswI/cBkf8wlCxfY/zrclip_001n3ba57449.png?imgmax=400" style="TEXT-ALIGN: left; WIDOWS: 2; TEXT-TRANSFORM: none; TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: medium Simsun; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(0,0,0); CURSOR: move; WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" width="329"/>

 

里面内置了很多命令只要发help就可以获取命令帮助.   
Terry Chen: Available commands:   
- "help": shows this help.   
- "help:all": shows full help.   
- "help:categories" or "help:cat": shows the help categories.   
- "help:\#command\#" - "help:\#category\#"   
progid:DXImageTransform.Microsoft.AlphaImageLoader(src='file:///C|/Users/Administrator/AppData/Local/Google/Google%20Talk/avatars/9c6a1cb17234f7873db95dfa6a067594dde91388.online.avatar'); height: 1px;"&gt; Terry Chen: help:all   
Terry Chen: Available commands:   
- "help": shows this help.   
- "help:all": shows full help.   
- "help:categories" or "help:cat": shows the help categories.   
- "rm:\#filepath\#" : Deletes the specified file.   
- "ls:\#path\#" : Displays the list of files and folders in the specified folder.   
- "send:\#file\#" : Sends the specified file through XMPP. Use an absolut path, otherwise the last listed directory will be prefixed   
- "shell" : Opens a new chat as a shell.   
- "cmd:\#command\#" : execute shell instruction with root access if possible.   
- "tts-lang:\#fr or fr:CA\#" or "ttslang:\#fr or fr:CA\#" : Set the TTS language with only the language code or with the country code too.   
- "tts:\#text to speech\#" or "say:\#text to speech\#" : Speaks the given message.   
- "tts-engine-list" or "ttsenginelist" : Get the TTS Engine list.   
- "tts-lang-list" or "ttslanglist" : Get the TTS language list.   
- "tts-engine:\#engine\#" or "ttsengine:\#engine\#" : Set the TTS Engine with the engine namespace (ex: com.google.android.tts).   
- "battery" or "batt" : show battery level in percent.   
- "contact:\#contact\#" : display informations of a searched contact.   
- "appfind:\#app\#" : Find an installed application.   
- "applist" or "apps" : Get the list of all installed applications.   
- "applist:user" or "apps:user" : Get the list of all installed user applications.   
- "applist:system" or "apps:system" : Get the list of all installed system applications.   
- "appstart:\#app\#" or "start:\#app\#" : Start a specific application.   
- "findsms:\#message\#" or "fs:\#message\#" : search specific message in all SMS.   
- "findsms:\#contact\#:\#message\#" or "fs:\#contact\#:\#message\#" : search specific message in all SMS from searched contacts.   
- "reply:\#message\#" or "r:\#message\#" : Sends a SMS to your last recipient with content message.   
- "delsms" : Delete SMS without confirmation!   
- "delsms:all" : Delete all SMS without confirmation!   
- "delsms:sent" : Delete all sent SMS without confirmation!   
- "delsms:last:\#number\#" : Delete last \[number\] SMS, 1 by default.   
- "delsms:lastin:\#number\#" : Delete last \[number\] received SMS, 1 by default.   
- "delsms:lastout:\#number\#" : Delete last \[number\] sent SMS, 1 by default.   
- "delsms:contact:\#contact\#" : Delete all SMS in the thread of the specified contact without confirmation!   
- "delsms:number:\#phone\_number\#" : Delete all SMS in the thread of the specified number without confirmation!   
- "chat:\#contact\#" or "c:\#contact\#" : Creates a new Chat with the contact and invites you to that chat. Leave contact empty to use last contact   
- "sms" or "s" : Displays last sent SMS from every contact.   
- "sms:unread" or "s:unread" : Displays unread SMS from every contact.   
- "sms:\#contact\#" or "s:\#contact\#" : Displays last sent SMS from searched contacts.   
- "sms:\#contact\#:\#message\#" or "s:\#contact\#:\#message\#" : Sends a SMS to number with content message.   
- "markasread:\#contact\#" or "mar:\#contact\#" : mark SMS as read for last recipient or given contact.   
- "alias" : Allows the creation/manipulation of permanent aliases, that can be use anywhere within GTalkSMS where otherwise a number of full name would be required   
- "alias:add:\#aliasname\#:\#contact\#" : Adds or updates an alias for a given contact or number.   
- "alias:show:\#aliasname\#" : Shows the alias information. If \#aliasname\# is "all", every known alias will be presented.   
- "alias:del:\#aliasname\#" : Deletes the specified alias.   
- "wifi" or "wlan" : Gives the current state of the Wifi adapter.   
- "wifi:on" or "wlan:on" : Turns on the WiFi adapter.   
- "wifi:off" or "wlan:off" : Turns off the WiFi adapter.   
- "wifi:state" or "wlan:state" : Gives the current state of the Wifi adapter.   
- "wifi:list" or "wlan:list" : Lists all configured networks   
- "wifi:enable:\#id\#" or "wlan:enable:\#id\#" : Enables network with the given id   
- "wifi:disable:\#id\#" or "wlan:disable:\#id\#" : Disables network with the given id   
- "recipient" or "re" : displays the last recipient.   
- "screenshot" or "sc" : Takes a screenshot and stores it in the picture directory.   
- "screenshot:email" or "sc:email" : Takes a screenshot, stores it and send it by email.   
- "screenshot:xmpp" or "sc:xmpp" : Takes a screenshot, stores it and send it through xmpp connection.   
- "ringmode" : Shows the actual ringer mode.   
- "ringmode:silent" : Set ringer mode to silent.   
- "ringmode:vibrate" : Set ringer mode to vibrate.   
- "ringmode:normal" : Set ringer mode to normal.   
- "ring:\[0-100\]" : Rings the phone until you send stop. Volume between 0 and 100, 0 to vibrate. Empty to current volume.   
- "ring:stop" : Stops the phone ring.   
- "write:\#text\#" or "w:\#text\#" : Writes text as virtual keyboard (don't forget to activate keyboard in Android Preferences panel).   
- "wappend:\#text\#" or "wa:\#text\#" : Appends text as virtual keyboard.   
- "wsend:\#text\#" or "ws:\#text\#" or "wl:\#text\#" : Writes text as virtual keyboard and validate the field.   
- "dial:\#contact\#" : dial the specified contact.   
- "calls:\#count\#" : display call log. The number argument is optional   
- "reject" : reject the incoming phone call   
- "ignore" : ignore the incoming phone call   
- "http:\#url\#" or "https:\#url\#" : Pastes links and open it with the appropriate application.   
- "clipboard:\#text\#" or "copy:\#text\#" : copy text to clipboard or sent phone clipboard if text is empty.   
- "exit" or "quit" : Quits the application on your phone.   
- "where" : Sends you Google Maps/OSM updates about the location of the phone until you send stop.   
- "where:stop" : Stops the location updates.   
- "geo:\#address\#" : Open Maps or Navigation or Street view on specific address.   
- "flash" or "light" : turn flashlight on.   
- "flash:on" or "light:on" : turn flashlight on.   
- "flash:off" or "light:off" : turn flashlight off.   
- "camera" or "photo" : take a photo and store it in the picture directory.   
- "camera:email" or "photo:email" : take a photo, store it and send it by email.   
- "camera:xmpp" or "photo:xmpp" : take a photo, store it and send it through xmpp connection.   
- "camera:list" or "photo:list" : list all camera.   
- "camera:set:\#number\#" or "photo:set:\#number\#" : set the default camera to take photo.   
- "bluetooth" or "bt" : give the current state of the bluetooth adapter.   
- "bluetooth:on" or "bt:on" : turn on the bluetooth adapter.   
- "bluetooth:off" or "bt:off" : turn off the bluetooth adapter. 很多命令,自己慢慢看.总之很强大   
它实现了以下的功能（来自官方说明）。   
主动提醒的内容：   
转发收到的短信。   
来电提醒。   
报告电池状态。   
需要命令交互的：   
回复短信。   
发送短信。   
看最近五条短信(也可以指定联系人)。   
让手机突然响铃。   
发送手机位置信息（google maps 链接）   
把文字复制到android phone剪贴板。   
查看联系人信息。   
让手机打开链接。   
拨号（输入号码，需要手动拨出）。   
我在手机上用了一个多星期的感受是转发收到的短信比较有用，平时我基本都在电脑面前。有短信来了我还要打开手机看，有了它我就直接在电脑上就可以看短信了。并且还能直接发送短信。