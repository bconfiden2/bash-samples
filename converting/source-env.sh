# source 나 . 같은 명령어로 외부 파일을 그대로 읽어옴
# 해당 파일이 없을 경우 에러가 나기 때문에 -f 로 test
[ -f env.sh ] && source env.sh
[ -f env.sh ] && . env.sh
# env.sh 의 변수나 함수들이 읽혀졌기 때문에 사용 가능
echo $TEST
printTest

# bash env.sh 처럼 실행시킬 경우에는 읽어오는 것이 아니라 다른 프로세스로 쉘스크립트 실행하는 것임!