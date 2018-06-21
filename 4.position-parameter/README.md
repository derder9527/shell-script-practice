### 什麼是 **position parameter**

Position parameter 是一個由shell所管理的變數集合，每當user透過shell執行一個腳本時就會產生這個集合。

假設user在cli中輸入：

`sh someCommand one two three four`

- 順序性

  指令中的空白就是position parameter的分隔字元，會根據指令產生對應的變數名稱(從數字0開始)

  | someCommand | One  | Two  | Three | Four |
  | ----------- | :--- | ---- | ----- | ---- |
  | $0          | $1   | $2   | $3    | $4   |

  `someCommand` 可以是執行的腳本名稱 -> 用`$0`這個變數名稱就可以存取到

  > `echo $0`

  `One` 是執行腳本時在腳本名稱後第一個空白(分個字元)後所出現的文字 

  > `echo $1`

  `Two` 是執行腳本時在腳本名稱後第二個空白(分個字元)後所出現的文字

  > `echo $2`

  下面的以此類推...........

- Parameter 內部留空白

  參數裡面的字串本身有空白，但是shell又是以空白字元來做切分，這時候請用雙引號`""`把要視為同一參數的數值(含空白)包在一起，如此shell就會把雙引號內的數值當成**一個參數**。

  `sh someCommand one "two three" four`

   此時於腳本內輸出`$2`會得到 `two three` 這個字串

- 一次存取全部參數 `$@` or `$*`

  

  

  - `$@` 

    一次顯示所有的Position parameter，不管$IFS的第一個字元是什麼，輸出的結果就是一堆用空白分隔的變數

  - `$*`

    一次顯示所有的Position parameter，變數間的空白將會被`$IFS`的第一個字元代替。

- 得到參數的總數`$#`

  `$#`返回Position parameter的總數。

### 怎麼使用 **position parameter**

- 開新的shell時設定 position parameter

`sh position-parameter.sh one two three four`

```Bash
#!/bin/bash
#輸出第零個parameter(腳本的名稱)
echo '$0='$0
#輸出第1個parameter
echo '$1='$1
#輸出第2個parameter 
echo '$2='$2
#輸出第3個parameter 
echo '$3='$3
#輸出第4個parameter 
echo '$4='$4
#輸出全部的parameter 
echo '$*='$*
#輸出全部的parameter
echo '$@='$@
#輸出parameter的個數
echo '$#='$#

```

![position-parameter_output](https://raw.githubusercontent.com/derder9527/shell-script-practice/master/4.position-parameter/position-parameter_output.gif)



- 在已開啟的shell中設定 position parameter

```Bash
#!/bin/bash
#直接設定parameter
set one two three four
#輸出第零個parameter(腳本的名稱)
echo '$0='$0
#輸出第1個parameter
echo '$1='$1
#輸出第2個parameter 
echo '$2='$2
#輸出第3個parameter 
echo '$3='$3
#輸出第4個parameter 
echo '$4='$4
#輸出全部的parameter 
echo '$*='$*
#輸出全部的parameter
echo '$@='$@
#輸出parameter的個數
echo '$#='$#
```

![position-parameter_set_output](https://raw.githubusercontent.com/derder9527/shell-script-practice/master/4.position-parameter/position-parameter_set_output.gif)



[Source code at Github](https://github.com/derder9527/shell-script-practice/tree/master/4.position-parameter)    

​    

REF:[Computer Hope](https://www.computerhope.com/jargon/p/positional-parameter.htm)

​    

​    

  

  

  

  