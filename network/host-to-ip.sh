#!/bin/bash

hn=$1

echo -n Address of "$hn: "

# host 결과에서, has address 패턴과 일치하는 줄의 마지막 컬럼 출력 
host $hn | awk '/has address/ {print $NF}'