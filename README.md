# コマンド置き場

## 複数行を一気にファイルにリダイレクトする方法
```sh
## ヒアドキュメントの使い方
#EOFまでをtestにリダイレクト 
cat <<EOF > test
line1
line2
line3
EOF
```

## コマンドの結果が真かどうかで分岐される方法
```sh
# コマンドの出力を消している
if ls hoge 1> /dev/null 2>&1; then
    echo ok
fi
```
## コマンドの戻り値確認
```
ls hoge; echo $?
```
## シェルスクリプト内であれば、ファイル名、それ以外であれば最後のコマンドの引数 $_
```
mkdir azure_smaple && cd $_
```
