proconTest
==========

Automation script for output validation in programming contest form

#プログラミングコンテストのテストを自動化

## １． start.sh
* 回答作成のベースとなるスケルトンファイル
* テスト用の入出力ファイル
を自動生成するスクリプト

## ２．testpc.sh
* g++でコンパイルし，
* テスト用の入力ファイルで出力が正しく得られるか
を検査するスクリプト

の２点を作成した．


使用方法
==========

## スケルトンファイル生成
    ./start.sh name.cpp

* name.cpp      #cppソース
* name.cpp.in   #テスト用標準入力
* name.cpp.out  #期待される標準出力
が生成される．適宜各ファイルを編集する．

## name.cppの出力テスト

    ./testpc.sh name.cpp

これにより，name.cpp.inを入力にしたとき，出力がname.cpp.outと一致するのかチェックする．
一致する場合にはCorrect,不一致の場合はIncorrectが出力される

## 手動デバッグするとき
testpc.shを使うと標準出力がファイルに行ってしまってみにくいときなど

    g++ name.cpp
    ./a.out < name.cpp.in
