@ECHO OFF
cls
:loop
cls
color 07
echo "    _                                                   _   _               "
echo " _ | |  __ _  __ __  __ _     __   ___   _ __    _ __  (_) | |  ___   _ _   "
echo "| || | / _` | \ V / / _` |   / _| / _ \ | '  \  | '_ \ | | | | / -_) | '_|  "
echo " \__/  \__,_|  \_/  \__,_|   \__| \___/ |_|_|_| | .__/ |_| |_| \___| |_|    "
echo "                                                |_|                         "
echo Enter the options
echo 1.list out the files in this directory
echo 2.Compile Java and interpret Java File
echo 3.view java file
echo 4.Exit the program
Set /p option=Options:
if "%option%"=="1" (
   
   goto opt1
   
) else if "%option%"=="2" (
   
   goto opt2
   
) else if "%option%"=="3" (
   Rem %Systemroot%\explorer.exe /select,"Filepath"
   goto opt3
   
) else if "%option%"=="4" (
   goto opt4
   
)else (
   Echo Wrong option
   pause
   exit
) 

:opt1
cls
echo "    _                                                   _   _               "
echo " _ | |  __ _  __ __  __ _     __   ___   _ __    _ __  (_) | |  ___   _ _   "
echo "| || | / _` | \ V / / _` |   / _| / _ \ | '  \  | '_ \ | | | | / -_) | '_|  "
echo " \__/  \__,_|  \_/  \__,_|   \__| \___/ |_|_|_| | .__/ |_| |_| \___| |_|    "
echo "                                                |_|                         "
dir
pause
goto loop

:opt2
Echo Enter the file name
set /p file=Filename:-
javac "%file%".java
if "%ERRORLEVEL%" NEQ 0 (
   echo Program compiled successfully
   cls
   echo executing java program
   timeout /t 4
   cls
   java %file%
   pause
   goto loop
   
   
) else (
   echo Error Occured check the code
   pause
   goto loop

   
)

:opt3
cls
dir
echo Enter the file name to view
set /p view=Enter:
cls
color 3a
type %view%
pause
goto loop

:opt4
exit

