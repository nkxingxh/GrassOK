@ECHO OFF
TITLE 文件打包
".\tools\7z.exe" a -mmt8 -mx9 -sccWIN -scsUTF-8 output.zip ".\output\*"
ECHO 打包完成，按任意键退出
PAUSE>NUL