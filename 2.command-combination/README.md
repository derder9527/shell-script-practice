### shell script 的組成 ?

Shell script 對我來說就像是**linux系統的程式語言**，這個程式語言是由command + 變數  +流程控制所組合，一個script的存在就是要操作系統完成一個（或多個）目標。

---

### how to write a script ?

寫script之前想想要系統幫你完成什麼事，會在terminal 會輸入那些command，那些是你的輸入，這個command的輸出會變成哪個command的輸入，碰到什麼情況你會改變達成目標的路徑，把上述想法具體化在script。

---

### start combine command 

*** 顯示目錄內所有檔案，再把黨名為text開頭的print出內容***

```Bash
#!/bin/bash
#顯示所有檔案
ls -l
#在 console 中print出字串
echo "Print text from text*"
#顯示prefix = text 的檔案內容
cat text*
```
- output

```Bash
總計 16
-rw-rw-r--. 1 derder derder 146  6月 14 13:26 command-combine.sh
-rw-rw-r--. 1 derder derder  24  6月 14 13:15 text1
-rw-rw-r--. 1 derder derder  24  6月 14 13:15 text2
-rw-rw-r--. 1 derder derder  24  6月 14 13:15 text3
Print text from text*
this text is from text1
this text is from text2
this text is from text3

```


![command-combine](https://github.com/derder9527/shell-script-practice/blob/master/2.command-combination/2.command-combine.gif?raw=true)

[Source code at github](https://github.com/derder9527/shell-script-practice/tree/master/2.command-combination)