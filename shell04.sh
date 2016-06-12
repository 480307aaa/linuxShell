#!/bin/bash
#文件测试运算符
 file="/home/ysw/shellTest/shell03.sh"

if [ -r $file ]
then 
   echo "File has read access"
else
   echo "File has not read access"
fi

if [ -w $file ]
then
   echo "File has write access"
else
   echo "File has not write access"
fi

if [ -x $file ] 
then
   echo "File has exec access"
else
   echo "File has not exec access"
fi

if [ -f $file ]
then
   echo "File is an ordinary file"
else
   echo "File is not an oridinary file"
fi

if [ -d $file ]
then
   echo "File is an directory"
else
   echo "file is not an directory"
fi

if [ -s $file ]
then
   echo "File size is zero"
else
   echo "File size is not zero"
fi

if [ -e  $file ]
then
   echo "File exit"
else
   echo "File not exit"
fi
