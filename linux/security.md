## デーモン管理
デーモン...メモリに常駐してサービスを提供するプログラム
inetd ... super server that managing server process
xinetd ... basicary this one used to everyone
    xinetd.conf ...
    xinetd.d
TCP Wrapper ... deamon にたいする要求をフィルタリング,実態はtcpd
    /etc/hosts.allwo
    /etc/hosts.deny
## ポートの確認
netstat -atu ... 空いているポートを確認する
ss -atu .. 空いているポートを確認する
lsof -i ... 空いているポートを確認する
nmap ... ポートスキャン　リモートホストの空いているポートをスキャン
fuser ... 
## 権限
su , su - 違い... -をつけると環境が変わる
SUIDを設定したファイルはセキュリティ的に危ない
find / -perm -u+s
change ... パスワードの有効期限を変更
/etc/nologin ... root以外のログインを禁止
/bin/false ... あるユーザのログインシェルに設定することでログインを禁止
/bin/nologin ... あるユーザのログインシェルに設定することでログインを禁止
sudo 
    visudo ... /etc/sudoersを編集するコマンド
    /etc/sudoers　... 誰にsudoでコマンドをうてるかとかを設定する
    sudo -l ... 自分に許可されているコマンドをみれる
ulimit ... ユーザのリソース制限をする
## Open ssh
リモートホストとの通信を暗号化
v1 ... RSA1
v2 ... DSA RSA 
ホスト認証...サーバからクライアントに公開鍵がわたされて以前のと一致しているか
~/.ssh/known_hostsに保存される

ssh_keygenで公開鍵と秘密鍵のペアを作る
公開鍵を接続先の~/.ssh/authorized_keysに登録する

### ssh-agent
ssh-agent bash ... ssh-agentの子プロセスとしてbashプロセスを起動
ssh-add ... パスフレーズをメモリ上に保持し、秘密鍵にアクセスする際に利用するパスフレーズを聞かれないようにする

## #ポートフォワーディング
ssh -L -f -N ローカルポート:リモートホスト:リモートポート　リモートホストのユーザ名@リモートホスト
-L ... ポートフォワーディング
-f ... バックグラウンド起動
-N ... 転送のみ

## ファイルの暗号化 GPG
GnuPG ... GNU privacy gard. file encryption to use public key.
gpg ... public key/private key generate
gpg --full-generate-key
~/.gnupgディレクトリができてpubring.gpg,secret.gpgができる
失効証明...もれたときにほげほげ
### GPG 共通鍵による暗号化
gpg -c filename
gpg -decrypt filename
### 公開鍵をもちいた暗号化
1. ファイルにエクスポート
gpg -o filename -a --export fred@gmai.com
2. 相手に送る
3. もらったらインポート
gpg --import publickey

gpg --edit-key