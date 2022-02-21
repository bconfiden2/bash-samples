#!/bin/bash

# -e : 메시지들이 이스케이프 시퀀스를 인식할 수 있게하는 옵션
echo "\033[47;31mHello, world!\033[0m"
echo -e "\033[47;31mHello, world!\033[0m"

# 패턴 : \033[특징;색1;색2m [메시지] \033[0m
echo -e "\033[0;33;44mHello, world!\033[0m"
# 1 : 굵게
echo -e "\033[1;33;44mHello, world!\033[0m"
# 4 : 밑줄
echo -e "\033[4;33;44mHello, world!\033[0m"
# 7 : 색깔 뒤집기
echo -e "\033[7;33;44mHello, world!\033[0m"

echo Hello, world!