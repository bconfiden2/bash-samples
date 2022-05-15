#!/bin/bash

# 입력받은 모든 파일들에 대해
for filename in $@
do
    # 해당 파일을 읽어 파이프라인으로 넘긴 뒤
    # sed 가 가져가서 빈 줄, 탭, 스페이스만 있는 줄을 삭제하여 리디렉션
    # sed /패턴/d 는 패턴과 일치하는 라인 삭제
    cat $filename | sed '/^[[:blank:]]*$/d' > "$filename".tmp
done