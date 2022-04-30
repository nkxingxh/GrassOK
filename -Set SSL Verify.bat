@ECHO OFF
SET /P Select=是否需要将Git设置为不验证SSL证书 (Y/n) 
IF NOT "%Select%"=="n" GOTO setFalse
ELSE GOTO setTrue

:setTrue
git config --global http.sslVerify true
GOTO EXIT

:setFalse
git config --global http.sslVerify false
GOTO EXIT

:EXIT
ECHO 设置完毕。按任意键退出
PAUSE>NUL
