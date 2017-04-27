' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
' This INCLUDE file offers functions to be used with the 'highlight' tool
' - http://www.andre-simon.de/doku/highlight/en
' - http://www.andre-simon.de/doku/highlight/en/highlight.php
' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION HL_is_valid_language(lng AS STRING) AS LONG
' Returns   '-1'    if 'highlight' is not properly installed
'           '+1'    if valid lexer
'            '0'    if invalid lexer

    LOCAL lng_lst   AS STRING

    lng_lst = EXE.PATH$ + "highlight\README_LANGLIST.TXT"
    lng_lst = Load_File(STRPTR(lng_lst))
    REPLACE $CRLF WITH $SPC + $LF + $SPC IN lng_lst

    IF lng_lst = "" THEN
        FUNCTION = -1
    ELSEIF ISTRUE INSTR(LCASE$(lng_lst), $SPC + TRIM$(LCASE$(lng)) + $SPC) THEN
        FUNCTION = +1
    ELSE
        FUNCTION = 0
    END IF

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION HL_extension(lng AS STRING) AS STRING
' Returns the first file extension for a given language
' This function must be called only after HL_is_valid_language(lng) returned +1

    LOCAL lng_lst   AS STRING
    LOCAL i, j      AS LONG

    lng_lst = EXE.PATH$ + "highlight\README_LANGLIST.TXT"
    lng_lst = Load_File(STRPTR(lng_lst))
    REPLACE $CRLF WITH $SPC + $LF + $SPC IN lng_lst

    i = INSTR(LCASE$(lng_lst), $SPC + TRIM$(LCASE$(lng)) + $SPC)
    i = INSTR(i-LEN(lng_lst),lng_lst,$LF) + 1 ' start of line
    i = INSTR(i,lng_lst,":") + 2              ' start of extensions
    j = INSTR(i,lng_lst," ")                  ' end of first extension
    FUNCTION = MID$(lng_lst,i,j-i)

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION HL_highlighted(cod AS STRING, lng AS STRING) AS STRING
' Returns an highlighted html for a given code and language specification
' This function must be called only after HL_is_valid_language(lng) returned +1

    LOCAL tmpi  AS STRING
    LOCAL tmpo  AS STRING
    LOCAL cmd   AS STRING
    LOCAL args  AS STRING
    LOCAL buf   AS STRING
    LOCAL i, j  AS LONG

    tmpi = EXE.PATH$ + "code." + HL_extension(lng)
    tmpo = EXE.PATH$ + "code.htm"
    cmd  = EXE.PATH$ + "highlight\highlight.exe"
    args = " -i " + $DQ + tmpi + $DQ _
         + " -o " + $DQ + tmpo + $DQ

    Save_File STRPTR(tmpi), cod                     ' save code as tmp file with valid language extension
    SHELL cmd + args,%SW_HIDE                       ' run 'highlight' **synchronously** on tmp file
    buf = Load_File(STRPTR(tmpo))                   ' load result in buffer
    KILL tmpi : KILL tmpo
    KILL EXE.PATH$ + "highlight.css"                ' do some clean-up
    IF buf = "" THEN
        FUNCTION = cod                              ' there was an error: return original code (not highlighted)
    ELSE
        i = INSTR(buf,"<pre")
        i = INSTR(i+1,buf,">") + 1
        j = INSTR(i,buf,"</pre>")
        FUNCTION = MID$(buf,i,j-i)                  ' everything went well: return highlighted code
    END IF

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION HL_to_github(html AS STRING) AS STRING
' Returns a 'GitHub' flavored html for a 'highlight' flavored html
' This function takes a string returned by HL_highlighted() as entry

    LOCAL r AS STRING

    r = html

    REPLACE "hl kwa" WITH "pl-pds" IN r
    REPLACE "hl kwb" WITH "pl-id" IN r
    REPLACE "hl kwd" WITH "pl-en" IN r
    REPLACE "hl num" WITH "pl-c1" IN r
    REPLACE "hl str" WITH "pl-s" IN r
    REPLACE "hl slc" WITH "pl-c" IN r
    REPLACE "hl opt" WITH "pl-k" IN r
    REPLACE "hl kwc" WITH "pl-v" IN r
    REPLACE "hl esc" WITH "pl-e" IN r
    REPLACE "hl pps" WITH "pl-s1" IN r
    REPLACE "hl com" WITH "pl-mo" IN r
    REPLACE "hl ppc" WITH "pl-ent" IN r
    REPLACE "hl ipl" WITH "pl-ml" IN r
    REPLACE "hl lin" WITH "pl-smi" IN r

    FUNCTION = r

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
