#!/bin/bash

TMP=hihi

# 괄호로 둘러싼 부분은 서브쉘로 실행됨
# 부모의 환경값은 이어지지만, 자식(서브쉘)의 환경값은 부모에게 이어지지 않음
# cd 등의 작업 경로 변경 역시 마찬가지
(
    echo "sub shell start"
    cd ..
    pwd
    ls
    FOO=hello
    echo FOO: $FOO
    echo TMP: $TMP
    echo "sub shell end"
)

# 자식에서 선언한 FOO 변수는 존재하지 않음
echo
echo "script start"
pwd
ls
echo FOO: $FOO
echo TMP: $TMP
echo "script end"