#!/bin/bash
#字符串运算符
a="abc"
b="efg"

if [ $a = $b ]
then
   echo "$a=$b: a is equal to b"
else 
   echo "$a=$b: a is not equal to b"
fi

if [ $a != $b ]
then
   echo "$a!=$b: a is not equal to b"
else
   echo "$a!=$b: a is equal to b"
fi

if [ -z $a ]
then
   echo "-z $a:String length is zero"
else
   echo "-z $a:string length is not zero"
fi

if [ -n $a ]
then
   echo "-n $a:String length is not zero"
else
   echo "-n 4a:String lentgth is zero"
fi

if [ $a ]
then
   echo "$a:String is not empty"
else
   echo "$a:String is empty"
fi
