#!/bin/bash
#shell printf格式化输出语句
#printf命令不用加括号
#format-string 可以没有引号，但是最好加上，单引号,双引号均可
#参数多于格式控制符的时候，format-string可以重用，可以将所有参数都转换
#arguments使用空格进行分割，不用逗号 

#格式控制双引号
printf "%d %s\n" 1 "abc"

#单引号和双引号效果一样
printf '%d %s\n' 1 "abc"

#没有引号也可以输出
printf %s abcded

#格式只是指定了一个参数，但多出的参数仍然会按照该格式输出，format-string被重用

