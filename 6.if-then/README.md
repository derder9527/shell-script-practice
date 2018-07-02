### If-Then 邏輯控制

要怎麼讓程序照自己想運作的方式執行呢？

- [x] 透過程式語言讓程序決策
- [ ] 拜神
- [ ] 找一個人住在電腦裡

透過最基本的 `if - Then` 邏輯控制就可以讓程序決策要怎麼處理資料

---

### 小德是個匈奴，小德是怎麼擇偶的？

小德是個喜歡大胸部的男人，假設今天小德看到了一個叫小鈴的女人，讓我們分析一下小德的大腦

> **如果** 小鈴的胸部是A罩杯
>
> **則**
>
> 小德裝作沒看到小鈴
>
> **結束**

前面又走過來一個叫小雯的漂亮女孩

> **如果** 小雯的胸部是F罩杯
>
> **則**
>
> 小德對小雯展開追求
>
> 小雯拒絕小德
>
> 小德對小雯死纏爛打
>
> 小德和小雯結婚生子
>
> **結束**

從上面的敘述就可以知道小德的大腦是怎麼決策的！

`如果` 是一個判斷句的開頭，`小鈴的胸部是A罩杯` 是一個陳述(statement)，判斷+描述，就可以達成一個決策，`則` 是決策以後要做些什麼事來回應，`結束` 用來結束這個判斷句。

把上述轉成符合script syntax 的表述式

``` bash
if [小鈴的胸部是A罩杯]
then
小德裝作沒看到小鈴
fi
```

***fi 就是if 的結束句***

----

### 製作一個：如果檔案存在就更名的script

讓user輸入一個檔案名稱，如果檔案存在就讓user再輸入一個新名稱，讓舊的檔案改名成新名稱。

```bash
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
	ls
#用 fi 結束開頭的 if 判斷句
fi

```



> If [ 表述式] 
>
> `-f` 查看檔案是否存在
>
> [更多options以及說明](https://linuxacademy.com/blog/linux/conditions-in-bash-scripting-if-statements/)
>
> [Introduction to if ](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html)

[SourceCode at Github](https://github.com/derder9527/shell-script-practice/tree/master/6.if-then)

