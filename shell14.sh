#!/bin/bash
#shell函数参数
funWithParam(){
	echo "The value of the first parameter is $1 !"
	echo "The value of the two   parameter is $2 !" 
	echo "The value of the ten parameter is $10 !"
	echo "The value of the ten parameter is ${10} !" 
	echo "The value of the eleventh parameter is ${11} !" 
	echo "The amount of the parameter is $# !"
	echo "The amount of the parameter is $* !"
}
funWithParam 1 2 3 4 5 6 7 8 8 34 73
	
