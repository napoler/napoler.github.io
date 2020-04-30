---
layout: post
title: "framework7 vue Axios 加载第三方数据"
permalink: '/2017/08/framework7-vue-axios.html'
comments: 1
categories: Default
tags: 
---
&lt;template&gt;  
&nbsp; &lt;f7-page&gt;  
&nbsp; &nbsp; &lt;f7-navbar title="About" back-link="Back" sliding&gt;&lt;/f7-navbar&gt;  
&nbsp;   
&nbsp;   
&nbsp; &nbsp; &lt;ul v-if="posts &amp;&amp; posts.length"&gt;  
&nbsp; &nbsp; &lt;li v-for="post of posts"&gt;  
&nbsp; &nbsp; &nbsp; &lt;p&gt;&lt;strong&gt;{{post.title}}&lt;/strong&gt;&lt;/p&gt;  
&nbsp; &nbsp; &nbsp; &lt;p&gt;{{post.body}}&lt;/p&gt;  
&nbsp; &nbsp; &lt;/li&gt;  
&nbsp; &lt;/ul&gt;  
  
&nbsp; &lt;ul v-if="errors &amp;&amp; errors.length"&gt;  
&nbsp; &nbsp; &lt;li v-for="error of errors"&gt;  
&nbsp; &nbsp; &nbsp; {{error.message}}  
&nbsp; &nbsp; &lt;/li&gt;  
&nbsp; &lt;/ul&gt;  
&nbsp;   
&nbsp;   
&nbsp; &lt;/f7-page&gt;  
&lt;/template&gt;  
  
&lt;script&gt;  
//export default {}  
import axios from 'axios';  
  
export default {  
&nbsp; data: () =&gt; ({  
&nbsp; &nbsp; posts: [],  
&nbsp; &nbsp; errors: []  
&nbsp; }),  
  
&nbsp; // Fetches posts when the component is created.  
&nbsp; created() {  
&nbsp; &nbsp; axios.get('http://jsonplaceholder.typicode.com/posts')  
&nbsp; &nbsp; .then(response =&gt; {  
&nbsp; &nbsp; &nbsp; // JSON responses are automatically parsed.  
&nbsp; &nbsp; &nbsp; this.posts = response.data  
&nbsp; &nbsp; })  
&nbsp; &nbsp; .catch(e =&gt; {  
&nbsp; &nbsp; &nbsp; this.errors.push(e)  
&nbsp; &nbsp; })  
  
&nbsp; &nbsp; // async / await version (created() becomes async created())  
&nbsp; &nbsp; //  
&nbsp; &nbsp; // try {  
&nbsp; &nbsp; // &nbsp; const response = await axios.get(`http://jsonplaceholder.typicode.com/posts`)  
&nbsp; &nbsp; // &nbsp; this.posts = response.data  
&nbsp; &nbsp; // } catch (e) {  
&nbsp; &nbsp; // &nbsp; this.errors.push(e)  
&nbsp; &nbsp; // }  
&nbsp; }  
}  
  
  
  
&lt;/script&gt;