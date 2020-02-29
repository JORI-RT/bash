#!/bin/bash
if [ -f cc ]; then 
    rm -f cc
fi
touch cc

for data in `cat $1`
do
    flg="false"
    for key in `cat key`
    do
        if [[ $data == *$key* ]]; then
            echo "$key=nextvalue()">>cc
            flg="true"
        fi
    done
    if [[ $flg == "false" ]]; then
        echo $data>>cc
    fi
done

function containsKey(){
    for key in `cat key`
    do
        if [[ $data == *$key* ]]; then
            echo "$key=nextvalue()"
        fi
    done 
}