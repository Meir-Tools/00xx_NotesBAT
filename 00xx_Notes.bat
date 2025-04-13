::-----------------------------------------------------------------------------
:: Creator / Writer , Meir.e, Note by date , xxxx_xx_xx_notes
:: 
::-----------------------------------------------------------------------------
@ECHO OFF & TITLE Meir-E &set BATman=%USERPROFILE%\Documents\GitHub\Functions\BATman
::---------------------------------- Main--------------------------------------
	cd /D "%~dp0" &REM set the %cd% where batch location 
	echo %0 &cd %0\..
	call %BATman% :Print_MAN_Logo
	:: call %BATman% :ShowMenu %0
	::CALL %BATman% :MAN_ShowMenu %0
	CALL :OPT1
goto :EOF
:OPT1 | 1 - 00xx_Notes.bat
	dir
	dir /B *.txt
	::--::
	call %BATman% :Print_MAN_Logo
	::--::
	echo Custom format=%date:~-4,4%%date:~-10,2%%date:~-7,2%
	::--::
	:: set "d_custom=%date:~-4,4%%date:~-10,2%%date:~-7,2%" &REM when usa of somthin format
	set "d_custom=%date:~-4,4%%date:~-7,2%%date:~-10,2%" &REM when hebrew of somthin format - Oposite date
	::set "d_custom=%date:~-4,4%%date:~-10,2%%date:~-7,2%" &REM when hebrew of somthin format
	set "f_note=%d_custom%_Note.txt"
	if not exist %f_note% ( echo %d_custom%_Notes >> "%f_note%" )
	start "" "C:\Program Files\Notepad++\notepad++.exe" %f_note%
EXIT /B 0
:OPT2 | 2 - Google Docs
	start "" https://docs.google.com/
EXIT /B 0

