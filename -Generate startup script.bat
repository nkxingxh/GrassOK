@ECHO OFF
TITLE 生成启动脚本
@FOR /F "delims=" %%i IN ('DIR ".\output\grasscutter*.jar" /B') DO (
    SET JARFILE=%%i
    GOTO GENERATE
)
GOTO NOTFOUND

:GENERATE
ECHO 找到 %JARFILE%
SET /P JAVA=请输入 Java 路径 (默认使用环境变量java) 
@IF NOT EXIST "%JAVA%" (
    @IF EXIST "%JAVA%\java.exe" (
        SET JAVA="%JAVA%\java.exe"
    ) ELSE (
        ECHO 输入的 Java 路径有误! 按任意键退出
        GOTO PAUSEEXIT
    )
    
)

ECHO @ECHO OFF>".\output\start.bat"
ECHO TITLE Grasscutter>>".\output\start.bat"
ECHO SET JAVA="%JAVA%">>".\output\start.bat"
ECHO IF NOT EXIST "GM Handbook.txt" (>>".\output\start.bat"
ECHO %%JAVA%% -jar "%JARFILE%" -handbook>>".\output\start.bat"
ECHO )>>".\output\start.bat"
ECHO %%JAVA%% -jar "%JARFILE%">>".\output\start.bat"
ECHO PAUSE>>".\output\start.bat"

ECHO 已生成启动脚本，按任意键退出
GOTO PAUSEEXIT

:NOTFOUND
ECHO 没有在 output 文件夹中找到 Jar 文件，按任意键退出
GOTO PAUSEEXIT

:PAUSEEXIT
PAUSE>NUL
EXIT