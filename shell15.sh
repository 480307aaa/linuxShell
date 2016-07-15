#!/bin/bash
#shell输入输出重定向
#命令输出重定向的语法：
#command > file
#例如：who > /home/ysw/temFilei,这种形式会覆盖原文件中的内容
#使用>>,追加到文件的末尾


#输入重定向
#command < file
#例如：计算文件中的行数，可以使用下面的命令：wc -l < file


#重定向深入理解
#一般情况下，每个unix/linux命令运行时都会打开三个文件
#标准输入文件（stdin）：stdin的文件描述符为0，unix程序默认从stdin读取数据
#标准输出文件（stdout）：stdout的文件描述符为1，unix程序默认stdout输出数据
#标错误文件（stderr）：stderr的文件描述符为2，unix程序会向stderr流中写入错误信息#默认情况下，command > file将stdout重定向到file，command < file将stdin重定向到file
#如果希望将stderr重定向到file，可以使用：command 2> file
#追加错误输出到file可以使用：command 2>> file
#如果希望将stdout和stderr合并后重定向到file，可以使用：command > file 2>&1
#或者command >> file 2>&1
#如果希望对stdin和stderr都重定向，可以这样写：command < file1 > file2

#Here Document:这里先理解成嵌入文档
#格式：
#command << delimiter
#       document
#delimiter
#上面的作用是将两个delimiter之间的内容(document)作为输入传递给command

#下面给一个例子
cat << EOF
This is a simple lookup program
for good (and bad) restaurants
in Cape Town
EOF

#下面的脚本通过vi编辑器将document保存到text.txt文件
filename=text.txt
vi $filename << EndOfCommand
i
This file was created automatically from a shell script

ZZ
EndOfCommand

#/dev/null文件：一个特殊的文件，写入到它的内容都会被丢弃，有禁止输出的效果
#如果希望屏蔽stdout和stderr，可以这样写：
#command > /dev/null 2>&1
