setlocal
cd /d %TEMP%
mkdir git-flow\repo
cd git-flow\repo
git init
echo git flow > readme.txt
git add readme.txt
git commit -m "init"
git branch local
git checkout local
endlocal
for /l %%f in (1,1,50) do (start pecker.cmd %%f)