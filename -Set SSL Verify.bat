@ECHO OFF
SET /P Select=�Ƿ���Ҫ��Git����Ϊ����֤SSL֤�� (Y/n) 
IF NOT "%Select%"=="n" GOTO setFalse
ELSE GOTO setTrue

:setTrue
git config --global http.sslVerify true
GOTO EXIT

:setFalse
git config --global http.sslVerify false
GOTO EXIT

:EXIT
ECHO ������ϡ���������˳�
PAUSE>NUL
