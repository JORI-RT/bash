# BIOS
２TB
UEFI

# systemd
systemctl reboot
systemctl perweroff
wall で送る
## unit
- service
- mount
- device
- target 複数のunitをグループ化する
- swap

default.taget  ...   /etc/systemd/system/default.target
runlevel == target

### SysVinit
shutdown  -h
-r reboot  -f fsckす1 -F fsckしない
-k 実際にはしない　メッセージを送る -c キャンセルする

依存関係を管理者がコントロールする必要がある
シリアルなので遅い
#### 起動管理
/etc/rc3.d  runlevel 3　サービススクリプト
/etc/rc2.d/Shogehoge
/etc/rc2.d/Khogehoge シンボリックリンク
/etc/init.d  サービススクリプトの本体
### Upstart
