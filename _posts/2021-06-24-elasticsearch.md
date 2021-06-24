---
layout: post
comments: 1
title:  Docker 启动elasticsearch限制使用内存
categories: Default
tags: elasticsearch 优化
date: 2021-06-24 10:35
---

## Reducing Memory[#](https://staffordwilliams.com/blog/2021/02/01/minimal-elasticsearch-resources-in-kubernetes/#reducing-memory)
只需要修改`esJsOptions=-Xmx1g -Xms1g`里的1g为你的内存限制即可。

The [chart configuration](https://github.com/elastic/helm-charts/tree/master/elasticsearch#configuration) defaults the JVM heap size to 1GB with the parameter `esJsOptions=-Xmx1g -Xms1g`. We can override this, but to what? We can test on our local using the docker image directly:

#Elasticsearch 
bash

`MEM=96 && \
    docker rm -f elasticsearch && \
    docker run -d --name elasticsearch -p 9200:9200 \
        -e "discovery.type=single-node" \
        -e "ES_JAVA_OPTS=-Xms${MEM}m -Xmx${MEM}m" \
        elasticsearch:7.10.1`
		


		
		
