#COMPILE EXE "setDos.exe"
#DIM ALL

FUNCTION PBMAIN () AS LONG
    LOCAL ff AS LONG
    LOCAL b AS STRING

    IF COMMAND$ = "" THEN
        MSGBOX "You need to drag and drop a Win32 executable on this program", %MB_ICONWARNING, "setDos"
        EXIT FUNCTION
    END IF

    ff = FREEFILE
    OPEN TRIM$(COMMAND$, $DQ) FOR BINARY AS #ff
    SEEK #ff, 221
    GET$ #ff, 1, b
    CLOSE #ff
    IF b = CHR$(3) THEN
        MSGBOX "This Win32 executable has already the Dos console activated.", %MB_ICONINFORMATION, "setDos"
        EXIT FUNCTION
    ELSEIF b <> CHR$(2) THEN
        MSGBOX COMMAND$ + " is not a valid Win32 executable.", %MB_ICONERROR, "setDos"
        EXIT FUNCTION
    END IF

    IF MSGBOX("Do you want to activate the Dos console in this W32 executable:" + $CR + COMMAND$ + " ?", %MB_ICONQUESTION OR %MB_YESNO, "setDos") = %IDYES THEN
        ff = FREEFILE
        OPEN TRIM$(COMMAND$, $DQ) FOR BINARY AS #ff
        SEEK #ff, 221
        PUT$ #ff, CHR$(3)
        CLOSE #ff
        MSGBOX "Done!", %MB_ICONINFORMATION, "setDos"
    END IF

END FUNCTION
