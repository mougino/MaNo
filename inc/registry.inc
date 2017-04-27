'------------------------------------------------------------------------------
' returns a registry string
'------------------------------------------------------------------------------
FUNCTION getreg(BYVAL hlocation AS DWORD, BYVAL ssubkeys AS STRING, BYVAL svaluename AS STRING, BYVAL sdefault AS STRING) AS STRING
  LOCAL hkey AS DWORD, zregval AS ASCIIZ * 1024, dwtype AS DWORD, dwsize AS DWORD
  IF hlocation = 0 THEN hlocation = %hkey_current_user
  zregval = sdefault
  IF (regopenkeyex(hlocation, TRIM$(ssubkeys, "\"), 0, %key_read, hkey) = %error_success) THEN
     dwtype = %reg_sz
     dwsize = SIZEOF(zregval) ' set length of buffer...
     CALL regqueryvalueex(hkey, BYCOPY svaluename, 0, dwtype, zregval, dwsize)
     regclosekey hkey
  END IF
  FUNCTION = zregval
END FUNCTION


'------------------------------------------------------------------------------
' saves a string value to the registry, returns nonzero if successful
'------------------------------------------------------------------------------
FUNCTION setreg(BYVAL hlocation AS DWORD, BYVAL ssubkeys AS STRING, BYVAL svaluename AS STRING, BYVAL sdata AS STRING) AS LONG
  LOCAL hkey AS DWORD, zregname AS ASCIIZ * 1024, zregval AS ASCIIZ * 1024, dwtype AS DWORD, dwsize AS DWORD
  zregval   = sdata
  zregname  = svaluename
  IF hlocation = 0 THEN hlocation = %hkey_current_user
  IF regcreatekeyex(hlocation, TRIM$(ssubkeys, "\"), 0, "", 0, %key_write, BYVAL %null, hkey, BYVAL %null) = %error_success THEN
     dwsize = LEN(zregval) ' set length of data...
     dwtype = %reg_sz
     IF regsetvalueex(hkey, zregname, 0, dwtype, zregval, dwsize) = %error_success THEN FUNCTION = %true
     regclosekey hkey
  END IF
END FUNCTION


'------------------------------------------------------------------------------
' a function to delete a value or key from the registry, returns nonzero
'------------------------------------------------------------------------------
FUNCTION delreg(BYVAL hlocation AS DWORD, BYVAL ssubkeys AS STRING, BYVAL svaluename AS STRING) AS LONG
  LOCAL hkey AS DWORD
  IF hlocation = 0 THEN hlocation = %hkey_current_user
  IF svaluename <> "" THEN
     IF regopenkey(hlocation, TRIM$(ssubkeys, "\"), hkey) = %error_success THEN
        IF regdeletevalue(hkey, BYVAL STRPTR(svaluename)) = %error_success THEN FUNCTION = %true
     END IF
  ELSE
     IF regdeletekey(hlocation, BYVAL STRPTR(ssubkeys)) = %error_success THEN FUNCTION = %true
  END IF
END FUNCTION
