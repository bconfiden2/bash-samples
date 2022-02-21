#!/bin/bash

trap '
    echo Hello World!
    exit
' INT

cnt=0
while true; do
    cnt=$(( $cnt + 1 ))
    echo $cnt
    sleep 2
done