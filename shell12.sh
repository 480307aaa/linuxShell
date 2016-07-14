#!/bin/bash
#break和continue的用法
#break:
while :
do
     echo "Input a number between 1 to 5"
     read aNum
     case $aNum in 
	1|2|3|4|5)
		echo "Your number is $aNum!"
	;;
	*)      echo "You do not select a number between 1 to 5!"
		break;
	;;
     esac
done
#一个嵌套循环的例子，如果val1=2,并且 val2=0的时候就跳出循环

for val1 in 1 2 3
do
    for val2 in 0 5
    do
      if [ $val1 -eq 2 -a $val2 -eq 0 ]
      then
          break 2
      else
         echo "$val1 $val2"
      fi
    done
done

#continue命令：
#首先来看一个example
NUMS="1 2 3 4 5 6 7"
for NUM in $NUMS
do
    Q=` expr $NUM % 2 `
    if [ $Q -eq 0 ]
    then
    echo "Number is an even number!"
    continue
    fi
    echo "FOUND odd number"
done
