#!/usr/bin/env bash

if [ $# -ne 1 ]; then # $#... 引数の個数　-ne ... not equal
    echo "You should specify a file name to check as an argument." >&2 # >...リダイレクト　&...ファイルディスクリプタ　2...標準エラー出力
    exit 1
fi

FILE_NAME=$1

if [ -f $FILE_NAME ]; then # -f ... ファイルが存在する、かつ　通常ファイル
    echo "$FILE_NAME exists."
    exit 0
elif [ -d $FILE_NAME ]; then # -d ファイルが存在し、ディレクトリ
    echo "$FILE_NAME exists," >&2
    echo "but it seems a directory." >&2
    exit 2
else
    echo "$FILE_NAME does not exist." >&2
    exit 3 # バグ。ここは本来 3 で終了すべき仕様
fi