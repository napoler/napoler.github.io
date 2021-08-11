---
layout: post
comments: 1
title:  Performer启用自回归
categories: performer-pytorch
tags: Default
date: 2021-08-11 23:07
---

https://github.com/lucidrains/performer-pytorch

无法为 #Performer 启用自回归 

出现如下错误
```
 unable to import cuda code for auto-regressive Performer. will default to the memory inefficient non-cuda version
```

安装pytorch-fast-transformers即可解决，不过速度有点慢，需要点耐心
```

pip install pytorch-fast-transformers

```



可以查看解决方案讨论页面

https://github.com/lucidrains/performer-pytorch/issues/15