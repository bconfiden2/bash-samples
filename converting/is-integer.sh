#!/bin/bash

# expr 정수 연산자 정수 - 사칙연산 가능
# expr 1 + 3
# expr 2 \* 4 (확장 일어나지 않게 이스케이프)
# expr 11 / 2 (몫연산)
# expr 11 % 2

test "$1" -eq 0 1> /dev/null 2> /dev/null

if [ $? -lt 2 ]; then
    echo "Integer!"
else
    echo "Not Integer!"
fi