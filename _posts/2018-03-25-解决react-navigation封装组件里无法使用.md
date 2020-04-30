---
layout: post
title: "解决react-navigation封装组件里无法使用"
permalink: '/2018/03/react-navigation.html'
comments: 1
categories: Default
tags: react-navigation
---
封装类似这样  
  
&lt;Card data={item} navigation={this.props.navigation} /&gt;;  
  
封装组件里使用  
  

<div><div><span style="color: #569cd6;">static</span> propTypes = {</div><div></div><div><span style="color: #ce9178;">navigation</span>: PropTypes.object</div><div>};</div><div><br/>使用<br/><div><span style="color: #569cd6;">this</span>.props.navigation.navigate(<span style="color: #ce9178;">"CScreen"</span>);</div></div><div><br/></div><div><br/></div></div>