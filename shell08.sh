#!/bin/bash
#Shell case esac语句
#case... esac与其他语言中的switch ... case语句类似，是一种多分支选择结构
echo "Input a number between 1 to 4"
echo "Your number is:\c"
read aNumber
case $aNumber in
	1) echo "You select 1"
	;;
	2) echo "you select 2"
	;;
	3) echo "You select 3"
	;;
	4) echo "You select 4"
	;;
	*) echo "You do not select a number between 1 to 4"
	;;
esac
#再考虑一个例子
#${1},输入的第2个参数
#${2},输入的第3个参数
#${0},输入的第1个参数
#`basename $0`值显示当前脚本或命令的名字 
#我们运行这个脚本的时候 ./shell08.sh -f index.html
#分别为第一个参数/第二个参数/第三个参数
option="${1}"
case ${option} in
	-f) File="${2}
	    echo "File name is $File"
	;;
	-d) DIR="${2}
	    echo "DIR name is $DIR"
	;;
	*)
	    echo "`basename ${0}`;usage: [-f file] | [-d directory]"
	    exit
	;;
esac
