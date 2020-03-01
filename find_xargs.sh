find . -name "*.log" | xargs rm -fv
find . -name "*.log" -exec rm -fv {} \;

## ドライラン　.. 生成したコマンドを確認する
find . -name "*.log" | xargs -p rm -fv

# コマンドに引数が2個以上必要なとき、指定する必要あり
find . -name "*.log" | xargs -i cp {} /tmp/.


# 一括置換  https://qiita.com/blackenedgold/items/3231c8adec40b350cf33
find . -name "*.jmx" | xargs sed -i '' "s/xxxxx/localhsot/g"