# ブートローダ
## GRUB Legacy
grub-install 
/boot/grub/menu.lst
/boot/grub/grub.conf
```sh
# /dev/sdaのMBRにgrubをインストール
grub-install /dev/sda
```
## GRUB2
/boot/grub/grub.cfgの編集は
/etc/default/grubで設定し、grub-mkconfigを実行で/boot/grub/grug.cfgができる

# 共有library
/lib or /usr/lib
billd にパスを設定し、ldconfigを実行/etc/ld.so.chacheに書かれる

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:hoge
共有ライブラリの拡張子は.so  静的ライブラリの拡張子は.a

# Package Management

## Debian形式
### dpkg
```
dpkg -E ... 同バージョンがインストールされてたら、インストールしない
dpkg -G ... 最新がほげ
dpkg -R 再帰的なしょり
dppkg -i --install 
dpkag -P  --purge アンインストール
-S --search  -s --status
-l --list インストールされているpkg一覧
-L --listfile そのPKGに含まれているファイル一覧
dpkg-reconfig
-r 設定ファイルを残してアンインストール

```

### apt-get
```sh
-d downloadのみ
-s テスト実行　実際には処理をしない

apt-get clean 削除
apt-get dist-upgrade ... distributionのアップデーと
```
## RPM形式
### rpm
-i install
-h 
### yum
/etc/yum.conf
/etc/yum.repos.d