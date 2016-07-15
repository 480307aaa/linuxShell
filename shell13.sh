#!/bin/bash
#shell函数返回值/删除函数/在终端调用函数
#shell函数返回值只能是整数，用来表示函数执行成功与否，下面给一个example

Hello(){
	echo "Hello world!"
}
#调用函数只需要给出函数名，不需要加括号
Hello

#下面再给一个带return语句的函数：
funWithReturn(){
	echo "The function is to get the sum of two number..."
	echo  -n "Input first number:"
	read aNum
	echo -n "Input another number!"
	read anotherNum
	echo "The two numbers are $aNum and $anotherNum!"
	return $(($aNum + $anotherNum))
}
funWithReturn
#函数返回值在调用该函数后通过$?来获得；
ret=$?
echo "The sum of two numbers is $ret!"
#再来看一个函数嵌套的例子
number_one(){
      echo "HelloWorld!"
#函数number_one中调用函数number_two
      number_two
}
number_two(){
      echo "function2!"
}
#调用函数number_one
number_one


#删除函数
#像删除变量一样，删除函数也可以使用unset命令，不过要加上.f选项
#如：unset .f function_name

#终端调用函数，可以将函数定义在主目录的.profile文件，这样每次登陆后，在命令提示符后面输入函数名就可以立即调用
