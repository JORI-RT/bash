#!/bin/bash

passwd=`grep '  #'$1'pass' ~/.ssh/config | awk '{print $2}'`
cr="\n"

expect -c "
  spawn ssh $1
  expect \"password:\" {
    send $passwd$cr
  } \"passphrase\" {
    send $passwd$cr
  }
  interact"