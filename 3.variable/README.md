### 什麼是變數？

一塊記憶體位址被系統劃分來儲存資料，可以是字串，也可以是數字。

Shell script 宣告變數時不用決定型別，只要透過決定變數名稱後即完成變數宣告

`variableName=variableValue`

- 變數宣告規則

  - 區分大小寫

    > VAR != var

  - 宣告變數時等號左右不得有空白

    > var=correct
    >
    > var = wrong

  - 變數可由英文字母與數字組成，但數字不可在第一個字元

    > var1=correct 
    >
    > 1var=wrong

---

### 變數可以幹嘛？

將資料更抽象相依在指定的變數上，讓一個指定的變數代表一件事情，或者一個結果。

在command-line中可以透過`cd $OLDPWD`回到上一個目錄(不是上一層！是上一個喔)，靠的就是系統變數 `$OLDPWD`儲存著代表上一個目錄的資料，隨著`cd` 切換目錄去哪裡，這個變數會不停的更新，讓其資料永遠只代表一個意義，就是上一個目錄路徑。



### ---

- 將使用者輸入的字串當成檔名創建一個新的檔案，並在內容中加上該字串的長度

  ```Bash
  #!/bin/bash
  #輸出字串告訴使用者可以輸入檔名
  echo "Plz input fileName you want "
  #read command 可以讀取user的輸入並把他輸入到一個指定的變數中 ,read [指定的變數]
  read userInput
  #剛剛user的輸入已儲存在變數userInput中，利用這個變數創建新的檔案
  touch $userInput
  #計算一下剛剛使用者輸入的字串有幾個字元並將結果儲存在inputCharNum變數中
  inputCharNum=$(echo $userInput | wc - c)
  #將計算結果寫入在剛剛創立的檔案內容裡
  echo "Your fileName has $inputCharNum character(enter count 1 )" >> $userInput
  #將結果輸出告訴使用者
  echo "your file $userInput have created , this is it's content: "
  cat $userInput
  
  ```

- Output 

  `sh variable.sh`

    ![variables](https://github.com/derder9527/shell-script-practice/blob/master/3.variable/3.variable.gif?raw=true) 



[Source code at github](https://github.com/derder9527/shell-script-practice/tree/master/3.variable)

