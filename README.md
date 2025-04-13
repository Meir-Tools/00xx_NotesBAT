## add indexing
```
@ECHO OFF &@SET ME=IR & TITLE Mei-R:MAN &call %1 &SET BATman=%USERPROFILE%\Documents\GitHub\Functions\BATman.bat 
start "" rundll32.exe shell32.dll,Control_RunDLL srchadmin.dll
CALL %BATman% :AHK_Send_Keys !d &REM ALT+d
timeout /t 1 /nobreak
CALL %BATman% :AHK_Send_Keys !r
timeout /t 1 /nobreak
CALL %BATman% :AHK_Send_Keys {Enter}
```
## known problems
```
when run from ctr+alt+G
the file are run from sys32 for some reason
need add cd /D "%~dp0"
```
