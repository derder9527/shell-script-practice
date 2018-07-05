接續上一篇的[shell-script if-then](http://dodo9527.pw/blog/wordpress/shell-script-if-then/)，這篇多了一個`否則`的概念，現實生活中的問題是複雜的；如果要用一個又一個的`如果⋯⋯則`來列舉所有程序會碰到的情境，這幾乎是不可能完成的，所以這時候就要引進一個概念---

**否則(else)**：除了指定(if)情境(statement)外的都是。

讓我們繼續介紹小德

### 小德是個匈奴，小德是怎麼擇偶的？

小德喜歡大胸部的女人，小德去相親認識了一個叫小雯的女人⋯⋯小德會？

**列出小德的思考程序**

```
如果 小雯的胸部是A罩杯
則
小德只會跟小雯說聲哈囉
結束

如果 小雯的胸部是B罩杯
則
小德只會跟小雯說聲哈囉
結束

如果 小雯的胸部是C罩杯
則
小德只會跟小雯說聲哈囉
結束
⋯⋯
⋯⋯
如果 小雯的胸部是G罩杯
則
小德對小雯展開追求
小雯拒絕小德
小德對小雯死纏爛打
小德和小雯結婚生子
結束

如果 小雯的胸部是H罩杯
則
小德只會跟小雯說聲哈囉
結束
⋯⋯
⋯⋯

```

從這段思考程序我們可以看出來小德最喜歡G罩杯的女性，而小雯卻是一個可能擁有任何罩杯的女性，在相親時又不能因為不符合擇偶條件就連哈囉都不說，所以我們在撰寫小德這段程式時必須要從A罩杯寫到Z罩杯！

這時候把程序反向思考一下，再加上個`否則`是不是就可以讓我們少寫很多程式碼，還可以把沒想到的情境也一起覆蓋(可能會有沒有罩杯的第三性)！

```
如果 小雯的胸部是G罩杯
則
	小德對小雯展開追求
	小雯拒絕小德
	小德對小雯死纏爛打
	小德和小雯結婚生子
否則
	小德只會跟小雯說聲哈囉
結束
```

透過`否則`，我們把程式碼縮短了，而且不管小雯是台灣人，中國人，美國人，不是人，外星人 小德都會和她說聲哈囉

把上述轉成符合script syntax 的表述式

```bash
if [小雯的胸部是G罩杯]
then
	小德對小雯展開追求
	小雯拒絕小德
	小德對小雯死纏爛打
	小德和小雯結婚生子
else
	小德只會跟小雯說聲哈囉
fi
```

---

### 製作一個：如果檔案存在就更名，不存在就新建再更名的script

讓user輸入一個檔案名稱，如果檔案不存在就新建該檔案，接著讓user再輸入一個新的檔案名稱，讓舊檔案更名為新檔案

```
#!/bin/bash
#this script rename file anyway
echo -e  "which file you want to rename ?   \c"
read sourceFile
# if [表述式] = if test 表述式 ＃ -f 查看檔案是否存在
if test -f $sourceFile
then
    # 如果檔案存在則執行以下指令
    echo -e  "the file $sourceFile exist\nPlz input the new file name "
    read targetFile
    mv $sourceFile $targetFile
    ls
else
    #如果檔案不存在則執行以下指令
    touch $sourceFile
    ls
    echo -e  "the file $sourceFile not exist,create one for you \nPlz input the new file name "
    read targetFile
    mv $sourceFile $targetFile
    ls
#用 fi 結束開頭的 if 判斷句
fi

```



![if-then-else_demo](https://raw.githubusercontent.com/derder9527/shell-script-practice/master/7.if-then-else/if-then-else_demo.gif)

[Source code at Github](https://github.com/derder9527/shell-script-practice/tree/master/7.if-then-else)

