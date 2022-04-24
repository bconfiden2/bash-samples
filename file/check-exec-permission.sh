#!/bin/bash

script=$1

# 실행 권한 여부 테스트(-x)
# if test -x "$script"; then   이랑 동일한 구문!
if [ -x $script ]; then
    ./$script
else
    echo "ERROR: no -x permission in $script" >&2
    exit 1
fi