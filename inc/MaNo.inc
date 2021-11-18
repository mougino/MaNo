
  ' Comment out exclusion for required control

'    %NOSTATUSBAR  = 1
'    %NOTOOLBAR    = 1
'  --- Graphics: ---
'   %NOGDI = 1     ' no GDI (Graphics Device Interface) functions
'  --- Multimedia: ---
    %NOMMIDS           = 1  ' no Multimedia ID definitions
    %NONEWWAVE         = 1  ' no new waveform types except WAVEFORMATEX are defined
    %NONEWRIFF         = 1  ' no new RIFF formats are defined
    %NOJPEGDIB         = 1  ' no JPEG DIB definitions
    %NONEWIC           = 1  ' no new Image Compressor types are defined
    %NOBITMAP          = 1  ' no extended bitmap info header definition
    %NOANIMATE         = 1  ' Animate control
    %NOBUTTON          = 1  ' Button
    %NOCOMBO           = 1  ' Combo box
    %NOCOMBOEX         = 1  ' ComboBoxEx
    %NODATETIMEPICK    = 1  ' Date/time picker
    %NODRAGLIST        = 1  ' Drag list control
    %NOEDIT            = 1  ' Edit control
    %NOFLATSBAPIS      = 1  ' Flat scroll bar
    %NOHEADER          = 1  ' Header control
    %NOHOTKEY          = 1  ' HotKey control
    %NOIMAGELIST       = 1  ' Image APIs
    %NOIPADDRESS       = 1  ' IP Address edit control
    %NOLIST            = 1  ' List box control
    %NOLISTVIEW        = 1  ' ListView control
    %NOMENUHELP        = 1  ' Menu help
    %NOMONTHCAL        = 1  ' MonthCal
    %NOMUI             = 1  ' MUI
    %NONATIVEFONTCTL   = 1  ' Native Font control
    %NOPAGESCROLLER    = 1  ' Pager
    %NOPROGRESS        = 1  ' Progress control
    %NOREBAR           = 1  ' Rebar control
    %NOTABCONTROL      = 1  ' Tab control
    %NOTOOLTIPS        = 1  ' Tool tips
    %NOTRACKBAR        = 1  ' Track bar
    %NOTRACKMOUSEEVENT = 1  ' Track Mouse Event
    %NOTREEVIEW        = 1  ' TreeView
    %NOUPDOWN          = 1  ' Up Down arrow control
    %NOPRINTDLG        = 1

  ' -------------------------------------------------------
  ' Microsoft Visual C runtime library functions MSVCRT.DLL
  ' -------------------------------------------------------
    DECLARE FUNCTION ltoa CDECL LIB "MSVCRT.DLL" ALIAS "_ltoa" (BYVAL value AS LONG, _
                     BYVAL pstring AS DWORD, BYVAL radix AS DWORD) AS DWORD

    DECLARE FUNCTION atol CDECL LIB "MSVCRT.DLL" ALIAS "atol" (BYVAL pstr AS DWORD) AS LONG

    DECLARE FUNCTION strcat CDECL LIB "MSVCRT.DLL" ALIAS "strcat" _
                     (BYVAL strDestination AS DWORD,BYVAL strSource AS DWORD) AS DWORD

    GLOBAL hInstance         AS DWORD
    GLOBAL hWnd              AS DWORD
    GLOBAL hIcon             AS DWORD
    GLOBAL hCursor           AS DWORD
    GLOBAL hMnu              AS DWORD
    GLOBAL hBar              AS DWORD
    GLOBAL hEdit             AS DWORD
    GLOBAL hFont             AS DWORD
    GLOBAL hFont2            AS DWORD

    GLOBAL Edit1             AS DWORD
    GLOBAL Edit2             AS DWORD
    GLOBAL Edit_FR           AS STRING
    GLOBAL hrad1             AS DWORD
    GLOBAL hrad2             AS DWORD
    GLOBAL hchk1             AS DWORD
    GLOBAL hchk2             AS DWORD
    GLOBAL Editgt            AS DWORD        ' goto line dialog edit control
    GLOBAL lpEditgtProc      AS DWORD

    GLOBAL sch_direction     AS DWORD
    GLOBAL sch_matchcase     AS DWORD
    GLOBAL sch_wholeword     AS DWORD
    GLOBAL sch_exclusion     AS DWORD
    GLOBAL sch_replace       AS DWORD

    GLOBAL lpEdit1Proc       AS DWORD

    GLOBAL dlg_msg_ttl       AS STRING
    GLOBAL dlg_msg_lbl       AS STRING
    GLOBAL dlg_combo_lbl     AS STRING
    GLOBAL dlg_combo_ttl     AS STRING
    GLOBAL dlg_combo_btn     AS STRING
    GLOBAL dlg_combo_lst()   AS STRING
    GLOBAL dlg_combo_ope     AS LONG
    GLOBAL hdr_pos()         AS LONG
    GLOBAL headers()         AS STRING
    GLOBAL fPattern          AS STRING * 128

    GLOBAL INS               AS LONG
    GLOBAL EOL               AS STRING

  ' -------------------------------------------------------
  ' Includes and Resources
  ' -------------------------------------------------------
    #INCLUDE "WIN32API.INC"
    #INCLUDE "RICHEDIT.INC"
    #INCLUDE "COMMCTRL.INC"
    #INCLUDE "inc\altdlgs.inc"
    #INCLUDE "inc\registry.inc"
    #INCLUDE "inc\ini.inc"
    #INCLUDE "inc\md-anchor.inc"
    #INCLUDE "inc\highlight.inc"
    #INCLUDE "inc\re-custom-caret.inc"
  ' -------------------------------------------------------
    #RESOURCE "res\MaNo.pbr"
  ' -------------------------------------------------------
