#!/bin/bash

echo -n 'Host -> '
read Host
echo -n 'username -> '
read username
echo -n 'hostname(FQDN or IP) -> '
read hostname
echo -n 'port -> [22] '
read port
if [ -z "$port" ] ; then
  port='22'
fi
echo -n 'password ( or passfrase ) -> '
read password
if [ -z "$password" ] ; then
  password='defaultpassword'
fi
echo -n 'key path -> [] '
read keypath
if [ -z "$keypath" ] ; then
  keypath='none'
fi

touch ~/.ssh/config
cd ~
echo 'Host '$Host >> .ssh/config
echo '  HostName '$hostname >> .ssh/config
echo '  User '$username >> .ssh/config
echo '  Port '$port >> .ssh/config
if [ -n "$keypath" ] ; then
  echo '        IdentityFile '$keypath >> .ssh/config
fi
echo '  #'$Host'pass '$password >> .ssh/config

cr="\n"

expect -c "
  spawn ssh $Host
        expect \"password:\"
        send $password$cr
  interact
"