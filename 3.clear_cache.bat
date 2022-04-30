@ECHO OFF
SET /P CONFIRM=确定要清理拉取的文件吗 (y/N)
IF NOT "%CONFIRM%"=="y" EXIT

ECHO 正在清理中，请耐心等待...
CD cache
RD /S /Q ".\Grasscutter"
RD /S /Q ".\GenshinData"
RD /S /Q ".\gi-bin-output"
RD /S /Q ".\animepython"
ECHO 清理完成，按任意键退出
PAUSE>NUL
