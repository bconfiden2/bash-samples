#!/bin/bash

str="hello world"

# $str 이 hello world 로 확장되면서 hello 와 world 를 따로 인식
# if [ $str = "hello world" ]; then
#     echo $str
# fi

# 따옴표로 묶어주면 변수명 확장은 하고 공백은 문자 그대로 인식
if [ "$str" = "hello world" ]; then
    echo $str
fi

str=""
# 아래는 확장이 일어나면서 왼쪽 매개변수가 들어오지 않았다고 인식
if [ $str = "hello world" ]; then
    echo $str
fi