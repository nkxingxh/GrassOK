@ECHO OFF
SET /P CONFIRM=ȷ��Ҫ������ȡ���ļ��� (y/N)
IF NOT "%CONFIRM%"=="y" EXIT

ECHO ���������У������ĵȴ�...
CD cache
RD /S /Q ".\Grasscutter"
RD /S /Q ".\GenshinData"
RD /S /Q ".\gi-bin-output"
RD /S /Q ".\animepython"
ECHO ������ɣ���������˳�
PAUSE>NUL
