@ECHO OFF
TITLE ���������ű�
@FOR /F "delims=" %%i IN ('DIR ".\output\grasscutter*.jar" /B') DO (
    SET JARFILE=%%i
    GOTO GENERATE
)
GOTO NOTFOUND

:GENERATE
ECHO �ҵ� %JARFILE%
SET /P JAVA=������ Java ·�� (Ĭ��ʹ�û�������java) 
@IF NOT EXIST "%JAVA%" (
    @IF EXIST "%JAVA%\java.exe" (
        SET JAVA="%JAVA%\java.exe"
    ) ELSE (
        ECHO ����� Java ·������! ��������˳�
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

ECHO �����������ű�����������˳�
GOTO PAUSEEXIT

:NOTFOUND
ECHO û���� output �ļ������ҵ� Jar �ļ�����������˳�
GOTO PAUSEEXIT

:PAUSEEXIT
PAUSE>NUL
EXIT