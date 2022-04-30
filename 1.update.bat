@ECHO OFF
MKDIR cache
CD cache

IF EXIST ".\Grasscutter\.git\" (
    ECHO 拉取 Grasscutter 文件...
    CD Grasscutter
    git checkout -f
    git pull origin development
    CD ..
) ELSE (
    ECHO 准备 Grasscutter 文件...
    @RD /S /Q ".\Grasscutter"
    git clone -b development https://github-git.cdn.nkxingxh.top/Grasscutters/Grasscutter.git
)

IF EXIST ".\GenshinData\.git\" (
    ECHO 拉取 GenshinData 文件...
    CD GenshinData
    git checkout -f
    git clean -df
    git pull origin
    CD ..
) ELSE (
    ECHO 准备 GenshinData 文件...
    @RD /S /Q ".\GenshinData"
    git clone https://github-git.cdn.nkxingxh.top/Dimbreath/GenshinData.git
)

IF EXIST ".\gi-bin-output\.git\" (
    ECHO 拉取 BinOutput 文件...
    CD gi-bin-output
    git checkout -f
    git clean -df
    git pull origin
    CD ..
) ELSE (
    ECHO 准备 BinOutput 文件...
    @RD /S /Q ".\gi-bin-output"
    git clone https://github-git.cdn.nkxingxh.top/zhsitao/gi-bin-output.git
)

IF EXIST ".\animepython\.git\" (
    ECHO 拉取 animepython 文件...
    CD animepython
    git checkout -f
    git clean -df
    git pull origin
    CD ..
) ELSE (
    ECHO 准备 animepython 文件...
    @RD /S /Q ".\animepython"
    git clone https://github-git.cdn.nkxingxh.top/lilmayofuksu/animepython.git
)

PAUSE