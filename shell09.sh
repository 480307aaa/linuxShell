#!/bin/bash
#Shell for 循环
#in 后面没有内容的时候则默认遍历用户键盘输入的内容
#例子1：顺序输出当前列表中的数字
for loop in 1 2 3 4 5
do
    echo "The value is :$loop"
done
#例子2：顺序输出字符串中的字符
for str in ' This is a string'
do
    echo $str
done
#例子3：显示主目录下以.bash开头的文件
for FILE in $HOME/.bash*
do 
    echo $FILE
done
