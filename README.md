## add indexing
```
@ECHO OFF &@SET ME=IR & TITLE Mei-R:MAN &call %1 &SET BATman=%USERPROFILE%\Documents\GitHub\Functions\BATman.bat 
start "" rundll32.exe shell32.dll,Control_RunDLL srchadmin.dll
CALL %BATman% :AHK_Send_Keys !d
timeout /t 1 /nobreak
CALL %BATman% :AHK_Send_Keys !r
timeout /t 1 /nobreak
CALL %BATman% :AHK_Send_Keys {Enter}
```
