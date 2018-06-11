### 第一個shell-script **helloworld**

---
- 什麼是 **shell script** ?

user透過shell可以操作系統達成各種目標，編寫好一個文件檔，讓shell可以照著執行的腳本就是shell script！把它當成作業系統的程式語言，自動化所有重複的工作！

- 寫shell script有什麼好處？

script 就是一種可以傳遞的文件檔案，透過shell script 可以統一管理各個伺服器，讓人類從重複的事務中解放！

- shell script的規則與細節(節錄並編輯自 [鳥哥](http://linux.vbird.org/linux_basic/0340bashshell-scripts.php#script_1st))

```
    指令的執行是從上而下、從左而右的分析與執行；
    指令的、選項與參數間的多個空白都會被忽略掉；
    空白行也將被忽略掉，並且 [tab] 按鍵所推開的空白同樣視為空白鍵；
    如果讀取到一個 Enter 符號 (CR) ，就嘗試開始執行該行 (或該串) 命令；
    至於如果一行的內容太多，則可以使用『 \[Enter] 』來延伸至下一行；
    『 # 』可做為註解！任何加在 # 後面的資料將全部被視為註解文字而被忽略！
```

- shell script 的執行
	- script 本身要可以直接執行，則該執行者必須擁有檔案的執行權限
	> `script.sh`
	- 透過 `sh` or `bash` 指令執行script 
	> `sh script.sh`

---
### 動手做第一個shell script 

***執行後會顯示helloworld在console上***
- 建立並編輯一個文檔 (可以開vi or 任何編輯器)
```Bash
# 用cat新建比較快ＸＤ
# script的名稱叫helloworld.sh ,postfix sh 表示這是shell script檔(不加後綴sh也是可以執行的喔！)
cat > helloworld.sh
#!/bin/bash
echo "helloworld"
```
> `#!/bin/bash`  這叫做[Shebang](https://en.wikipedia.org/wiki/Shebang_%28Unix%29)寫在每個script的第一個行，表示這個script要用/bin/bash 來直譯
> 注意！linux中的shell程序有很多種，有可能會發生沒有bash而換成dash的情況 [參考連結](https://kknews.cc/zh-tw/other/96vkgol.html)

- 執行剛剛建立的`helloworld.sh`
```Bash
sh helloworld.sh
```

- output(console)
```Bash
helloworld
```



