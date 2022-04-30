@ECHO OFF
SET /P CONFIRM=确定要清理输出的文件吗 (y/N)
IF NOT "%CONFIRM%"=="y" EXIT

ECHO 正在清理中，请耐心等待...
DEL /S /Q ".\output\*"
RD /S /Q ".\output"
ECHO 清理完成，按任意键退出
PAUSE>NUL
