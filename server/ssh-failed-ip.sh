#!/bin/bash

# sshd 로그 파일 - /var/log/secure 혹은 /var/log/auth.log
logfile="/var/log/auth.log"

# sed에서 사용할 패턴 문자열을 따로 관리
# 후방참조로 IP 주소만 출력하게끔 만드는 패턴
pattern="^.*sshd\[.*\].*Failed password for.* from \(.*\) port .*"

# -n 옵션 & p 플래그 : 일치한 부분만 표시
# 파이프로 넘겨 주소별로 등장횟수를 세고, 내림차순으로 정렬(-nr)하여 출력
sed -n "s/$pattern/\1/p" $logfile | sort | uniq -c | sort -nr