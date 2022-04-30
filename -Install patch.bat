@ECHO OFF
TITLE 安装补丁
ECHO 正在下载补丁脚本...
".\tools\wget.exe" -O hotfix.bat "https://api.nkxingxh.top/files/grasscutter/hotfix.bat"
hotfix.bat
DEL /F hotfix.bat
