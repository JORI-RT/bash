#!/bin/bash

trap "echo 'trapped.';python hello.py; exit 0;" 2

while true; do
sleep 3;
echo loop
done
