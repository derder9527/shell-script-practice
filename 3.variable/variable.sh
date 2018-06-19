#!/bin/bash
#輸出字串告訴使用者可以輸入檔名
echo "Plz input fileName you want "
#read command 可以讀取user的輸入並把他輸入到一個指定的變數中 ,read [指定的變數]
read userInput
#剛剛user的輸入已儲存在變數userInput中，利用這個變數創建新的檔案
touch $userInput
#計算一下剛剛使用者輸入的字串有幾個字元並將結果儲存在inputCharNum變數中
inputCharNum=$(echo $userInput | wc -c)
#將計算結果寫入在剛剛創立的檔案內容裡
echo "Your fileName has $inputCharNum character(enter count 1 )" >> $userInput
#將結果輸出告訴使用者
echo "your file $userInput have created , this is it's content: "
cat $userInput

