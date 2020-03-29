ブロードキャストアドレス ... ホスト部が全部１
ネットワークアドレス....ホスト部が全部０
ホスト...NW上でIPアドレスを持っているもの
### クラス
クラスA　ネットワーク部が８ビット
サブネットマスクが255.0.0.0
00000000.00000000.00000000.00000000
~
01111111.11111111.11111111.11111111
0.0.0.0 ~ 127.0.0.0 

クラスB　ネットワーク部が１６ビット
サブネットマスクが255.255.0.0
1000000.00000000.00000000.00000000
~
10111111.11111111.11111111.11111111
128.0.0.0 ~ 191.255.255.255

クラスC　ネットワーク部が２４ビット
サブネットマスクが255.255.255.0
11000000.00000000.00000000.0000000
~
11111101.11111111.11111111.1111111
192.0.0.0 ~ 223.225.225.225


つまり
01  ... A
10 .. B
11 .. C

プライベートアドレス ... 何？？？
10.0.0.0
172.16.0.0
192.168.0.0  なぜ？？？

/etc/services ... IPとポートの関係
/etc/hostname ... ホスト名が記載
/etc/hosts ... hostメイトIPの関係
/etc/network/interfaces ... debian系でNWの設定
/etc/sysconfig/network-script/  ...  rhel 系のNW設定、IPを固定で割り当てたいときはこれ
systemctl status NetworkManager
nmcli ... NWの管理するこまんど
hostnamectl ... ホスト名の設定
ping ... ICMPパケットを送る
tracerout ... 伝送ルート
tracepath ... tracerouteと一緒
netstat ... networkの情報
nc  ... netcat 
rout ... routerの設定
ifconfig ... 

## DNS
www.google.com
www ... hostname
google.com ... domain name
www.google.com ... FQDN

/etc/resolve.conf ... refference dns server
名前解決の手段　/etc/hosts or LDAP or DNS
/etc/nsswitch.conf ... 名前解決の手段
host ip/hostname ... 名前解決
dig ... DNSの情報を取得

プライベートアドレスのクラスB
172.16.0.0 ~ 172.31.255.255

## well known port
20 ... ftp control 
21 ... ftp data
22 ... ssh
23 ... telnet
110 ... pop3
53 ... dns
161 .. SNTP ... NW

IPV6 ... 128ビット
IPV4とIPV6は直接は通信できない
