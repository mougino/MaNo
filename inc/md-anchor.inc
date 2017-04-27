'
' "md-anchor.inc" defines a GitHub anchor/link based on a title
'
'  e.g.
'  # This is a big_title!
'  -> anchor = "#this-is-a-big_title"
'

FUNCTION anchor(title AS STRING) AS STRING
    LOCAL i AS LONG
    LOCAL e, r, c AS STRING
    e = LCASE$(title)
    e = REMOVE$(e, ANY "~*")
    FOR i = 1 TO LEN(e)
        c = MID$(e,i,1)
        IF (c >= "a" AND c <= "z") _
        OR (c >= "0" AND c <= "9") _
        OR c = "_" THEN
            r += c
        ELSE
            r += "-"
        END IF
    NEXT
    WHILE ISTRUE INSTR(r, "--") : REPLACE "--" WITH "-" IN r : WEND
    FUNCTION = "#" + TRIM$(r, "-")
END FUNCTION
