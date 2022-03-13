#!/bin/bash

# 쉘스크립트명을 하드코딩하지 않고 basename 으로 가져오기
name=`basename $0`

# 파라미터 수 $# 을 가져와서 1개인지 확인
if [ $# -ne 1 ]; then
    echo "Usage: $name arg" 1>&2
    exit
fi

echo argument: $1