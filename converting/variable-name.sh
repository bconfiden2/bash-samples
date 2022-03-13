#!/bin/bash

# 원하는 파일명 - input
filename="inp"

# 이런 변수는 없기 때문에 에러 발생
cat "$filenameut"
# 변수명과 문자열 구분을 명확히
cat ${filename}ut
# 혹은 확장 제어로 구분짓기
cat "$filename"ut
# 아래는 그냥 cat 명령어와 동일하게 바뀌기 때문에 사용자 입력에 무한대기
cat $filenameut