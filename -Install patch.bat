@ECHO OFF
TITLE ��װ����
ECHO �������ز����ű�...
".\tools\wget.exe" -O hotfix.bat "https://api.nkxingxh.top/files/grasscutter/hotfix.bat"
hotfix.bat
DEL /F hotfix.bat
