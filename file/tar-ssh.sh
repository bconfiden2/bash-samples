#!/bin/bash

username="bconfiden2"
server="h02"

# c - 아카이브 작성
# v - 처리한 파일 표시(verbose)
# f - 아카이브 파일 사용
# - 옵션을 통해 표준출력으로 리디렉션
tar cvf - input | ssh "$username"@"$server" "cat > remote_tar"