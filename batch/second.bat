set /p FIRST_NAME=enter your first name 
set /p LAST_NAME=enter your last name 
mkdir C:\scripts\second
mkdir C:\scripts\second\"%FIRST_NAME% %LAST_NAME%"
mkdir C:\scripts\second\"%FIRST_NAME% %LAST_NAME%"\Logs
mkdir C:\scripts\second\"%FIRST_NAME% %LAST_NAME%"\Logs
echo %DATE% %TIME%  > C:\Log.txt
copy C:\Log.txt C:\scripts\second\"%FIRST_NAME% %LAST_NAME%"\Logs
del C:\Log.txt