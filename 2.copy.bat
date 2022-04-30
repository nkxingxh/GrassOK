@ECHO OFF
MKDIR output
ECHO ¸´ÖÆÎÄ¼þ...
XCOPY /E /Y ".\cache\Grasscutter\keys\" ".\output\keys\"
XCOPY /E /Y ".\cache\Grasscutter\data\" ".\output\data\"
COPY /Y ".\cache\Grasscutter\keystore.p12" ".\output\"

MKDIR ".\output\resources"
XCOPY /E /Y ".\cache\GenshinData\TextMap\" ".\output\resources\TextMap\"
XCOPY /E /Y ".\cache\GenshinData\Subtitle\" ".\output\resources\Subtitle\"
XCOPY /E /Y ".\cache\GenshinData\Readable\" ".\output\resources\Readable\"
XCOPY /E /Y ".\cache\GenshinData\ExcelBinOutput\" ".\output\resources\ExcelBinOutput\"

XCOPY /E /Y ".\cache\gi-bin-output\2.5.52\Data\_BinOutput\" ".\output\resources\BinOutput\"

XCOPY /E /Y ".\cache\animepython\ParsedJson\Lua\" ".\output\resources\Lua\"
PAUSE