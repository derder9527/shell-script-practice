#!/bin/bash
#取上層目錄數字開頭的目錄數+1就是新的目錄次序
sequence=$(echo `ls .. | grep '^[0-9]' |wc -l `+1 |bc)
echo  "這是第$sequence 個practice，請輸入新的名稱"
read practiceName
folder=$sequence.$practiceName
mkdir ../"$folder"
if [ $? ]
then
  echo "資料夾：$folder 建立成功"
  touch ../$folder/$practiceName.sh
  echo "#!/bin/bash" >>../$folder/$practiceName.sh
  echo "#$practiceName\n" >>../$folder/$practiceName.sh
  echo "$practiceName.sh 建立成功"
  touch ../$folder/$practiceName"_demo.gif"
  echo "無內容gif：$practiceName"_demo.gif" 建立成功"
  touch ../$folder/README.md
  echo  "\n\n\n" >>../$folder/README.md
  echo "![$practiceName](https://raw.githubusercontent.com/derder9527/shell-script-practice/master/$folder/$practiceName"_demo.gif")">>../$folder/README.md
  echo  "\n\n\n" >>../$folder/README.md
  echo "[Source code at GitHub](https://github.com/derder9527/shell-script-practice/tree/master/$folder)">>../$folder/README.md
  echo "README.md 建立成功"
else
  echo "資料夾：$folder 建立失敗！"
  exit
fi
