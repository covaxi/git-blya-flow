setlocal
rem set /a wait=%random%/7000
rem ping 127.0.0.1 -n %wait% -w 1000 > NUL
ping 127.0.0.1 -n 3 -w 1000 > NUL
endlocal