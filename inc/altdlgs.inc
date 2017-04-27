' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

    MACRO define = MACRO

    TYPE OPENFILENAMEA
      lStructSize          AS DWORD
      hwndOwner            AS DWORD
      hInstance            AS DWORD
      lpstrFilter          AS DWORD
      lpstrCustomFilter    AS DWORD
      nMaxCustFilter       AS DWORD
      nFilterIndex         AS DWORD
      lpstrFile            AS DWORD
      nMaxFile             AS DWORD
      lpstrFileTitle       AS DWORD
      nMaxFileTitle        AS DWORD
      lpstrInitialDir      AS DWORD
      lpstrTitle           AS DWORD
      Flags                AS DWORD
      nFileOffset          AS WORD
      nFileExtension       AS WORD
      lpstrDefExt          AS DWORD
      lCustData            AS DWORD
      lpfnHook             AS DWORD
      lpTemplateName       AS DWORD
    END TYPE
    define OFNST = OPENFILENAMEA

    define path_size = 260

    define AZ = ASCIIZ
    define OFN_EXPLORER      = &H00080000
    define OFN_FILEMUSTEXIST = &H00001000
    define OFN_LONGNAMES     = &H00200000
    define OFN_HIDEREADONLY  = &H00000004

    DECLARE FUNCTION GetOpenFileDialog LIB "COMDLG32.DLL" _
                     ALIAS "GetOpenFileNameA"(lpofn AS OFNST) AS LONG
    DECLARE FUNCTION GetSaveFileDialog LIB "COMDLG32.DLL" _
                     ALIAS "GetSaveFileNameA"(lpofn AS OFNST) AS LONG

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION OpenFileDialog(BYVAL iinstance AS DWORD, _
                        BYVAL hParent   AS DWORD, _
                        szbuffer        AS ASCIIZ, _
                        sztitle         AS ASCIIZ, _
                        szfilter        AS ASCIIZ) AS DWORD

    LOCAL cdir AS ASCIIZ * %MAX_PATH
    LOCAL ofn  AS OPENFILENAMEA

    GetCurrentDirectory %MAX_PATH,cdir

    ofn.lStructSize = SIZEOF(OPENFILENAMEA)
    ofn.hWndOwner   = hParent
    ofn.hInstance   = iinstance
    ofn.lpstrFilter = VARPTR(szfilter)
    ofn.lpstrFile   = VARPTR(szbuffer)
    ofn.nMaxFile    = %MAX_PATH
    ofn.lpstrTitle  = VARPTR(sztitle)
    ofn.lpstrInitialDir = VARPTR(cdir)
    ofn.Flags       = OFN_EXPLORER OR OFN_FILEMUSTEXIST OR _
                      OFN_LONGNAMES OR OFN_HIDEREADONLY

    FUNCTION = GetOpenFileDialog(ofn)

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION SaveFileDialog(BYVAL iinstance AS DWORD, _
                        BYVAL hParent   AS DWORD, _
                        szbuffer        AS ASCIIZ, _
                        sztitle         AS ASCIIZ, _
                        szfilter        AS ASCIIZ) AS DWORD

    LOCAL cdir AS ASCIIZ * %MAX_PATH
    LOCAL ofn  AS OPENFILENAMEA

    GetCurrentDirectory %MAX_PATH,cdir

    ofn.lStructSize = SIZEOF(OPENFILENAMEA)
    ofn.hWndOwner   = hParent
    ofn.hInstance   = iinstance
    ofn.lpstrFilter = VARPTR(szfilter)
    ofn.lpstrFile   = VARPTR(szbuffer)
    ofn.nMaxFile    = %MAX_PATH
    ofn.lpstrTitle  = VARPTR(sztitle)
    ofn.lpstrInitialDir = VARPTR(cdir)
    ofn.Flags       = OFN_EXPLORER OR OFN_LONGNAMES OR OFN_HIDEREADONLY

    FUNCTION = GetSaveFileDialog(ofn)

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION File_Exist(BYVAL fileOrFolder AS STRING) AS LONG

   LOCAL FindFileData AS WIN32_FIND_DATA
   LOCAL hdl          AS DWORD
   LOCAL found        AS LONG

   hdl = FindFirstFile((fileOrFolder), BYVAL VARPTR(FindFileData))
   found = (hdl <> %INVALID_HANDLE_VALUE)
   IF found THEN FindClose hdl
   FUNCTION = found

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Load_File(BYVAL pName AS DWORD) AS STRING

    LOCAL ff    AS LONG
    LOCAL buf   AS STRING
    LOCAL pFile AS ASCIIZ PTR

    pFile = pName
    IF ISFALSE File_Exist((@pFile)) THEN EXIT FUNCTION
    ff = FREEFILE
    OPEN (@pFile) FOR BINARY AS #ff
    GET$ #ff,LOF(#ff),buf
    CLOSE #ff
    FUNCTION = buf

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Save_File(BYVAL pName AS DWORD, BYVAL buf AS STRING)

    LOCAL ff    AS LONG
    LOCAL pFile AS ASCIIZ PTR

    pFile = pName
    KILL (@pFile)
    ff = FREEFILE
    OPEN (@pFile) FOR BINARY AS #ff
    PUT$ #ff,buf
    CLOSE #ff

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Get_Resource(BYVAL rid AS LONG) AS STRING

    LOCAL L1, L2 AS LONG
    LOCAL D1, D2 AS DWORD

    L1 = FindResource(hInstance,"#"+FORMAT$(rid),BYVAL %RT_RCDATA)
    D2 = SizeofResource(hInstance,L1)
    L2 = LoadResource(hInstance,L1)
    D1 = LockResource(L2)

    FUNCTION = PEEK$(D1,D2)

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
