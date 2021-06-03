#!/bin/bash
echo "Hello World !"
# 自动更新
cd /home/terry/同步盘/app/napoler.github.io/
/usr/bin/git add .
/usr/bin/git commit -m "autouplaod"
/usr/bin/git pull
/usr/bin/git push