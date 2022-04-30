@ECHO OFF
MKDIR cache
CD cache

IF EXIST ".\Grasscutter\.git\" (
    ECHO ��ȡ Grasscutter �ļ�...
    CD Grasscutter
    git checkout -f
    git pull origin development
    CD ..
) ELSE (
    ECHO ׼�� Grasscutter �ļ�...
    @RD /S /Q ".\Grasscutter"
    git clone -b development https://github-git.cdn.nkxingxh.top/Grasscutters/Grasscutter.git
)

IF EXIST ".\GenshinData\.git\" (
    ECHO ��ȡ GenshinData �ļ�...
    CD GenshinData
    git checkout -f
    git clean -df
    git pull origin
    CD ..
) ELSE (
    ECHO ׼�� GenshinData �ļ�...
    @RD /S /Q ".\GenshinData"
    git clone https://github-git.cdn.nkxingxh.top/Dimbreath/GenshinData.git
)

IF EXIST ".\gi-bin-output\.git\" (
    ECHO ��ȡ BinOutput �ļ�...
    CD gi-bin-output
    git checkout -f
    git clean -df
    git pull origin
    CD ..
) ELSE (
    ECHO ׼�� BinOutput �ļ�...
    @RD /S /Q ".\gi-bin-output"
    git clone https://github-git.cdn.nkxingxh.top/zhsitao/gi-bin-output.git
)

IF EXIST ".\animepython\.git\" (
    ECHO ��ȡ animepython �ļ�...
    CD animepython
    git checkout -f
    git clean -df
    git pull origin
    CD ..
) ELSE (
    ECHO ׼�� animepython �ļ�...
    @RD /S /Q ".\animepython"
    git clone https://github-git.cdn.nkxingxh.top/lilmayofuksu/animepython.git
)

PAUSE