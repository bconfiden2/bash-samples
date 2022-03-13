#!/bin/bash

# 선언되지 않은 변수 사용시 에러 발생
set -u

FOO=input
cat $FOO

# 실행시 인자로 받는 값이 없을 경우 에러 발생
echo argument 1 : "$1"
echo argument 2 : "$2"