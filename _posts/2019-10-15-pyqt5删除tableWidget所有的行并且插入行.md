---
layout: post
title: "pyqt5 删除tableWidget所有的行 并且插入行"
permalink: '/2019/10/pyqt5-tablewidget.html'
comments: 1
categories: Default
tags: 默认
---
<div style="color: #d4d4d4; background-color: #1e1e1e; font-family: 'Droid Sans Mono', monospace, monospace, 'Droid Sans Fallback'; line-height: 19px; white-space: pre;"><div>&nbsp;&nbsp;&nbsp;#删除所有行&nbsp;&nbsp;</div><div>&nbsp;</div><div><span style="color: #c586c0;">while</span>&nbsp;task_tableWidget.rowCount()&nbsp;&gt;&nbsp;<span style="color: #b5cea8;">0</span>:</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;task_tableWidget.removeRow(<span style="color: #b5cea8;">0</span>)</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>#插入一行</div><div><div style="font-family: 'Droid Sans Mono', monospace, monospace, 'Droid Sans Fallback'; line-height: 19px;">&nbsp;&nbsp;&nbsp;tableWidget.insertRow(col)&nbsp;<span style="color: #6a9955;">#insert&nbsp;new&nbsp;row</span></div></div><div>&nbsp;</div></div>