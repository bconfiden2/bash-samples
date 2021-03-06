#!/bin/bash

# 모니터링할 프로세스 지정
process_name="/usr/bin/kubelet"
# 해당 프로세스 실행시킬 수 있는 명령어
process_start="systemctl restart kubelet"
# 최대 실행시킬 프로세스 수
threshold=3

# 대상 프로세스 수 확인
# ps ax로 모든 프로세스 표시, 그 중 타겟 프로세스명만 확인, grep 프로세스는 제외
cnt=$(ps ax -o command | grep $process_name | grep -v "^grep" | wc -l)

# 해당 결과가 0이면 프로세스가 존재하지 않는다는 뜻
if [ $cnt -eq 0 ]; then
    echo $process_name not exist! >&2
    # 프로세스 자동 재시작
    $process_start
fi

if [ $cnt -gt $threshold ]; then
    echo $process_name exceeds limit! >&2
fi