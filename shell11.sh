#!/bin/bash
#Until循环的用法
#until循环执行一系列命令直至条件为true时停止，刚好与for相反
#例子：
a=0
until  [ ! $a -lt 10 ]
do
      echo $a
      a=` expr $a + 1 `
done 
