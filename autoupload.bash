#!/bin/bash
echo "Hello World !"
# 自动更新
cd /home/terry/同步盘/app/napoler.github.io/
git add .
git commit -m "autouplaod"
git pull
git push