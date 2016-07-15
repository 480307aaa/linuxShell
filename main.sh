#!/bin/bash
#shell文件包含:可以将外部脚本的内容合并到当前脚本
#可以使用source filename或者. filename的形式
#例如创建两个脚本，一个被调用脚本subscript.sh,内容如下:
#URL="Hello world!"
#另一个主文件main.sh,内容如下：
. ./subscript.sh
echo $URL
#注意：被包含脚本不需要有执行权限。
