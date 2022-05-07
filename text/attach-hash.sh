#!/bin/bash

# null 파일로 초기화
tmpfile="$1".hash
:> $tmpfile

# 셸 구분자로 줄바꿈만 지정
IFS_BACKUP=$IFS
IFS='
'

# $1 을 while 문에 리디렉션 시켜 line 변수로 받아옴
while read -r line
do
    # 한줄한줄 md5 해시값을 출력하여 임시파일에 append
    echo -n $line | md5sum | awk '{print $1}' >> $tmpfile
done < $1

# 입력파일과 임시파일(해시값) 횡방향으로 연결하여 출력
paste -d, $1 $tmpfile

# IFS 변수값 복원
IFS=$IFS_BACKUP