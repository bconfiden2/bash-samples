#!/bin/bash

logfile="input"
if [ ! -f $logfile ]; then
    echo "$logfile not exist" >&2
    exit 1
fi

# 로그파일을 파이프로 넘기고, awk는 마지막에서 두번째 컬럼이 404일 경우 해당 라인 출력
# 아파치 로그에서는 뒤에서 두번째 컬럼이 http status 정보
# awk 내장 변수 NF - 컬럼 수
cat $logfile | awk '$(NF-1)==404 {print $0}' > "$logfile".404