#!/bin/bash
if find hoge 1> /dev/null 2>&1; then
    echo ok
else
    echo NG
fi