### 什麼是 command exit status ?

摘錄自[wiki](https://en.wikipedia.org/wiki/Exit_status)

```wiki
For the shell’s purposes, a command which exits with a zero exit status has succeeded. A nonzero exit status indicates failure.
⋯⋯
⋯⋯
If a command is not found, the shell should return a status of 127. If a command is found but is not executable, the return status should be 126.[2] Note that this is not the case for all shells.


```

簡單的說就是程序的執行結果，執行成功就會回傳一個0 ，非0的數值就是代表失敗(特殊的127那些先不談)。

---

### 要怎麼讀取exit status ?

`echo $?`

使用 `$?` 就可以讀取到上一個指令執行的exit status ，而執行一個script(`sh someScript.sh`)後再去讀取exit status則會得到該script最後一個執行的status(若該script為空，則exit status為`sh someScript.sh`的結果)。

`someScript.sh`

```bash
#!/bin/bash
echo "rename file before"
ls
mv before after
```

---

目錄內並沒有建立名為before的檔案，試執行腳本

```bash
[derder@localhost 5.exit-status]$ sh someScript.sh 
rename file before
someScript.sh
mv: 無法 stat ‘before’: 沒有此一檔案或目錄
[derder@localhost 5.exit-status]$ echo $?
1
```

因為腳本的最後一個指令為`mv before after` ，**故exit status 為1**。

---

目錄內建立名為before的檔案後，試執行腳本

```bash
[derder@localhost 5.exit-status]$ sh someScript.sh 
rename file before
before	someScript.sh
[derder@localhost 5.exit-status]$ echo $?
0
```

腳本最後一個指令`mv before after` 執行成功，**故exit status 為0**。

---

### 利用exit status 來做簡單的邏輯控制 

` command1 && command2`

如果command 1 的 **exit status =0** 則執行command2

``` bash
mv before after && ls
```

只有在成功把before rename 為 after的情況下，才會執行ls

---

`command1 || command2`

如果 command 的 **exit status !=0** 則執行command2

```bash
mv before after || ls
```

只有在無法把before rename after的情況下，才會執行ls

[Source at Github](https://github.com/derder9527/shell-script-practice/tree/master/5.exit-status)

