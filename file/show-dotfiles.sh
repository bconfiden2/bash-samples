#!/bin/bash

# 쉘이 사용할 구분자 설정하는 변수
# 줄바꿈만 구분자로 사용, 공백과 탭은 사용X
BACKUP=$IFS
IFS='
'

# 파일명에 공백이나 탭 등이 포함될 경우 이를 구분하지 않음
# 특정 경로의 모든 파일
# -A : 숨김파일(닷파일) 포함하여 모든 파일 표시
# -F : 파일과 디렉토리 구별, / 표시
for filename in $(ls -AF $1)
do
    case $filename in
        .*)
            echo $filename
    esac
done

# 기존 IFS 값 복원
IFS=$BACKUP