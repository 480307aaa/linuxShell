#!/bin/bash
#shell数组


NAME[0]="zara"
NAME[1]="qadir"
NAME[2]="Machnaz"
NAME[3]="AYAN"
NAME[4]="Daisy"
echo "First INdex:${NAME[0]}"
echo "Second Index:${NAME[2]}"

#使用@或者*可以获取数组中的所有元素
echo "All elements:${NAME[*]}"
echo "All elements:${NAME[@]}"

#获取数组的长度
length=${#NAME[*]}
echo "Array length is $length"
