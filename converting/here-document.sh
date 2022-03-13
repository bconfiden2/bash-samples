#!/bin/bash

# here document:
# 특정 문자열(현재는 _EOT_) 사이에 포함된 텍스트를 원하는 명령어의 표준입력으로 지정
wc -l << '_EOT_'
a
b
c
d
_EOT_

# $FOO가 확장이 일어나며 텍스트 그대로 인식되지 않음
FOO=hello
cat << XXX
FOO
$FOO
hello
XXX

# 이스케이프 사용 가능
FOO=hello
cat << XXX
FOO
\$FOO
hello
XXX

# here document 의 문자열에 따옴표를 넣어줄 경우에도 확장 제어
FOO=hello
cat << 'XXX'
FOO
$FOO
hello
XXX