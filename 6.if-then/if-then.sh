#!/bin/bash
#this script rename file if exist
echo -e  "which file you want to rename ?   \c"
read sourceFile
# if [表述式] -f 查看檔案是否存在
if [ -f $sourceFile ]
then
	# 如果檔案存在則執行以下指令
	echo -e  "the file $sourceFile exist\nPlz input the new file name "
	read targetFile
	mv $sourceFile $targetFile
	clear
	echo "rename success ! "
	ls
#用 fi 結束開頭的 if 判斷句
fi
