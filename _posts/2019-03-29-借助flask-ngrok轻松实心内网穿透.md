---
layout: post
title: "借助flask-ngrok轻松实心内网穿透"
permalink: '/2019/03/flask-ngrok.html'
comments: 1
categories: Default
tags: colab flask-ngrok flask ngrok 默认
---
flask-ngrok是一个专为flask开发打造的内网穿透插件.

借助它就可以使用colab开发测试web项目了.

&nbsp;

<pre style="box-sizing: inherit; overflow: auto; font-family: 'Source Code Pro', monospace; font-size: 14.45px; margin-top: 30px; margin-bottom: 0px; padding: 15px; background-color: #f9f9f9; border: 1px solid #d3d3d3; color: #6c6c6c;">pip install flask-ngrok# flask_ngrok_example.pyfrom flask import Flaskfrom flask_ngrok import run_with_ngrokapp = Flask(__name__)run_with_ngrok(app)  # Start ngrok when app is run@app.route("/")def hello():    return "Hello World!"if __name__ == '__main__':    app.run()</pre>