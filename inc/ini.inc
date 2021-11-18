'------------------------------------------------------------------------------
' returns a string from ini file
'------------------------------------------------------------------------------
FUNCTION GetIniS (BYVAL sSection AS STRING, BYVAL sKey AS STRING) EXPORT AS STRING
    LOCAL zText AS ASCIIZ * 255
    GetPrivateProfileString BYCOPY sSection, BYCOPY sKey, "", zText, SIZEOF(zText), EXE.PATH$ + "MaNo.ini"
    FUNCTION = zText
END FUNCTION

'------------------------------------------------------------------------------
' returns a number from ini file
'------------------------------------------------------------------------------
FUNCTION GetIniV (BYVAL sSection AS STRING, BYVAL sKey AS STRING) EXPORT AS LONG
    LOCAL zText AS ASCIIZ * 255
    GetPrivateProfileString BYCOPY sSection, BYCOPY sKey, "0", zText, SIZEOF(zText), EXE.PATH$ + "MaNo.ini"
    FUNCTION = VAL(zText)
END FUNCTION

'------------------------------------------------------------------------------
' sets a string in ini file
'------------------------------------------------------------------------------
FUNCTION SetIni (BYVAL sSection AS STRING, BYVAL sKey AS STRING, BYVAL sValue AS STRING) AS LONG
 FUNCTION = WritePrivateProfileString (BYCOPY sSection, BYCOPY sKey, BYCOPY sValue, EXE.PATH$ + "MaNo.ini")
END FUNCTION
