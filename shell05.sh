#!/bin/bash
#Shell字符串
#单引号
str='this is a string'
your_name='ysw'
#双引号
str="Hello,I know you are \"$your_name\"! \n"

#字符串拼接
yours_name="ysw"
greeting="hello,"$yours_name"!"
greeting_1="hello,${yours_name} !"

echo $greeting $greeting_1

#获取字符串长度
str="abcd"
echo ${#str}

#提取子字符串
str="alibaba is greater company"
echo ${str:1:4}

#查找子字符串
str="alibaba is great company"
echo `expr index "$str" is`
