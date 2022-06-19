#!/bin/bash

# 모니터링할 프로세스 지정
process_name="/usr/bin/kubelet"

# 대상 프로세스 수 확인
# ps ax로 모든 프로세스 표시, 그 중 타겟 프로세스명만 확인, grep 프로세스는 제외
cnt=$(ps ax -o command | grep $process_name | grep -v "^grep" | wc -l)

# 해당 결과가 0이면 프로세스가 존재하지 않는다는 뜻
if [ $cnt -eq 0 ]; then
    echo $process_name not exist! >&2
fi