#!/bin/bash
#
# @Description : GreenBox
#
# @Date        : 2019-06-12 11:15
# @Author      : Jade
#
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
export PATH
# $p=100
# if [ ! $1 ]; then  
#    echo 'ERROR: Need to apply loop param'    
#    exit  
# fi  
for i in $(seq 300 1000000)
do 
   time=`date +'%G-%m-%d %H:%M:%S' -d '-1 days'`
   timedatectl set-time "$time"
   /bin/bash ./init.sh
   echo "休息15m"
   sleep 15m
done
