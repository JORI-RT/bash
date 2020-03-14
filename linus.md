## 1 
history -d 100
grep -i ... 大文字小文字の区別なし
tr a-z A-Z < file  ... 変換

## 2

## 3 


## 4　ファイルシステム管理
fdisk ... 作成済みパーティションを見る
mkswap　　
inode　ファイルシステムに作れるファイル数

df  ファイルシステムの使用率を調

fsck ... ファイルシステムチェック

## 5 マウントとクオーター
cat /proc/self/mounts = mount
クオータとはファイルに対してユーザごとに使用制限をかけられる
クオータはパーティション（ファイルシステム）ごとに設定する
usrquota
aquota.usr
quota.on

### quotaの設定手順
/etc/fstab のmountoptionにusrquotaオプションを設定
umount mount
quotacheck で　aquota.userを作成
quotaon で　開始
edquotaかsetquotaで編集
quotaで表示
quota -ug でログインユーザとグループで表示
パーティションごとに、書き込み制限ができる




## 4ファイル管理
ファイルのデフォルトは666  umask 022  -> 644
ディレクトリは777
chmod u user g group o other a all  chmode u+rwx,a+rx
実ユーザID　プロセスを起動したユーザであり、プロセスの所有者
実行ユーザID　プロセスが実行されるときの権限をもつユーザ

ハードディスクを接続
fdisk
mkfs
mount

fdisk  

 n 新規作成

 現在mountされているファイルシステムを表示


## 7ソフトウェア管理
# ldconfig 
ldd ... 共有ライブラリの依存関係

### rpm
rpm -U hoge.rpm  アップグレード（-F -i）
rmp -i hoge.rpm  インストール　アップグレードはしない
rmp -F hoge.rpm  アップデートのみ
rpm -e hoge  ... パッケージのアンインストール
rpm -ivh --force  -i install -v detail -h echo progress bar
rpm -qf package.conf  fでどこからインストールされたか

### yum 
yum list 
yum search
yum list installed
yum list updates
yum check-update
yum update 
yum remove
yum erase
yum upgrade
/etc/yum.conf
/etc/yum.repos.d


### apt-get
dpkgを管理　debian-package



## アーキテクチャ
init 6  再起起動
init 0 シャットダウン

lspci ... irqとか

udev ... devファイルの動的な作成、削除

## 起動
1. 電源
2. BIOS   ハードディスクの先頭領域に書き込まれたブートローダをメモリに展開
3. ブートローダ　　カーネルのコード（boot以下vmlinuzファイル）をメモリに展開
4. カーネル　自分を解凍、初期処理、最後にinitプロセス（initID1 ） を実行（sbin）initは/etc/inittabからファイルを読むinittabはランレベルとinitが起動するプログラムがかいてある
5. initプロセ /etc/inittabに書いてあるプログラムを実行　httpd sshd
6. サービス
7. ログイン画面

## ランレベ　/etc/inittab
0 停止
1 シングルユーザ　 メンテ用
3 マルチユーザ
5 マルチ＋GUI
6 再起動

init 1 telinit 1 シングルユーザに変更
/etc/inittabを修正後反映は telinit q


ブートローダはGRUB GRUB2
/boot/grub/grub.conf
/boot/grub/menu.lst
/proc/cmdline  ブートローダがカーネルに渡す引数が書いてある

GRUB2 ... grub-install /dev/hoge
core.img

## systemd
デーもん　/sbin/systemd
PID 1 
ユニットによってシステムを管理する　ハードウェア　ストレージ　

wall 



## 
スワップ領域は基本２倍　2Gを超えたら物理メモリ＋２G
シンボリックリンクファイル  lrwxrwxrwx. 
chown ryo.enginerr fileA
or 
chown ryo:enginerr fileA
/etc/yum.repos.d

/proc/cmdline

modprobe
expand -t3 file > file
-t タブを何におきかえるか
-i 先頭のみ
split 1000行で分割
uniq 
sort
join


clt b   vi k
ctl f   vi j
set -o vi ... standard test editor 