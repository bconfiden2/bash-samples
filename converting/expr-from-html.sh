#!/bin/bash

# href 태그를 위한 expr 패턴 안에 들어갈 정규표현식 처리들
quote="[\"']"
match="[^\"']*"

# html 파일 경로명을 매개변수로 받음으로써, 해당 파일을 한줄씩 읽어 line 으로 가져옴
while read line
do
    # (expr 변수명 : 패턴) 형식으로 사용할 경우, 변수에서 패턴 내에 괄호로 묶인 부분을 출력
    output=$(expr "$line" : ".*href=${quote}\(${match}\)${quote}.*")
    # expr 은 패턴과 일치할 경우에만 정상 종료(0)
    if [ $? -eq 0 ]; then
        echo $output
    fi
done < $1