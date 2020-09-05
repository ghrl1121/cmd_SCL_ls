//"//"은 지워주세요 누구나 볼수 있도록 하였습니다.

@echo off
:A
title SCP:SL서버 구동기
cls
echo.
echo 1. 서버 파일 다운
echo.
echo 2. 서버 열기
echo.
echo 3. 종료
echo.
echo.
set /p mainmenu=선택 후 입력하세요:
if %mainmenu%==1 goto B
if %mainmenu%==2 goto G
if %mainmenu%==3 goto exit

:B
title SCP:SL 서버 파일 다운
cls
echo -주의 이 실행하기 위해서StaamCMD 가 있어야 합니다.-
echo.
echo 1. 바탕화면에 설치(현 먹통)
echo.
echo 2. C:\에 설치
echo.
echo 3. D:\에 설치
echo.
echo 4. E:\에 설치
echo.
set /p mainmenu=선택 후 입력하세요:
if %mainmenu%==1 goto C
if %mainmenu%==2 goto D
if %mainmenu%==3 goto E
if %mainmenu%==4 goto F
:C
cls
echo 먹통입니다. 아무리 해도"%Desktop%\SCP" 가 안 먹힙니다.
steamcmd.exe +login anonymous +force_install_dir %Desktop%\SCP  +app_update 996560 +quit
pause
goto A
:D
cls
steamcmd.exe +login anonymous +force_install_dir C:\SCP +app_update 996560 +quit

goto A
:E
cls
steamcmd.exe +login anonymous +force_install_dir D:\SCP +app_update 996560 +quit

goto A
:F
cls
steamcmd.exe +login anonymous +force_install_dir E:\SCP +app_update 996560 +quit

goto A

:G
title 서버 열기
cls
echo 먼저 설치를 해야 실행이 됩니다.
echo 그리고 노모가 설치 되야 됩니다.
echo.
echo 1. 바탕화면에 실행 (먹통입니다.)
echo.
echo 2. C:\SCP:SL 실행
echo.
echo 3. D:\SCP:SL 실행
echo.
echo 4. E:\SCP:SL 실행
echo.
echo 5. 서버 관리
echo.
echo 6. 종료
echo.
set /p mainmenu=선택 후 입력하세요:
if %mainmenu%==1 goto H
if %mainmenu%==2 goto I
if %mainmenu%==3 goto J
if %mainmenu%==4 goto K
if %mainmenu%==5 goto L
if %mainmenu%==6 goto exit
:H
cls
echo 처음실행시 7777 입력을 하셔야 합니다.
echo 종료시 꼭 exit  입력을 부탁 합니다.
echo 먹통입니다. 아무리 해도"%appname%\Desktop\"가 안 먹힙니다.
pause
goto G
:I
cls
echo 처음실행시 7777 입력을 하셔야 합니다.
echo 종료시 꼭 exit  입력을 부탁 합니다.
CD C:\scp
LocalAdmin.exe
goto G
:J
cls
echo 처음실행시 7777 입력을 하셔야 합니다.
echo 종료시 꼭 exit  입력을 부탁 합니다.
CD D:\scp
LocalAdmin.exe
goto G
:K
cls
echo 처음실행시 7777 입력을 하셔야 합니다.
echo 종료시 꼭 exit  입력을 부탁 합니다.
CD E:\scp
LocalAdmin.exe
goto G
:L
cls
title 서버 관리
echo 실행 하시고 입력을 하셔야 예러가 안납니다.
echo 이건 테스트 입니다. 저도 완벽한게 아닙니다.
echo.
echo 1. 서버 파일 찾기
echo.
echo 2. 서버 실행으로 되 돌아가기
echo.

set /p mainmenu=선택 후 입력하세요:
if %mainmenu%==1 goto M
if %mainmenu%==2 goto G
:M
cls
echo 번호에 맞게 설정 하세요
echo 설정하는 방법 https://blog.naver.com/ghrl1005/221801992836
start "" "%AppData%\SCP Secret Laboratory\config"
pause
goto L
:exit
exit
