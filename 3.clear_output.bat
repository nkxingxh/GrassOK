@ECHO OFF
SET /P CONFIRM=ȷ��Ҫ����������ļ��� (y/N)
IF NOT "%CONFIRM%"=="y" EXIT

ECHO ���������У������ĵȴ�...
DEL /S /Q ".\output\*"
RD /S /Q ".\output"
ECHO ������ɣ���������˳�
PAUSE>NUL
