setlocal
set id=%1
cd /d "%temp%"
mkdir git-flow\%id%
cd git-flow\%id%
git clone ..\repo .
git checkout master
set count=0
:loop
set /a count=%count%+1
if %count% GTR 9 goto end
echo 1 >> %id%.tmp
git add %id%.tmp
git commit -m "Adding file %id%. Commit #%count%" --author="%id%<%id%@some.site.com>"
git pull
git push
call sleep.cmd
goto loop
:end
pause
endlocal