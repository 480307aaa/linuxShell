#!/bin/bash
#while循环的用法
COUNTER=0
while [ $COUNTER -lt 5 ]
do
      COUNTER=`expr $COUNTER + 1` 
      echo $COUNTER
done
#while循环可用于读取键盘信息

echo "type <CTRL-D> to terminate"
echo -n "enter your most liked film:"
while read FILM
do
      echo "Yeah , Greate file the $FILM"
done
