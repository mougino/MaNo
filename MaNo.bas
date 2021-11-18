
' !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
' After compilation, change byte #221 of the .exe to CHR$(3) to enable console mode '
' !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
'                        MaNo - The Markdown Notepad
' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
' [ ] evo: last undo level: set the %EM_SETMODIFY of the richedit to %FALSE
' [ ] evo: handle 2 different header labels w/ same link (e.g. # BIN Vs # BIN$ ...)

' 1.3.0
'-------
' [X] evo: Portable Mode / F12 key (per suggestion from Gavin Holt)
'     [X] embed default "MaNo.ini" in exe
'     [X] embed .head + .foot in exe
'         [X] import local .foot/.head to generate html
'     [X] embed js + css + favicon in exe
'         [X] reference local .js/.css/favicon.png in generated html
'     [X] Dump local resources via F12 key
'         [X] dump MaNo.ini
'         [X] dump markdown.foot
'         [X] dump markdown.head
'         [X] dump markdown.svg
'         [X] dump emojis.lst
'         [X] dump .css/.js
'         [X] dump favicon.png
'     [X] Add support for local ini extra editor settings :
'         [X] [editor] LineNbShow=      (input only)
'         [X] [editor] LineNbFont=      (input only)
'         [X] [editor] LineNbSize=      (input only)
'         [X] [editor] LineNbForeColor= (input only)
'         [X] [editor] LineNbBackColor= (input only)
'         [X] [editor] TextFont=        (input only)
'         [X] [editor] TextSize=        (input only)
'         [X] [editor] TextForeColor=   (input only)
'         [X] [editor] TextBackColor=   (input only)
'     [X] Add support for local ini dialog settings w/ precedence over registry:
'         [X] [editor] ZoomNum=         (input/output)
'         [X] [editor] ZoomDen=         (input/output)
'         [X] [editor] FirstLine=       (input/output)
'         [X] [editor] MatchCase=       (input/output)
'         [X] [editor] WholeWorld=      (input/output)
'         [X] [editor] LastFile=        (input/output)
'         [X] [dialog] Width=           (input/output)
'         [X] [dialog] Height=          (input/output)
'         [X] [dialog] PosX=            (input/output)
'         [X] [dialog] PosY=            (input/output)

' 1.2.0
'-------
' [X] evo: command line mode (per suggestion from Gavin Holt)
'     [X] command line help with "mano /?" or "mano -h"
'     [X] command line convert with "mano -c input.md"
'     [X] command line convert+view with "mano -cv input.md"

' 1.1.0
'-------
' [X] evo: Ctrl + Alt + K to insert a Table of Kontent
' [X] evo: unordered list support several levels (Tabs before the '*')
' [X] evo: handle making links on a multi-level unordered list

' 1.0.0
'-------
' [X] evo: Insert key should change cursor type (square) and/or show "INS/OVR" in status bar
' [X] evo: Ctrl + Down et Ctrl + Up to scroll
' [O] evo: support right mouse click (at minimum, does same thing as left mouse click)
' [X] evo: Ctrl + click to follow an internal link to a header
' [X] evo: handle drag'n drop of a file (open it)
' [X] bug: regresion in save confirmation box: exit w/o saving Vs generate w/o saving
' [O] evo: .cfg file with all shortcuts
' [X] evo: handle file passed in COMMAND$
' [X] bug: from new doc, open existing doc, quit -> last file not remembered
' [X] evo: record search/replace preferences and restore them when program starts
' [O] evo: search wrap
' [X] bug: save doesn't respect Unix EOL
' [X] bug: save doesn't work
' [X] bug: line numbers not displayed correctly when editor only half-full
' [X] evo: center the search/replace MessageBoxes "No further matches found"
' [X] evo: F3/Shift+F3 for Next/Previous occurence
' [X] evo: set Search/Replace field to current selection if any, hit enter to start search
' [X] bug: zoom is reset when doing New file
' [X] evo: display EOL dialog when clicking on status bar
' [X] bug: Ctrl + V, Ctrl + Z and Ctrl + Y happen twice
' [X] evo: enhance refresh_info on: focus, resize, zoom, scroll, type, ctrl+v, ctrl+z, new file...
' [X] bug: first line not saved correctly when receiving %WM_CLOSE
' [X] evo: key shortcuts "y" or "n" in confirmation box
' [X] evo: add status bar
' [X] bug: freeze on change then "No" in confirmation box
' [X] bug: Ctrl + I not well handled (richedit Tab Vs Italic)
' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
' Performance Tools Implementation:
' ---------------------------------
' [X] F5 Generate                   [X] F2 Header Navigator
' [X] F4 Progress Indicator         [X] F7 Check Duplicate Headers
' [X] F8 Fill Empty Links           [X] F9 Fix Incorrect Links
' [X] F11 Sort List Alphabetically
' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
' Markdown Controls Implementation:
' ---------------------------------
'       Selection:      None  1-line  Multil Revert
' Make Link              [X]    [X]    [X]    [X]*      Make_Link_From_Selection    * Handle Lists (Unordered + Ordered)
' Header (Linkable)      [X]    [X]    [X]    [X]*      Start_Lines_With "# "       * Increase Header Level, modulo 6
' Unordered List         [X]    [X]    [X]    [X]       Start_Lines_With "* "
' Ordered List           [X]    [X]    [X]    [X]       Start_Lines_With "1. "
' Blockquote             [X]    [X]    [X]    [X]       Start_Lines_With "> "
' Task List              [X]    [X]    [X]    [X]       Start_Lines_With "- [ ] "
' Inline Code            [X]    [X]    [X]    [X]       Enclose_Selection_With "`"
' Code Block             [X]    [X]    [X]    [X]       Enclose_Selection_With "```" + $CR
' Table                  [X]    [X]    [X]    N/A       Insert_Str ...
' Emoji                  [X]    [X]    [X]    N/A       ShellExecute "..."
' External Link          [X]    [X]    [X]    N/A       Enclose_Selection_Between "[", "](http://)"
' Image                  [X]    [X]    [X]    N/A       Enclose_Selection_Between "![alt text](", ")"
' Link To Header         [X]    [X]    [X]    N/A       Combo Dlg then Enclose_Selection_Between "[", "](#headerlink)"

#COMPILE EXE "MaNo.exe"
#INCLUDE "inc\MaNo.inc"

MACRO IS_COMMAND_LINE = (LEFT$(LCASE$(COMMAND$(1)), 2) = "-c")

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

$MANO     = "MaNo - "
$UNTITLED = "MaNo - Untitled"
$WEB      = "http://mougino.free.fr"

FUNCTION PBMAIN() AS LONG
  ' ----------------------------------------------------
  ' Is MaNo called in command line with argument -c[v] ?
  ' ----------------------------------------------------
    IF COMMAND$(1) = "/?" OR COMMAND$(1) = "-h" THEN
        DosPrint "Usage: mano -c[v] input.md" + $CRLF
        DosPrint "       -c  = convert input.md to input.htm" + $CRLF
        DosPrint "       -cv = convert + view" + $CRLF
        EXIT FUNCTION
    ELSEIF (IS_COMMAND_LINE) THEN
        F5_Generate ' handles if called from command line
        EXIT FUNCTION
    ELSE
        CALL FreeConsole() ' Win32 modes -> hide console
    END IF

  ' -----------------------
  ' Else go on with W32 Gui
  ' -----------------------
    LOCAL  Wid            AS LONG
    LOCAL  Hgt            AS LONG
    LOCAL  Sw             AS DWORD
    LOCAL  Sh             AS DWORD
    LOCAL  wcex           AS WNDCLASSEX
    LOCAL  szClassName    AS STRING * 32
    LOCAL  sbParts()      AS LONG
    LOCAL  sbText()       AS STRING
    LOCAL  ticc           AS INIT_COMMON_CONTROLSEX
    LOCAL  szDisplayName  AS ASCIIZ * %MAX_PATH

    szDisplayName = $UNTITLED
    szClassName   = "MaNo_Class"
    hInstance     = GetModuleHandle(BYVAL %NULL)

  ' -----------------------
  ' set global search flags
  ' -----------------------
    sch_direction = 1       ' 0 = backwards, 1 = forward
    sch_matchcase = 0       ' 0 = no, 1 = yes
    sch_wholeword = 0       ' 0 = no, 1 = yes
    sch_exclusion = 0       ' flag to exclude 2nd dialog from running
    sch_replace   = 0       ' the replace flag

    Sw = GetSystemMetrics(%SM_CXSCREEN)     ' get the screen X and Y size
    Sh = GetSystemMetrics(%SM_CYSCREEN)

    hIcon   = LoadIcon(hInstance,BYVAL 5)   ' get system icon and cursor handles
    hCursor = LoadCursor(%NULL,BYVAL %IDC_ARROW)

  ' ---------------------------------------------------------------------
  ' preload the WNDCLASSEX structure with arguments for RegisterClassEx()
  ' ---------------------------------------------------------------------
    wcex.cbSize        = SIZEOF(wcex)
    wcex.style         = %CS_BYTEALIGNCLIENT OR %CS_BYTEALIGNWINDOW OR %CS_HREDRAW OR %CS_VREDRAW
    wcex.lpfnWndProc   = CODEPTR(Wnd_Proc)
    wcex.cbClsExtra    = 0
    wcex.cbWndExtra    = 0
    wcex.hInstance     = hInstance
    wcex.hIcon         = hIcon
    wcex.hCursor       = hCursor
    wcex.hbrBackground = %NULL
    wcex.lpszMenuName  = %NULL
    wcex.lpszClassName = VARPTR(szClassName)
    wcex.hIconSm       = %NULL

    RegisterClassEx wcex                ' register the window class

  ' --------------------------------------------------------------------
  ' load the common controls library and specify the classes to register
  ' --------------------------------------------------------------------
    ticc.dwSize = SIZEOF(ticc)
    ticc.dwICC = %ICC_BAR_CLASSES
    InitCommonControlsEx ticc

  ' ---------------------------------------------------------
  ' limit the window aspect ratio to no greater that 1.4 to 1
  ' ---------------------------------------------------------
    Hgt = Sh * .65
    IF Sw * .75 > (Sh * .70) THEN
      Wid = Hgt * 1.4
    ELSE
      Wid = Sw * .75   ' Set width & height to percentage of screen size.
    END IF
  ' ----------------------------------------------------------

    hWnd = CreateWindowEx( _
                        %WS_EX_LEFT, _                  ' extended style
                        BYVAL VARPTR(szClassName), _    ' window class name
                        szDisplayName, _                ' window title
                        %WS_OVERLAPPEDWINDOW, _         ' window style
                        Sw\2-(Wid\2), _                 ' initial x position
                        Sh\2-(Hgt\2), _                 ' initial y position
                        Wid, _                          ' initial x size
                        Hgt, _                          ' initial y size
                        %NULL, _                        ' parent window handle
                        %NULL, _                        ' window menu handle
                        hInstance, _                    ' program instance handle
                        BYVAL %NULL)                    ' creation parameters

    hMnu = LoadMenu(hInstance,BYVAL 10)
    SetMenu hWnd, hMnu

    ShowWindow hWnd, %SW_SHOW
    UpdateWindow hWnd

    FUNCTION = Message_Loop              ' call the remote message loop function

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

MACRO Force_Refresh_Info = SetTimer hWnd,990,1,%NULL ' set timer to force refresh info bars

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Message_Loop AS DWORD

    #REGISTER NONE

    LOCAL  rv   AS LONG
    STATIC pmsg AS DWORD                                ' MSG struct pointer
    STATIC MSG  AS tagMSG                               ' MSG structure

    pmsg = VARPTR(MSG)

  MsgLoop:
    GetMessage BYVAL pmsg,%NULL,0,0
    ! test eax, eax
    ! jz lpout

    SELECT CASE AS LONG MSG.message

      CASE %WM_MOUSEWHEEL                               ' CTRL + Mouse-Wheel = Zoom-In / Zoom-Out
        IF ISTRUE GetAsyncKeyState(%VK_CONTROL) THEN
          Force_Refresh_Info ' force refresh info
        END IF

      CASE %WM_KEYUP
        SELECT CASE AS LONG MSG.wParam

      ' ----------------------
      ' Process normal Fn keys
      ' ----------------------
          CASE %VK_F1                                   ' F1 = about
            SendMessage hWnd,%WM_COMMAND,1099,0
            ! jmp MsgLoop

          CASE %VK_F2                                   ' F2 = table of content
            SendMessage hWnd,%WM_COMMAND,1121,0
            ! jmp MsgLoop

          CASE %VK_F3
            IF ISTRUE GetAsyncKeyState(%VK_SHIFT) THEN
              SendMessage hWnd,%WM_COMMAND,1113,0       ' Shift + F3 = previous occurence
            ELSE
              SendMessage hWnd,%WM_COMMAND,1112,0       ' F3 = next occurence
            END IF
            ! jmp MsgLoop

          CASE %VK_F4                                   ' F4 = progress indicator
            SendMessage hWnd,%WM_COMMAND,1122,0
            ! jmp MsgLoop

          CASE %VK_F5                                   ' F5 = generate/preview
            SendMessage hWnd,%WM_COMMAND,1120,0
            ! jmp MsgLoop

          CASE %VK_F7                                   ' F7 = check duplicate headers
            SendMessage hWnd,%WM_COMMAND,1123,0
            ! jmp MsgLoop

          CASE %VK_F8                                   ' F8 = fill empty links
            SendMessage hWnd,%WM_COMMAND,1124,0
            ! jmp MsgLoop

          CASE %VK_F9                                   ' F9 = fix incorrect links
            SendMessage hWnd,%WM_COMMAND,1125,0
            ! jmp MsgLoop

          CASE %VK_F11                                  ' F11 = sort list alphabetically
            SendMessage hWnd,%WM_COMMAND,1126,0
            ! jmp MsgLoop

          CASE %VK_F12                                  ' F12 = Portable Mode
            SendMessage hWnd,%WM_COMMAND,1097,0
            ! jmp MsgLoop

          CASE %VK_INSERT                               ' special case : Insert key
            INS = 1 - INS
            Force_Refresh_Info
            ! jmp MsgLoop

          CASE %VK_UP                                   ' special case : Up arrow key
            IF ISTRUE GetAsyncKeyState(%VK_CONTROL) THEN
              Set_First_Line -1, 1 ' trailing '1' to freeze (not move) caret
            END IF
            ! jmp MsgLoop

          CASE %VK_DOWN                                 ' special case : Down arrow key
            IF ISTRUE GetAsyncKeyState(%VK_CONTROL) THEN
              Set_First_Line +1, 1 ' trailing '1' to freeze (not move) caret
            END IF
            ! jmp MsgLoop

        END SELECT

      ' --------------------------------
      ' Test if the CTRL key is pressed
      ' --------------------------------
        rv = GetAsyncKeyState(%VK_CONTROL) ' ------------------ CONTROL
        ! cmp WORD PTR rv[2], &B1111111111111111
        ! jne lbl2

      ' -----------------------------------------
      ' Test if the SHIFT + CTRL keys are pressed
      ' -----------------------------------------
        rv = GetAsyncKeyState(%VK_SHIFT)     ' ------------------ SHIFT
        ! cmp WORD PTR rv[2], &B1111111111111111
        ! jne lbl0

        SELECT CASE AS LONG MSG.wParam

          CASE 83, 115                                  ' Ctrl + Shift + S save file as
            SendMessage hWnd,%WM_COMMAND,1021,0
            ! jmp MsgLoop

        END SELECT
        lbl0:

      ' --------------------------------------
      ' Test if the ALT +CTRL keys are pressed
      ' --------------------------------------
        rv = GetAsyncKeyState(%VK_MENU)      ' ------------------ ALT
        ! cmp WORD PTR rv[2], &B1111111111111111
        ! jne lbl1

        SELECT CASE AS LONG MSG.wParam

          CASE ASC("h"), ASC("H")                       ' Ctrl + Alt + H header
            SendMessage hWnd,%WM_COMMAND,1200,0
            ! jmp MsgLoop

          CASE ASC("k"), ASC("K")                       ' Ctrl + Alt + K Table Of Kontent
            SendMessage hWnd,%WM_COMMAND,1212,0
            ! jmp MsgLoop

          CASE ASC("l"), ASC("L")                       ' Ctrl + Alt + L link to header
            SendMessage hWnd,%WM_COMMAND,1201,0
            ! jmp MsgLoop

          CASE ASC("e"), ASC("E")                       ' Ctrl + Alt + E external link
            SendMessage hEdit,%EM_UNDO,0,0              ' cancel Euro symbol
            SendMessage hWnd,%WM_COMMAND,1202,0
            ! jmp MsgLoop

          CASE ASC("o"), ASC("O")                       ' Ctrl + Alt + O ordered list
            SendMessage hWnd,%WM_COMMAND,1203,0
            ! jmp MsgLoop

          CASE ASC("u"), ASC("U")                       ' Ctrl + Alt + U unordered list
            SendMessage hWnd,%WM_COMMAND,1204,0
            ! jmp MsgLoop

          CASE ASC("c"), ASC("C")                       ' Ctrl + Alt + C code block
            SendMessage hWnd,%WM_COMMAND,1205,0
            ! jmp MsgLoop

          CASE ASC("d"), ASC("D")                       ' Ctrl + Alt + D inline code
            SendMessage hWnd,%WM_COMMAND,1206,0
            ! jmp MsgLoop

          CASE ASC("t"), ASC("T")                       ' Ctrl + Alt + T table
            SendMessage hWnd,%WM_COMMAND,1207,0
            ! jmp MsgLoop

          CASE ASC("i"), ASC("I")                       ' Ctrl + Alt + I image
            SendMessage hWnd,%WM_COMMAND,1208,0
            ! jmp MsgLoop

          CASE ASC("q"), ASC("Q")                       ' Ctrl + Alt + Q blockquote
            SendMessage hWnd,%WM_COMMAND,1209,0
            ! jmp MsgLoop

          CASE ASC("a"), ASC("A")                       ' Ctrl + Alt + A task list
            SendMessage hWnd,%WM_COMMAND,1210,0
            ! jmp MsgLoop

          CASE ASC("j"), ASC("J")                       ' Ctrl + Alt + J emoji
            SendMessage hWnd,%WM_COMMAND,1211,0
            ! jmp MsgLoop

        END SELECT
        lbl1:

        SELECT CASE AS LONG MSG.wParam

        ' -----------------------------------------
        ' Defeat the following Richedit Ctrl + keys
        ' -----------------------------------------
          CASE ASC("m"), ASC("M")                       ' Ctrl + M
            ! jmp MsgLoop

        ' ------------------
        ' File menu hot keys
        ' ------------------
          CASE ASC("n"), ASC("N")                       ' Ctrl + N new file
            SendMessage hWnd,%WM_COMMAND,1000,0
            ! jmp MsgLoop

          CASE ASC("o"), ASC("O")                       ' Ctrl + O open file
            SendMessage hWnd,%WM_COMMAND,1010,0
            ! jmp MsgLoop

          CASE ASC("s"), ASC("S")                       ' Ctrl + S save file
            SendMessage hWnd,%WM_COMMAND,1020,0
            ! jmp MsgLoop

          CASE ASC("w"), ASC("W")                       ' Ctrl + W close
            SendMessage hWnd,%WM_COMMAND,1098,0
            ! jmp MsgLoop

        ' ---------------------------------------------
        ' Edit menu hot keys. Some windows versions of
        ' richedit are not reliable with the built in
        ' hotkeys so enforce standard behaviour of edit
        ' control across different windows versions
        ' ---------------------------------------------
          CASE ASC("z"), ASC("Z")                       ' Ctrl + Z  undo
'           SendMessage hEdit,%EM_UNDO,0,0
            Force_Refresh_Info
            ! jmp MsgLoop

          CASE ASC("y"), ASC("Y")                       ' Ctrl + Y  redo
'           SendMessage hEdit,%EM_REDO,0,0
            Force_Refresh_Info
            ! jmp MsgLoop

          CASE ASC("c"), ASC("C")                       ' Ctrl + C copy
            SendMessage hEdit,%WM_COPY,0,0
            Force_Refresh_Info
            ! jmp MsgLoop

          CASE ASC("x"), ASC("X")                       ' Ctrl + X cut
            SendMessage hEdit,%WM_CUT,0,0
            Force_Refresh_Info
            ! jmp MsgLoop

          CASE ASC("v"), ASC("V")                       ' Ctrl + V paste
'           SendMessage hEdit,%EM_PASTESPECIAL,%CF_TEXT,0
            Force_Refresh_Info
            ! jmp MsgLoop

          CASE ASC("a"), ASC("A")                       ' Ctrl + A select all
            SendMessage hWnd,%WM_COMMAND,1105,0
            ! jmp MsgLoop

          CASE ASC("g"), ASC("G")                       ' Ctrl + G goto line number
            SendMessage hWnd,%WM_COMMAND,1106,0
            ! jmp MsgLoop

        ' --------------------
        ' format menu hot keys
        ' --------------------
          CASE ASC("b"), ASC("B")                       ' Ctrl + B bold
            SendMessage hWnd,%WM_COMMAND,1130,0
            ! jmp MsgLoop

          CASE ASC("i"), ASC("I")                       ' Ctrl + I italic
            SendMessage hEdit,%EM_UNDO,0,0 ' cancel Tab
            SendMessage hWnd,%WM_COMMAND,1131,0
            ! jmp MsgLoop

          CASE ASC("u"), ASC("U")                       ' Ctrl + U underline
            SendMessage hWnd,%WM_COMMAND,1135,0
            ! jmp MsgLoop

          CASE ASC("T"), ASC("T")                       ' Ctrl + T strikethrough
            SendMessage hWnd,%WM_COMMAND,1132,0
            ! jmp MsgLoop

          CASE ASC("l"), ASC("L")                       ' Ctrl + L make link
            SendMessage hWnd,%WM_COMMAND,1133,0
            ! jmp MsgLoop

          CASE ASC("e"), ASC("E")                       ' Ctrl + E change eol
            SendMessage hWnd,%WM_COMMAND,1134,0
            ! jmp MsgLoop

        ' --------------------
        ' search menu hot keys
        ' --------------------
          CASE ASC("f"), ASC("F")                       ' Ctrl + F search
            SendMessage hWnd,%WM_COMMAND,1110,0
            ! jmp MsgLoop

          CASE ASC("h"), ASC("H")                       ' Ctrl + H replace
            SendMessage hWnd,%WM_COMMAND,1111,0
            ! jmp MsgLoop

        END SELECT
        lbl2:

    END SELECT

    TranslateMessage BYVAL pmsg                          ' translate any virtual-key messages
    DispatchMessage  BYVAL pmsg                          ' dispatch message to the nominated Wnd_Proc address
    ! jmp MsgLoop

    lpout:
    FUNCTION = Msg.wParam

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

MACRO Show_Modification_Dialog
  h = DialogBox(hInstance,BYVAL 2000,hWnd,CODEPTR(Confirm_Proc))
  IF h = 1 THEN                                                    ' get confirmation (YES button)
    GetWindowText hWnd,BYVAL VARPTR(pthbuffer),%MAX_PATH           ' get file name from titlebar
    IF pthbuffer = $UNTITLED THEN                                  ' if "Untitled"
      pthbuffer = ""                                               ' zero the buffer
      SaveFileDialog hInstance,hWin,BYVAL VARPTR(pthbuffer), _
                     "Save File",BYVAL VARPTR(fPattern)            ' call the file save dialog
      IF pthbuffer = "" THEN                                       ' if user clicked cancel
        IF Msg = %WM_CLOSE THEN
          ! jmp close_out                                          ' exit without writing changes
        END IF
        EXIT FUNCTION
      END IF
    ELSE
      pthbuffer = MID$(pthbuffer, _                                ' remove the "MaNo - " from the title
        INSTR(pthbuffer,$MANO)+LEN($MANO))                         ' this is the file to save to
    END IF
    Write_Disk_File BYVAL VARPTR(pthbuffer)
  ELSEIF h = 2 THEN                                                ' confirmation box cancelled
    FUNCTION = 0                                                   ' (will prevent closing)
    EXIT FUNCTION
  END IF
END MACRO

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Wnd_Proc(BYVAL hWin   AS LONG, _
                 BYVAL Msg    AS LONG, _
                 BYVAL wParam AS LONG, _
                 BYVAL lParam AS LONG) AS LONG

    LOCAL sflag, znum, zden AS DWORD
    LOCAL w, h, x, y, lin1  AS LONG
    LOCAL rct               AS RECT
    LOCAL pthbuffer         AS ASCIIZ * %MAX_PATH
    LOCAL lastfile          AS STRING
    LOCAL ptnmhdr           AS NMHDR PTR
    LOCAL lpnm              AS NMMOUSE PTR

    SELECT CASE AS LONG Msg             ' force integer testing of messages

      CASE %WM_CREATE
      ' ------------------------------------------------------
      ' create a ZERO seperated double ZERO terminated list of
      ' string pairs in the format required by the Windows API
      ' functions for the two file common dialogs.
      ' ------------------------------------------------------
        fPattern = CHR$("MD Files",0,"*.md",0, _
                        "Text Files",0,"*.txt",0, _
                        "All Files",0,"*.*",0, _
                        0)

      ' Create the RichEdit control
        LoadLibrary "RICHED20.DLL"
        IF File_Exist(EXE.PATH$ + "MaNo.ini") THEN
            hFont  = Make_Font(GetIniS("editor","TextFont"), GetIniV("editor","TextSize"))
            hFont2 = Make_Font(GetIniS("editor","LineNbFont"), GetIniV("editor","LineNbSize"))
        ELSE
            hFont  = Make_Font("Courier New", 11) ' standard font for editor
            hFont2 = Make_Font("Courier New", 13) ' standard font for line-number column
        END IF
        hEdit = Rich_Edit(hWin,0,0,100,100,1234)
        SendMessage hEdit,%EM_EXLIMITTEXT,0,-1
        SendMessage hEdit,%EM_SETOPTIONS,%ECOOP_XOR,%ECO_SELECTIONBAR
        SendMessage hEdit,%EM_SETTEXTMODE,%TM_PLAINTEXT OR _
                          %TM_MULTILEVELUNDO OR %TM_MULTICODEPAGE, 0
        IF ISFALSE File_Exist(EXE.PATH$ + "MaNo.ini") THEN
            SendMessage hEdit,%EM_SETMARGINS,%EC_LEFTMARGIN,40
        ELSEIF ISTRUE GetIniV("editor","LineNbShow") THEN
            SendMessage hEdit,%EM_SETMARGINS,%EC_LEFTMARGIN,40
        END IF
        SendMessage hEdit,%WM_SETFONT,hFont,%TRUE
        SendMessage hEdit,%EM_SETEVENTMASK,0,%ENM_CHANGE OR %ENM_UPDATE OR _
                          %ENM_SELCHANGE OR %ENM_MOUSEEVENTS
        IF File_Exist(EXE.PATH$ + "MaNo.ini") THEN
            Set_Colors hEdit, GetIniS("editor","TextForeColor"), GetIniS("editor","TextBackColor")
        END IF

      ' And subclass it for custom INSERT caret
        SetProp hEdit, "OldProc", SetWindowLong(hEdit,%GWL_WNDPROC,CODEPTR(RE_Subclass))

      ' Create the StatusBar control
        hBar = Status_Bar(hWin,0,177,365,20,1235)
        SendMessage hBar,%WM_SETFONT,GetStockObject(%DEFAULT_GUI_FONT),%TRUE
        SendMessage hBar,%WM_SIZE,0,0

      ' Restore dialog position, size, zoom and last file opened from ini/registry
        EOL = $LF ' Unix EOL by default
        IF File_Exist(EXE.PATH$ + "MaNo.ini") THEN
            w             = GetIniV("dialog","Width")
            h             = GetIniV("dialog","Height")
            x             = GetIniV("dialog","PosX")
            y             = GetIniV("dialog","PosY")
            znum          = GetIniV("editor","ZoomNum")   : IF znum = 0 THEN znum = 1
            zden          = GetIniV("editor","ZoomDen")   : IF zden = 0 THEN zden = 1
            lin1          = GetIniV("editor","FirstLine") : IF lin1 = 0 THEN lin1 = 1
            sch_matchcase = GetIniV("editor","MatchCase")
            sch_wholeword = GetIniV("editor","WholeWorld")
            lastfile      = GetIniS("editor","LastFile")
        ELSE
            w             = VAL(getreg(0, "software\MaNo", "width", "0"))
            h             = VAL(getreg(0, "software\MaNo", "height", "0"))
            x             = VAL(getreg(0, "software\MaNo", "xoffset", "0"))
            y             = VAL(getreg(0, "software\MaNo", "yoffset", "0"))
            znum          = VAL(getreg(0, "software\MaNo", "zoomnum", "1"))
            zden          = VAL(getreg(0, "software\MaNo", "zoomden", "1"))
            lin1          = VAL(getreg(0, "software\MaNo", "firstline", "1"))
            sch_matchcase = VAL(getreg(0, "software\MaNo", "matchcase", "0"))
            sch_wholeword = VAL(getreg(0, "software\MaNo", "wholeword", "0"))
            lastfile      =     getreg(0, "software\MaNo", "lastfile", "")
        END IF

      ' Markdown file passed as argument of the program?
        IF COMMAND$ <> "" THEN lastfile = TRIM$(COMMAND$,$DQ) : lin1 = 0

      ' Adjust dialog
        IF x * y * w * h <> 0 THEN SetWindowPos hWin,BYVAL 0,x,y,w,h,%SWP_SHOWWINDOW
        SendMessage hEdit,%EM_SETZOOM,znum,zden
        IF LEN(lastfile) AND lastfile <> "Untitled" THEN
          IF File_Exist(lastfile) THEN
            pthbuffer = lastfile
            Open_Disk_File BYVAL VARPTR(pthbuffer)
            pthbuffer = $MANO + lastfile
            SetWindowText hWin,BYVAL VARPTR(pthbuffer)
            Set_First_Line lin1
          END IF
        END IF
        DragAcceptFiles hWin,1  ' accept file drag'n drop
        Force_Refresh_Info      ' force refresh info

      CASE %WM_COMMAND
      ' ------------------------------------------------------
      ' handle windows and user commands (mostly menus and
      ' shortcuts).
      ' ------------------------------------------------------

        SELECT CASE AS LONG HIWRD(wParam)
          CASE %EN_UPDATE                 ' user scrolling notification
            Refresh_Info_Bars
        END SELECT

        SELECT CASE AS LONG wParam
          CASE %EN_CHANGE                 ' user typing notification
            Force_Refresh_Info

        ' ---------
        ' file menu
        ' ---------
          CASE 1000     ' ----------------------------- New File
            IF SendMessage(hEdit,%EM_GETMODIFY,0,0) <> 0 THEN
              Show_Modification_Dialog
            END IF
            Get_Zoom (znum, zden)                       ' store zoom
            SetWindowText hEdit,BYVAL %NULL             ' reset rich edit content
            SendMessage hEdit,%EM_SETZOOM,znum,zden     ' restore zoom
            pthbuffer = $UNTITLED
            SetWindowText hWin,BYVAL VARPTR(pthbuffer)
            EOL = $LF ' Unix EOL by default
            Force_Refresh_Info ' force refresh info

          CASE 1010     ' ----------------------------- Open File
            IF SendMessage(hEdit,%EM_GETMODIFY,0,0) <> 0 THEN
              Show_Modification_Dialog
            END IF
            pthbuffer = ""
            OpenFileDialog hInstance,hWin,BYVAL VARPTR(pthbuffer), _
                           "Open File",BYVAL VARPTR(fPattern)
            IF pthbuffer = "" THEN EXIT FUNCTION
            Open_Disk_File BYVAL VARPTR(pthbuffer)
            Force_Refresh_Info ' force refresh info

          CASE 1020     ' ----------------------------- Save File
            GetWindowText hWnd,BYVAL VARPTR(pthbuffer),%MAX_PATH
            IF pthbuffer = $UNTITLED THEN GOTO save_file_as
            pthbuffer = MID$(pthbuffer,INSTR(pthbuffer,$MANO)+LEN($MANO))
            Write_Disk_File BYVAL VARPTR(pthbuffer)
            Force_Refresh_Info ' force refresh info

          CASE 1021     ' ----------------------------- Save File As
          save_file_as:
            pthbuffer = ""
            SaveFileDialog hInstance,hWin,BYVAL VARPTR(pthbuffer), _
                           "Save File As",BYVAL VARPTR(fPattern)
            IF pthbuffer = "" THEN EXIT FUNCTION
            Write_Disk_File BYVAL VARPTR(pthbuffer)
            Force_Refresh_Info ' force refresh info

          CASE 1097     ' ----------------------------- Portable Mode
            DialogBox(hInstance,BYVAL 6500,hWnd,CODEPTR(Portable_Proc))

          CASE 1098     ' ----------------------------- Close Editor
            SendMessage hWin,%WM_SYSCOMMAND,%SC_CLOSE,0

          CASE 1099     ' ----------------------------- About Box
            DialogBox(hInstance,BYVAL 6000,hWnd,CODEPTR(About_Proc))

        ' ---------
        ' edit menu
        ' ---------
          CASE 1100                                     ' Undo
            SendMessage hEdit,%EM_UNDO,0,0
          CASE 1101                                     ' Redo
            SendMessage hEdit,%EM_REDO,0,0
          CASE 1102                                     ' Copy
            SendMessage hEdit,%WM_COPY,0,0
          CASE 1103                                     ' Cut
            SendMessage hEdit,%WM_CUT,0,0
          CASE 1104                                     ' Paste
            SendMessage hEdit,%EM_PASTESPECIAL, _
              %CF_TEXT,0
          CASE 1105                                     ' Select All
            Select_All
          CASE 1106                                     ' Goto Line
            DialogBox(hInstance,BYVAL 5000,hWnd,CODEPTR(Goto_Line))

        ' -----------
        ' format menu
        ' -----------
          CASE 1130                                     ' Bold
            Enclose_Selection_With "**"
          CASE 1131                                     ' Italic
            Enclose_Selection_With "*"
          CASE 1135                                     ' Underline
            Enclose_Selection_With "__"
          CASE 1132                                     ' Strikethrough
            Enclose_Selection_With "~~"
          CASE 1133                                     ' Make Link
            Make_Link_From_Selection
          CASE 1134                                     ' Change EOL
            IF DialogBox(hInstance, BYVAL _
              7000,hWnd,CODEPTR(Change_Eol)) = 1 THEN
              IF EOL = $LF THEN EOL = $CRLF ELSE EOL = $LF
              SendMessage hEdit,%EM_SETMODIFY,%TRUE,0
            END IF

        ' -----------
        ' search menu
        ' -----------
          CASE 1110                                     ' Find
            IF sch_exclusion = 1 THEN EXIT FUNCTION
            sch_exclusion = 1
            CreateDialogParam(hInstance,BYVAL 3000, _   ' trailing 0 means search only
              hWnd,CODEPTR(Find_Search_Proc),0)

          CASE 1111                                     ' Replace
            IF sch_exclusion = 1 THEN EXIT FUNCTION
            sch_exclusion = 1
            sch_replace   = 1
            CreateDialogParam(hInstance,BYVAL 4000, _   ' trailing 1 means replace as well
              hWnd,CODEPTR(Find_Search_Proc),1)

          CASE 1112                                     ' Next Occurence
            IF sch_exclusion = 1 THEN
              EXIT FUNCTION                             ' only usable when find/replace dialog is not open
            END IF
            sch_direction = 1                           ' search forward
            Find_Next

          CASE 1113                                     ' Previous Occurence
            IF sch_exclusion = 1 THEN
              EXIT FUNCTION                             ' only usable when find/replace dialog is not open
            END IF
            sch_direction = 0                           ' search backward
            Find_Next

        ' -----------
        ' insert menu
        ' -----------
          CASE 1200                                     ' Header (Linkable)
            Start_Lines_With "# "

          CASE 1212                                     ' Table Of Kontent
            Create_ToK()

          CASE 1201                                     ' Link To Header
            Link_To_Header_Dlg()

          CASE 1202                                     ' External Link
            Enclose_Selection_Between _
              "[", _        ..and..
              "](http://)"

          CASE 1203                                     ' Ordered List
            Start_Lines_With "1. "

          CASE 1204                                     ' Unordered List
            Start_Lines_With "* "

          CASE 1205                                     ' Code Block
            Enclose_Selection_With "```" + $CR

          CASE 1206                                     ' Inline Code
            Enclose_Selection_With "`"

          CASE 1207                                     ' Table
            Insert_Str  _
               EOL _
             + "Title1 | Title2" + EOL _
             + "-------|-------" + EOL _
             + "ContentCell_1 | ContentCell_2" + EOL _
             + EOL

          CASE 1208                                     ' Image
            Enclose_Selection_Between _
              "![alt text](", _ ..and..
              ")"

          CASE 1209                                     ' Blockquote
            Start_Lines_With "> "

          CASE 1210                                     ' Task List
            Start_Lines_With "- [ ] "

          CASE 1211                                     ' Emoji
            ShellExecute 0,"open", _
              "https://www.webpagefx.com/tools/emoji-cheat-sheet/", _
              "","",%SW_SHOW

        ' ----------
        ' tools menu
        ' ----------
          CASE 1120                                     ' Generate/View In Browser
            IF SendMessage(hEdit,%EM_GETMODIFY,0,0) <> 0 THEN
              Show_Modification_Dialog
              IF h = 0 THEN EXIT FUNCTION               ' "NO" button in confirmation box
            END IF
            F5_Generate()

          CASE 1121                                     ' Table Of Content
            F2_Header_Nav()

          CASE 1122                                     ' Progress Indicator
            F4_Progress_Indicator()

          CASE 1123                                     ' Check Duplicate Headers
            F7_Check_Duplicate_Headers()

          CASE 1124                                     ' Fill Empty Links
            F8_Fill_Empty_Links()

          CASE 1125                                     ' Fix Incorrect Links
            F9_Fix_Inco_Links()

          CASE 1126                                     ' Sort List Alphabetically
            F11_Sort_List()

        END SELECT

      CASE %WM_DROPFILES
      ' ------------------------------------------------------
      ' handle drag'n drop of a new file on the dialog
      ' ------------------------------------------------------
      ' Prevent drag'n drop of multiple files
      ' -------------------------------------
        IF DragQueryFile(wParam,-1,BYVAL 0,0) > 1 THEN
          BEEP
          EXIT FUNCTION
        END IF
      ' Does the current document need to be saved ?
      ' --------------------------------------------
        IF SendMessage(hEdit,%EM_GETMODIFY,0,0) <> 0 THEN
          Show_Modification_Dialog
        END IF
      ' Proceed with opening the dropped file
      ' -------------------------------------
        DragQueryFile wParam,0,BYVAL VARPTR(pthbuffer),%MAX_PATH
        Open_Disk_File BYVAL VARPTR(pthbuffer)
        DragFinish wParam
        Force_Refresh_Info

      CASE %WM_NOTIFY
      ' ------------------------------------------------------
      ' handle notifications: moving caret, click on statusbar
      ' and ctrl + mouse-click on link.
      ' ------------------------------------------------------
        ptnmhdr = lParam
        IF @ptnmhdr.code = %EN_SELCHANGE THEN           ' caret moving notification
          Force_Refresh_Info ' force refresh info

        ELSEIF @ptnmhdr.idFrom = 1235 AND _
               @ptnmhdr.code = %NM_CLICK THEN           ' click on status bar notification
          lpnm = lParam
          IF @lpnm.dwItemSpec = 2 THEN                  ' clicked on 3rd part of status bar (0-indexed)
            SendMessage hWnd,%WM_COMMAND,1134,0         ' show change eol dialog
          END IF

        ELSEIF @ptnmhdr.code = %EN_MSGFILTER THEN       ' notification from %ENM_MOUSEEVENTS
          LOCAL pmf AS MSGFILTER PTR
          pmf = lParam
          IF @pmf.msg = %WM_LBUTTONUP AND _
             ISTRUE GetAsyncKeyState(%VK_CONTROL) THEN  ' ctrl + left-mouse-click
             Follow_Link()
          END IF
        END IF

      CASE %WM_TIMER
      ' ------------------------------------------------------
      ' handle timer triggered by 'Force_Refresh_Info'
      ' ------------------------------------------------------
        KillTimer hWnd,990
        Refresh_Info_Bars

      CASE %WM_SETFOCUS
      ' ------------------------------------------------------
      ' handle 'gain focus' notification
      ' ------------------------------------------------------
        SetFocus hEdit
        Force_Refresh_Info ' force refresh info

      CASE %WM_SIZE
      ' ------------------------------------------------------
      ' handle 'resize dialog' notification
      ' ------------------------------------------------------
        GetClientRect hWin,BYVAL VARPTR(rct)
        MoveWindow hEdit,0,0,rct.nRight,rct.nBottom-22,%TRUE
        MoveWindow hBar,0,rct.nBottom-20,rct.nRight,rct.nBottom,%TRUE
        Force_Refresh_Info ' force refresh info

      CASE %WM_CLOSE
      ' ------------------------------------------------------
      ' handle 'close dialog' notification
      ' ------------------------------------------------------
        IF SendMessage(hEdit,%EM_GETMODIFY,0,0) <> 0 THEN
          Show_Modification_Dialog
        END IF

      close_out:

      CASE %WM_DESTROY
      ' ------------------------------------------------------
      ' handle notification of program exit
      ' ------------------------------------------------------
        ' Get dialog properties
          GetWindowRect hWin,BYVAL VARPTR(rct)
          x = rct.nLeft
          y = rct.nTop
          w = rct.nRight - rct.nLeft
          h = rct.nBottom - rct.nTop
          Get_Zoom (znum, zden)
          GetWindowText hWnd,BYVAL VARPTR(pthbuffer),%MAX_PATH
          pthbuffer = MID$(pthbuffer,INSTR(pthbuffer,$MANO)+LEN($MANO))
          lastfile = TRIM$(pthbuffer)
          lin1 = Get_First_Line()
        ' And save them in ini/registry
          IF File_Exist(EXE.PATH$ + "MaNo.ini") THEN
            SetIni "dialog", "Width", STR$(w)
            SetIni "dialog", "Height", STR$(h)
            SetIni "dialog", "PosX", STR$(x)
            SetIni "dialog", "PosY", STR$(y)
            SetIni "editor", "ZoomNum", STR$(znum)
            SetIni "editor", "ZoomDen", STR$(zden)
            SetIni "editor", "FirstLine", STR$(lin1)
            SetIni "editor", "MatchCase", STR$(sch_matchcase)
            SetIni "editor", "WholeWorld", STR$(sch_wholeword)
            SetIni "editor", "LastFile", lastfile
          END IF
          setreg 0, "software\MaNo", "width",     STR$(w)
          setreg 0, "software\MaNo", "height",    STR$(h)
          setreg 0, "software\MaNo", "xoffset",   STR$(x)
          setreg 0, "software\MaNo", "yoffset",   STR$(y)
          setreg 0, "software\MaNo", "zoomnum",   STR$(znum)
          setreg 0, "software\MaNo", "zoomden",   STR$(zden)
          setreg 0, "software\MaNo", "firstline", STR$(lin1)
          setreg 0, "software\MaNo", "matchcase", STR$(sch_matchcase)
          setreg 0, "software\MaNo", "wholeword", STR$(sch_wholeword)
          setreg 0, "software\MaNo", "lastfile",  lastfile
        ' Finally: terminate the message loop
          PostQuitMessage 0

    END SELECT

    FUNCTION = DefWindowProc(hWin,Msg,wParam,lParam)

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Make_Font(BYVAL FFont AS STRING, BYVAL PointSize AS LONG) AS LONG

     LOCAL hDC      AS LONG
     LOCAL CyPixels AS LONG

     hDC = GetDC(%HWND_DESKTOP)
     CyPixels  = GetDeviceCaps(hDC, %LOGPIXELSY)
     ReleaseDC %HWND_DESKTOP, hDC
     PointSize = (PointSize * CyPixels) \ 72

     FUNCTION = CreateFont(0 - PointSize, 0, 0, 0, %FW_NORMAL, 0, 0, 0, _
                %ANSI_CHARSET, %OUT_TT_PRECIS, %CLIP_DEFAULT_PRECIS, _
                %DEFAULT_QUALITY, %FF_DONTCARE, BYCOPY FFont)
END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Rich_Edit(hParent AS LONG, tx AS LONG, ty AS LONG, _
                       wd AS LONG, ht AS LONG, ID AS LONG) AS LONG

    LOCAL handl AS DWORD

    handl = CreateWindowEx(%WS_EX_STATICEDGE,"RichEdit20a",BYVAL %NULL, _
                 %WS_VISIBLE OR %WS_CHILDWINDOW OR %ES_MULTILINE OR _
                 %WS_VSCROLL OR %WS_HSCROLL OR %ES_AUTOHSCROLL OR _
                 %ES_AUTOVSCROLL OR %ES_NOHIDESEL OR %WS_CLIPSIBLINGS,_
                 tx,ty,wd,ht,hParent,ID,hInstance,BYVAL %NULL)

    FUNCTION = handl

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Status_Bar(hParent AS LONG, tx AS LONG, ty AS LONG, _
                       wd AS LONG, ht AS LONG, ID AS LONG) AS LONG

    LOCAL handl AS DWORD
    LOCAL plEdge AS LONG PTR

    handl = CreateWindowEx(%NULL, _                                 ' extended styles
                                "msctls_statusbar32", _             ' class name
                                "", _                               ' caption
                                %WS_CHILD OR %WS_VISIBLE OR _       ' window styles
                                %CCS_BOTTOM OR %SBARS_SIZEGRIP, _   ' class styles
                                tx, ty, _                           ' left, top
                                wd, ht, _                           ' width, height
                                hParent, ID, _                      ' handle of parent, control ID
                                hInstance, BYVAL %NULL)             ' handle of instance, creation parameters

    ' Build the status bar parts
    plEdge = HeapAlloc(GetProcessHeap(),%HEAP_ZERO_MEMORY,5*5)
    IF ISTRUE plEdge THEN
       @plEdge[0] = 145
       @plEdge[1] = 330
       @plEdge[2] = 400
       @plEdge[3] = 440
       @plEdge[4] = -1
       SendMessage handl,%SB_SETPARTS,5,BYVAL plEdge
       HeapFree GetProcessHeap(),0,BYVAL plEdge
    END IF

    FUNCTION = handl

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Open_Disk_File(BYVAL pName AS DWORD)

    LOCAL hFile         AS LONG
    LOCAL br            AS DWORD
    LOCAL ofs           AS OFSTRUCT
    LOCAL es            AS EDITSTREAM
    LOCAL aPtr          AS ASCIIZ PTR
    LOCAL szDisplayName AS ASCIIZ * %MAX_PATH

    hFile = CreateFile(BYVAL pName,%GENERIC_READ,%FILE_SHARE_READ,BYVAL %NULL, _
                       %OPEN_EXISTING,%FILE_FLAG_POSIX_SEMANTICS,BYVAL %NULL)

    es.dwCookie    = hFile
    es.dwError     = 0
    es.pfnCallback = CODEPTR(Open_DF_CallBack)
    br = SendMessage(hEdit,%EM_STREAMIN,%SF_TEXT,BYVAL VARPTR(es))

    CloseHandle hFile

    aPtr = pName
    szDisplayName = $MANO + @aPtr
    SetWindowText hWnd,BYVAL VARPTR(szDisplayName)
    SendMessage hEdit,%EM_SETMODIFY,%FALSE,0

    IF ISFALSE INSTR(Load_File(pName),$CR) THEN
      EOL = $LF    ' Unix EOL
    ELSE
      EOL = $CRLF  ' Windows EOL
    END IF

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Open_DF_CallBack(BYVAL dwCookie AS LONG, _
                          BYVAL pbBuff AS LONG, _
                          BYVAL cb AS LONG, _
                          BYVAL pcb AS LONG PTR) AS LONG

    rv& = ReadFile(dwCookie,BYVAL pbBuff,cb,@pcb,BYVAL %NULL)

    FUNCTION = 0

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Write_Disk_File(BYVAL pName AS DWORD)

    LOCAL hFile     AS LONG
    LOCAL br        AS DWORD
    LOCAL ofs       AS OFSTRUCT
    LOCAL es        AS EDITSTREAM
    LOCAL aPtr      AS ASCIIZ PTR
    LOCAL szDisplayName AS ASCIIZ * %MAX_PATH

    hFile = CreateFile(BYVAL pName,%GENERIC_WRITE,%FILE_SHARE_WRITE,BYVAL %NULL, _
                       %CREATE_ALWAYS,%FILE_FLAG_POSIX_SEMANTICS,BYVAL %NULL)

    es.dwCookie    = hFile
    es.dwError     = 0
    es.pfnCallback = CODEPTR(Write_DF_CallBack)
    SendMessage hEdit,%EM_STREAMOUT,%SF_TEXT,BYVAL VARPTR(es)

    CloseHandle hFile
    IF EOL = $LF THEN Save_File pName, REMOVE$(Load_File(pName),$CR)

    aPtr = pName
    szDisplayName = $MANO + @aPtr
    SetWindowText hWnd,BYVAL VARPTR(szDisplayName)
    SendMessage hEdit,%EM_SETMODIFY,%FALSE,0

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Write_DF_CallBack(BYVAL dwCookie AS LONG, _
                           BYVAL pbBuff AS LONG, _
                           BYVAL cb AS LONG, _
                           BYVAL pcb AS LONG PTR) AS LONG

    rv& = WriteFile(dwCookie,BYVAL pbBuff,cb,@pcb,BYVAL %NULL)

    FUNCTION = 0

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION RE_Get AS STRING

    LOCAL es   AS EDITSTREAM
    LOCAL srtf AS STRING

    es.dwCookie    = VARPTR(srtf)             ' pointer to buffer
    es.pfnCallback = CODEPTR(RE_Get_Callback) ' pointer to callback function
    SendMessage hEdit,%EM_STREAMOUT,%SF_TEXT,BYVAL VARPTR(es)
    FUNCTION = srtf

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION RE_Get_Callback(BYVAL dwCookie AS DWORD, _
                         BYVAL pbbuff AS BYTE PTR, _
                         BYVAL cb AS LONG, _
                         BYREF pcb AS LONG) AS LONG

    LOCAL psBuffer AS STRING PTR

    psBuffer = dwCookie
    IF cb < 1 THEN EXIT FUNCTION
    @psBuffer += PEEK$(pbbuff,cb)
    pcb = cb

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION RE_Put(tx AS STRING) AS LONG

    LOCAL es   AS EDITSTREAM
    LOCAL srtf AS STRING

    srtf = tx
    es.dwCookie = VARPTR(srtf)                ' pointer to buffer
    es.pfnCallback = CODEPTR(RE_Put_Callback) ' pointer to callback function
    FUNCTION = SendMessage(hEdit,%EM_STREAMIN,%SF_TEXT,VARPTR(es))

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION RE_Put_Callback(BYVAL dwCookie AS DWORD, _
                         BYVAL pbbuff AS BYTE PTR, _
                         BYVAL cb AS LONG, _
                         BYREF pcb AS LONG) AS LONG

   LOCAL psBuffer AS STRING PTR

   psBuffer = dwCookie
   pcb = MIN(LEN(@psBuffer),cb)
   IF pcb > 0 THEN
      POKE$ pbBuff,LEFT$(@psBuffer,pcb)
      @psBuffer = MID$(@psBuffer,pcb+1)
   END IF

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Confirm_Proc(BYVAL hDlg   AS LONG, _
                      BYVAL Msg    AS LONG, _
                      BYVAL wParam AS LONG, _
                      BYVAL lParam AS LONG) AS LONG

  ' ---------------------------------------------------
  ' message processing for the file confirmation dialog
  ' ---------------------------------------------------
    SELECT CASE AS LONG Msg             ' process messages as integers

      CASE %WM_INITDIALOG
        Center_Dialog hDlg

      CASE %WM_COMMAND
        SELECT CASE AS LONG wParam
          CASE 2010, %IDOK              ' the "YES" button
            EndDialog hDlg, 1           ' return "1" on YES
          CASE 2011                     ' the "NO" button
            EndDialog hDlg, 0           ' return "0" on NO
          CASE %IDCANCEL
            EndDialog hDlg, 2           ' return "2" on CANCEL
        END SELECT

      CASE %WM_CLOSE                    ' the system close button
       EndDialog hDlg, 2                ' return "2" on CANCEL

    END SELECT

    FUNCTION = 0

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION About_Proc(BYVAL hDlg   AS LONG, _
                    BYVAL Msg    AS LONG, _
                    BYVAL wParam AS LONG, _
                    BYVAL lParam AS LONG) AS LONG

  ' ---------------------------------------------------
  ' message processing for the about dialog
  ' ---------------------------------------------------
    LOCAL pNm   AS NMHDR PTR
    SELECT CASE AS LONG Msg             ' process messages as integers

      CASE %WM_INITDIALOG
        Center_Dialog hDlg

      CASE %WM_NOTIFY
        pNm = lParam
        IF @pNm.code = %NM_CLICK AND @pNm.idFrom = 2222 THEN _
            ShellExecute 0,"open",$WEB,"","",%SW_SHOW

      CASE %WM_COMMAND
        SELECT CASE AS LONG wParam
          CASE %IDOK, %IDCANCEL
            EndDialog hDlg, 0
        END SELECT

      CASE %WM_CLOSE                    ' the system close button
         EndDialog hDlg, 0

    END SELECT

    FUNCTION = 0

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Portable_Proc(BYVAL hDlg   AS LONG, _
                      BYVAL Msg    AS LONG, _
                      BYVAL wParam AS LONG, _
                      BYVAL lParam AS LONG) AS LONG

  ' ------------------------------------------------------
  ' message processing for the portable mode dialog (F12)
  ' ------------------------------------------------------
    LOCAL pNm   AS NMHDR PTR
    LOCAL fn    AS STRING
    SELECT CASE AS LONG Msg             ' process messages as integers

      CASE %WM_INITDIALOG
        Center_Dialog hDlg

      CASE %WM_COMMAND
        SELECT CASE AS LONG wParam

          CASE %IDOK, %IDCANCEL
            EndDialog hDlg, 0

          CASE 2010
            EndDialog hDlg, 1
            fn = EXE.PATH$ + "MaNo.ini"      : Save_File STRPTR(fn), Get_Resource(4)
            fn = EXE.PATH$ + "markdown.head" : Save_File STRPTR(fn), Get_Resource(6)
            fn = EXE.PATH$ + "markdown.foot" : Save_File STRPTR(fn), Get_Resource(7)
            fn = EXE.PATH$ + "markdown.svg"  : Save_File STRPTR(fn), Get_Resource(8)
            fn = EXE.PATH$ + "emojis.lst"    : Save_File STRPTR(fn), Get_Resource(9)
            fn = EXE.PATH$ + "markdown1.js"  : Save_File STRPTR(fn), Get_Resource(11)
            fn = EXE.PATH$ + "markdown2.js"  : Save_File STRPTR(fn), Get_Resource(12)
            fn = EXE.PATH$ + "markdown1.css" : Save_File STRPTR(fn), Get_Resource(13)
            fn = EXE.PATH$ + "markdown2.css" : Save_File STRPTR(fn), Get_Resource(14)
            fn = EXE.PATH$ + "favicon.png"   : Save_File STRPTR(fn), Get_Resource(15)
            Dialog_Msg "Local files dumped successfully !", "Portable Mode"
        END SELECT

      CASE %WM_CLOSE                    ' the system close button
         EndDialog hDlg, 0

    END SELECT

    FUNCTION = 0

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Goto_Line(BYVAL hDlg   AS LONG, _
                   BYVAL Msg    AS LONG, _
                   BYVAL wParam AS LONG, _
                   BYVAL lParam AS LONG) AS LONG

  ' -------------------------------------------
  ' message processing for the goto line dialog
  ' -------------------------------------------
    LOCAL tl     AS DWORD
    LOCAL li     AS DWORD
    LOCAL ll     AS DWORD
    LOCAL lcnt   AS DWORD
    LOCAL ucnt   AS DWORD
    LOCAL pstr   AS DWORD
    LOCAL psrc   AS DWORD
    LOCAL lcntgt AS DWORD
    LOCAL buffer AS ASCIIZ * 64
    LOCAL leadin AS ASCIIZ * 64

    SELECT CASE AS LONG Msg                 ' process messages as integers

      CASE %WM_INITDIALOG
        Center_Dialog hDlg
        Editgt = GetDlgItem(hDlg,100)       ' text entry for line number
        lcntgt = GetDlgItem(hDlg,101)       ' static cotrol for display of line count
        lpEditgtProc = SetWindowLong( _     ' subclass the edit control
            Editgt,%GWL_WNDPROC, _
            BYVAL CODEPTR(Editgt_SubClass))
        lcnt = SendMessage(hEdit, _         ' rich edit line count
            %EM_GETLINECOUNT,0,0)
        psrc = VARPTR(leadin)
        pstr = VARPTR(buffer)
        leadin = "Editor has "
        ltoa lcnt,BYVAL pstr,10             ' MSVCRT ltoa function
        strcat BYVAL psrc,BYVAL pstr        ' MSVCRT strcat function
        buffer = " lines"                   ' reuse buffer
        strcat BYVAL psrc,BYVAL pstr        ' MSVCRT strcat function
        SetWindowText lcntgt,BYVAL psrc     ' display the editor's line count

        FUNCTION = 1
        EXIT FUNCTION

      CASE %WM_COMMAND
        SELECT CASE AS LONG wParam
          CASE %IDOK
            pstr = VARPTR(buffer)
            tl   = GetWindowTextLength(Editgt)
            IF tl = 0 THEN
              FUNCTION = 0
              EXIT FUNCTION
            END IF
            GetWindowText Editgt,BYVAL pstr,64
            lcnt = SendMessage(hEdit,%EM_GETLINECOUNT,0,0)          ' rich edit line count
            ucnt = atol(BYVAL pstr)         ' MSVCRT atol fuction

            IF ucnt > lcnt THEN   ' beyond last line
              BEEP                ' do windows sound
              ucnt = lcnt         ' and goto last line
            END IF

            ! sub ucnt, 1
            li = SendMessage(hEdit,%EM_LINEINDEX,ucnt,0)
            Set_Sel (li,li)
            ll = SendMessage(hEdit,%EM_LINELENGTH,li,0)
            Set_Sel (li,li+ll)

            EndDialog hDlg, 0

          CASE %IDCANCEL
            EndDialog hDlg, 0
        END SELECT


      CASE %WM_CLOSE                        ' the system close button
         EndDialog hDlg, 0

    END SELECT

    FUNCTION = 0

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Editgt_SubClass( _
              BYVAL hCtl   AS LONG, _
              BYVAL Msg    AS LONG, _
              BYVAL wParam AS LONG, _
              BYVAL lParam AS LONG) AS LONG

  ' ----------------------------------------------
  ' use a common subclass for edit control in the
  ' the dialog procedure above used by Goto_Line
  ' dialog.
  ' select the edit control by its handle then
  ' process the WM_CHAR ascii to restrict input
  ' to numbers 0-9 and BackSpace.
  ' ----------------------------------------------

    SELECT CASE AS LONG Msg
      CASE %WM_INITDIALOG
        Center_Dialog GetParent(hCtl)
    ' --------------------------------
    ' allow numbers and backspace only
    ' --------------------------------
      CASE %WM_CHAR
        SELECT CASE AS LONG wParam
          CASE 13
            SendMessage GetParent(hCtl),%WM_COMMAND,%IDOK,0
            FUNCTION = 0
            EXIT FUNCTION
          CASE 8,48 TO 57
            ' do nothing and accept keys 0 to 9 and backspace
          CASE ELSE
            ' throw the rest away
            FUNCTION = 0
            EXIT FUNCTION
        END SELECT

    END SELECT

  FUNCTION = CallWindowProc(BYVAL lpEditgtProc,hCtl,Msg,wParam,lParam)

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Change_Eol(BYVAL hDlg   AS LONG, _
                    BYVAL Msg    AS LONG, _
                    BYVAL wParam AS LONG, _
                    BYVAL lParam AS LONG) AS LONG

    LOCAL cgt   AS DWORD
    LOCAL ngt   AS DWORD
    LOCAL cst   AS ASCIIZ * %MAX_PATH
    LOCAL nst   AS ASCIIZ * %MAX_PATH

  ' --------------------------------------------
  ' message processing for the change eol dialog
  ' --------------------------------------------

    SELECT CASE AS LONG Msg                 ' process messages as integers

      CASE %WM_INITDIALOG
        Center_Dialog hDlg
        cgt = GetDlgItem(hDlg,101)          ' text entry for current eol
        ngt = GetDlgItem(hDlg,102)          ' text entry for new eol
        GetWindowText cgt,BYVAL VARPTR(cst),%MAX_PATH
        GetWindowText ngt,BYVAL VARPTR(nst),%MAX_PATH
        REPLACE "xxxx" WITH IIF$(EOL=$CRLF,"Windows","Unix") IN cst
        REPLACE "yyyy" WITH IIF$(EOL=$CRLF,"Unix","Windows") IN nst
        SetWindowText cgt,BYVAL VARPTR(cst) ' xxxx EOLs detected.
        SetWindowText ngt,BYVAL VARPTR(nst) ' change EOLs to yyyy?
        SetFocus GetDlgItem(hDlg,7010)
        FUNCTION = 1
        EXIT FUNCTION

      CASE %WM_COMMAND
        SELECT CASE AS LONG wParam
          CASE 2010, %IDOK              ' the "YES" button
            EndDialog hDlg, 1           ' return "1" on YES
          CASE 2011                     ' the "NO" button
            EndDialog hDlg, 0           ' return "0" on NO
          CASE %IDCANCEL
            EndDialog hDlg, 0           ' return "0" on CANCEL
        END SELECT

      CASE %WM_CLOSE                    ' the system close button
       EndDialog hDlg, 0                ' return "0" on CANCEL

    END SELECT

    FUNCTION = 0

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Find_Search_Proc(BYVAL hDlg   AS LONG, _
                          BYVAL Msg    AS LONG, _
                          BYVAL wParam AS LONG, _
                          BYVAL lParam AS LONG) AS LONG

  ' -------------------------------------------------------------
  ' this dialog procedure is used by both the search and replace
  ' dialogs. The REPLACE dialog passes a "1" as the lParam of the
  ' WM_INITDIALOG to indicate that the REPLACE dialog is being
  ' used instead of the SEARCH dialog.
  '
  ' a variable "sch_replace" is also used so it has scope in the
  ' subclass for the two edit controls in the REPLACE dialog.
  ' -------------------------------------------------------------

    #REGISTER NONE

  ' -------------------------------------------
  ' message processing for the find text dialog
  ' -------------------------------------------
    LOCAL buffer1 AS STRING * 128
    LOCAL sLen1   AS DWORD
    LOCAL buffer2 AS STRING * 128
    LOCAL sLen2   AS DWORD
    LOCAL sel     AS STRING
    LOCAL cr      AS CHARRANGE

    SELECT CASE AS LONG Msg                 ' process messages as integers

      CASE %WM_INITDIALOG
        Center_Dialog hDlg
      ' --------------------------------------
      ' get the window handle for each control
      ' --------------------------------------
        Edit1 = GetDlgItem(hDlg,100)        ' search text edit control

        sel = Get_Sel()                     ' pre-fill it with selection
        IF ISTRUE INSTR(sel,ANY $CRLF) THEN sel = LEFT$(sel,INSTR(sel,ANY $CRLF)-1)
        IF sel = "" THEN sel = Edit_FR
        SetWindowText Edit1,BYVAL STRPTR(sel)
        SendMessage Edit1,%EM_SETSEL,0,-1   ' select (hilight) it all

        lpEdit1Proc = SetWindowLong( _      ' subclass it
            Edit1,%GWL_WNDPROC, _
            BYVAL CODEPTR(Editfs_SubClass))

        Edit2 = 0                           ' set to zero as flag

        IF lParam = 1 THEN
          Edit2 = GetDlgItem(hDlg,110)      ' include if replace dialog
          lpEdit1Proc = SetWindowLong( _    ' subclass it as well
            Edit2,%GWL_WNDPROC, _
            BYVAL CODEPTR(Editfs_SubClass))
        END IF

        hchk1 = GetDlgItem(hDlg,103)        ' FR_MATCHCASE checkbox
        hchk2 = GetDlgItem(hDlg,104)        ' FR_WHOLEWORD checkbox
        hrad1 = GetDlgItem(hDlg,105)        ' UP radio button
        hrad2 = GetDlgItem(hDlg,106)        ' DOWN radio button

      ' -------------------------------------
      ' set the radio buttons and check boxes
      ' -------------------------------------
        IF sch_direction = 0 THEN
          SendMessage hrad1,%BM_SETCHECK,%BST_CHECKED,0
        ELSE
          SendMessage hrad2,%BM_SETCHECK,%BST_CHECKED,0
        END IF

        IF sch_wholeword <> 0 THEN
          SendMessage hchk1,%BM_SETCHECK,%BST_CHECKED,0
        END IF

        IF sch_matchcase <> 0 THEN
          SendMessage hchk2,%BM_SETCHECK,%BST_CHECKED,0
        END IF


      CASE %WM_COMMAND
        SELECT CASE AS LONG wParam

        ' --------------------
        ' the FIND NEXT button
        ' --------------------
          CASE 101
            sLen1 = GetWindowText(Edit1,BYVAL VARPTR(buffer1),128)
            IF sLen1 = 0 THEN EXIT FUNCTION ' Edit1 empty
            Edit_FR = LEFT$(buffer1,sLen1)  ' save as global
            Find_Next

        ' ----------------
        ' the CLOSE button
        ' ----------------
          CASE 102
            ! jmp close_msg

        ' -----------------------------------------------------------
        ' set the check boxes and radio buttons values to user choice
        ' -----------------------------------------------------------
          CASE 103              ' match case check box
            IF SendMessage(hchk1,%BM_GETCHECK,0,0) = 0 THEN
              sch_matchcase = 0
            ELSE
              sch_matchcase = 1
            END IF
            ! jmp check_focus

          CASE 104              ' whole word check box
            IF SendMessage(hchk2,%BM_GETCHECK,0,0) = 0 THEN
              sch_wholeword = 0
            ELSE
              sch_wholeword = 1
            END IF
            ! jmp check_focus

          CASE 105              ' search forwards radio button
            sch_direction = 0
            ! jmp check_focus

          CASE 106              ' search backwards radio button
            sch_direction = 1

          check_focus:
            IF sch_replace = 0 THEN
              SetFocus Edit1
            ELSE
              IF GetWindowTextLength(Edit1) <> 0 THEN
                SetFocus Edit1
              ELSE
                SetFocus Edit2
              END IF
            END IF

        ' ------------------
        ' the REPLACE button
        ' ------------------
          CASE 115
            sLen2 = GetWindowText(Edit2,BYVAL VARPTR(buffer2),128)
            SendMessage hEdit,%EM_EXGETSEL,0,BYVAL VARPTR(cr)
            IF cr.cpMin <> cr.cpMax THEN ' exclude null selection
              IF sLen2 <> 0 THEN         ' and null replacement
                SendMessage hEdit,%EM_REPLACESEL,%TRUE,BYVAL VARPTR(buffer2)
              END IF
            END IF
            SetFocus Edit2

        END SELECT

      CASE %WM_CLOSE            ' the system close button
        close_msg:
          sch_replace = 0
          sch_exclusion = 0
          EndDialog hDlg, 0

    END SELECT

    FUNCTION = 0

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Find_Next ' Find next/previous occurence based on options set
              ' during last usage of find or replace dialog

    #REGISTER NONE

    LOCAL sOpt    AS DWORD
    LOCAL buffer1 AS STRING * 128
    LOCAL tpos    AS LONG
    LOCAL cr      AS CHARRANGE
    LOCAL ftxt    AS FINDTEXTAPI

  ' Find/Replace dialog never used: exit with sound
    IF LEN(Edit_FR) = 0 THEN BEEP : EXIT SUB

  ' -----------------------------------------------
  ' set the search flags based on the user options.
  ' the direct numbers are used instead of the
  ' equates to avoid including the bloat in the
  ' common dialog include file.
  ' -----------------------------------------------
    IF sch_direction <> 0 THEN
      sOpt = 1          ' search forward            %FR_DOWN
    ELSE
      sOpt = 0          ' search backwards          %FR_UP
    END IF
    IF sch_matchcase <> 0 THEN
      ! or sOpt, 4      ' case sensitive search     %FR_MATCHCASE
    END IF
    IF sch_wholeword <> 0 THEN
      ! or sOpt, 2      ' only match whole word     %FR_WHOLEWORD
    END IF
  ' -----------------------------------------------

    buffer1 = Edit_FR + $NUL

    SendMessage hEdit,%EM_EXGETSEL,0,BYVAL VARPTR(cr)

    cr.cpMin = cr.cpMin + 1         ' increment up 1 character
                                    ' from current selection
    ftxt.chrg.cpMin = cr.cpMin
    ftxt.chrg.cpMax = SendMessage(hEdit,%WM_GETTEXTLENGTH,0,0)
    ftxt.lpstrText  = VARPTR(buffer1)

    tpos = SendMessage(hEdit,%EM_FINDTEXT,sOpt,BYVAL VARPTR(ftxt))

    IF tpos = -1 THEN
      BEEP ' make a sound
      Dialog_Msg "No further matches found.", "Find Text"
      EXIT SUB
    END IF

  ' ------------------
  ' highlight the text
  ' ------------------
    Set_Sel (tpos,tpos+LEN(Edit_FR))

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Editfs_SubClass( _
              BYVAL hCtl   AS LONG, _
              BYVAL Msg    AS LONG, _
              BYVAL wParam AS LONG, _
              BYVAL lParam AS LONG) AS LONG

  ' ----------------------------------------------
  ' use a common subclass for both edit controls
  ' in the dialog procedure above used by both
  ' find and replace dialogs.
  ' select the edit control by its handle then
  ' process the WM_CHAR ascii 13 for each control.
  ' ----------------------------------------------

    #REGISTER NONE

    SELECT CASE AS LONG hCtl
      CASE Edit1
        SELECT CASE AS LONG Msg
          CASE %WM_CHAR
            SELECT CASE AS LONG wParam
              CASE 27 ' Esc = close dialog
                SendMessage GetParent(hCtl),%WM_CLOSE,0,0
              CASE 13 ' Enter in Edit1 zone
                IF sch_replace = 1 THEN
                  IF GetWindowTextLength(Edit1) <> 0 THEN
                    SetFocus Edit2 ' Replace: switch to Edit2 zone
                  END IF
                ELSE               ' Search: start search if Edit1 not empty
                  IF GetWindowTextLength(Edit1) <> 0 THEN
                    SendMessage GetParent(hCtl),%WM_COMMAND,101,0
                    SetFocus Edit1
                  END IF
                END IF
                FUNCTION = 0       ' In all cases: discard the Chr(13) as input
                EXIT FUNCTION
            END SELECT
        END SELECT

      CASE Edit2
        SELECT CASE AS LONG Msg
          CASE %WM_CHAR
            SELECT CASE AS LONG wParam
              CASE 27 ' Esc = close dialog
                SendMessage GetParent(hCtl),%WM_CLOSE,0,0
              CASE 13 ' Enter in Edit2 zone
                IF GetWindowTextLength(Edit1) = 0 THEN
                  SetFocus Edit1     ' Empty Edit1 zone: give focus to it
                ELSEIF GetWindowTextLength(Edit2) = 0 THEN
                  SetFocus Edit2     ' Empty Edit2 zone: give focus to it
                ELSE                 ' Edit1 and Edit2 valid: start replace
                    SendMessage GetParent(hCtl),%WM_COMMAND,101,0
                    SetFocus Edit2
                END IF
                FUNCTION = 0         ' In all cases: discard the Chr(13) as input
                EXIT FUNCTION
            END SELECT
        END SELECT

    END SELECT

    FUNCTION = CallWindowProc(BYVAL lpEdit1Proc,hCtl,Msg,wParam,lParam)

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Dialog_Msg(lbl AS STRING, ttl AS STRING)    ' Generic dialog message

    dlg_msg_ttl = " " + ttl
    dlg_msg_lbl = lbl

    DialogBox(hInstance, _               ' handle to W32 instance
              BYVAL 8000, _              ' resource dialog id
              hWnd, _                    ' handle to parent dialog
              CODEPTR(Dialog_Msg_Proc))  ' callback

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Dialog_Msg_Proc(BYVAL hDlg   AS LONG, _
                         BYVAL Msg    AS LONG, _
                         BYVAL wParam AS LONG, _
                         BYVAL lParam AS LONG) AS LONG

  ' -----------------------------------------
  ' message processing for the Dialog_Msg box
  ' -----------------------------------------
    SELECT CASE AS LONG Msg             ' process messages as integers

      CASE %WM_INITDIALOG
        Center_Dialog hDlg
        SetWindowText hDlg,BYVAL STRPTR(dlg_msg_ttl)
        SetWindowText GetDlgItem(hDlg,125),BYVAL STRPTR(dlg_msg_lbl)

      CASE %WM_COMMAND
        SELECT CASE AS LONG wParam
          CASE %IDOK, %IDCANCEL
            EndDialog hDlg, 0
        END SELECT

      CASE %WM_CLOSE
       EndDialog hDlg, 0

    END SELECT

    FUNCTION = 0

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Dialog_Combo(lbl AS STRING, btn AS STRING, ttl AS STRING)  ' Generic combobox dialog

    dlg_combo_ttl = " " + ttl
    dlg_combo_lbl = lbl
    dlg_combo_btn = btn

    DialogBox(hInstance, _                ' handle to W32 instance
              BYVAL 8100, _               ' resource dialog id
              hWnd, _                     ' handle to parent dialog
              CODEPTR(Dialog_Combo_Proc)) ' callback

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Dialog_Combo_Proc(BYVAL hDlg   AS LONG, _
                           BYVAL Msg    AS LONG, _
                           BYVAL wParam AS LONG, _
                           BYVAL lParam AS LONG) AS LONG

    LOCAL szItem    AS ASCIIZ * %MAX_PATH
    LOCAL hdr, lnk  AS STRING
    LOCAL i         AS LONG

  ' -------------------------------------------
  ' message processing for the Dialog_Combo box
  ' -------------------------------------------
    SELECT CASE AS LONG Msg                                                         ' process messages as integers

      CASE %WM_INITDIALOG
        Center_Dialog hDlg
        SetWindowText hDlg,BYVAL STRPTR(dlg_combo_ttl)                              ' set dlg title
        SetWindowText GetDlgItem(hDlg,125),BYVAL STRPTR(dlg_combo_lbl)              ' set dlg label
        SetWindowText GetDlgItem(hDlg,127),BYVAL STRPTR(dlg_combo_btn)              ' set dlg button
        FOR i = LBOUND(dlg_combo_lst) TO UBOUND(dlg_combo_lst)
          szItem = " " + dlg_combo_lst(i)                                           ' populate combobox
          SendMessage GetDlgItem(hDlg,126),%CB_ADDSTRING,0,BYVAL VARPTR(szItem)
        NEXT
        SendMessage GetDlgItem(hDlg,126),%CB_SETCURSEL,0,0                          ' select first combo item by default

      CASE %WM_COMMAND
        SELECT CASE AS LONG wParam

          CASE 200, %IDCANCEL
            EndDialog hDlg, 0

          CASE 127, %IDOK
            i = SendMessage(GetDlgItem(hDlg,126),%CB_GETCURSEL,0,0)                 ' index of selected item
            SendMessage GetDlgItem(hDlg,126),%CB_GETLBTEXT,i,BYVAL VARPTR(szItem)   ' text of selected item
            szItem = MID$(szItem,2)

            SELECT CASE AS LONG dlg_combo_ope

          ' F2- Header Navigator
          ' --------------------
            CASE 2
              Set_Sel (hdr_pos(i),hdr_pos(i))                                       ' go to header
              EndDialog hDlg, 1                                                     ' and close this dialog

          ' F4- Progress Indicator
          ' ----------------------
            CASE 4
              i = INSTR(szItem," (#")
              hdr = LEFT$(szItem,i-1) : lnk = LEFT$(MID$(szItem,i+2),-1)
              IF anchor(hdr) <> lnk THEN
                hdr = UCASE$(MID$(lnk,2,1)) + MID$(lnk,3)                           ' special case: mismatching header and link
                REPLACE "-" WITH " " IN hdr
              END IF
              hdr = $CR + "# " + RTRIM$(hdr) + $CR
              i = SendMessage(hEdit,%EM_GETLINECOUNT,0,0)                           ' get # of lines in document
              ! sub i, 1
              i = SendMessage(hEdit,%EM_LINEINDEX,i,0)                              ' go to last line
              Set_Sel (i,i)
              SendMessage hEdit,%EM_REPLACESEL,%TRUE,STRPTR(hdr)                    ' insert new header
              Set_Sel (i+1,i+LEN(hdr))                                              ' and highlight it
              EndDialog hDlg, 1                                                     ' and close this dialog

          ' F7- Check Duplicate Headers
          ' ---------------------------
            CASE 7
              i = INSTR(szItem," (x")
              hdr = "# " + LEFT$(szItem,i-1)
              Set_Sel (0,0)                                                         ' go to beginning of document
              sch_direction = 1                                                     ' search forward
              sch_matchcase = 0                                                     ' case insensitive search
              sch_wholeword = 0                                                     ' do not match whole word only
              Edit_FR = hdr
              EndDialog hDlg, 1                                                     ' close this dialog
              Find_Next()                                                           ' and find first occurence of header

          ' Ctrl + Alt + L- Insert Link
          ' ---------------------------
            CASE 0
              Link_To_Header_Proc((szItem))                                         ' insert link to selected header
              EndDialog hDlg, 1                                                     ' and close this dialog

            END SELECT
        END SELECT

      CASE %WM_CLOSE
       EndDialog hDlg, 0

    END SELECT

    FUNCTION = 0

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Refresh_Info_Bars ' refresh margin of line numbers & status bar

    LOCAL  hDC  AS DWORD
    LOCAL  rct  AS RECT
    LOCAL  pt   AS POINT
    LOCAL  hbr  AS DWORD
    LOCAL  car  AS DWORD
    LOCAL  leh  AS LONG
    LOCAL  lfi  AS LONG
    LOCAL  lla  AS LONG
    LOCAL  lcu  AS LONG
    LOCAL  yfi  AS LONG
    LOCAL  yla  AS LONG
    LOCAL  nli  AS LONG
    LOCAL  nca  AS LONG
    LOCAL  sll  AS LONG
    LOCAL  yst  AS DOUBLE
    LOCAL  lnb  AS STRING
    LOCAL  sbT  AS ASCIIZ * %MAX_PATH

    sll = LEN(Get_Sel())                ' selection length
    nli = SendMessage( _                ' line count
          hEdit,%EM_GETLINECOUNT,0,0)
    nca = GetWindowTextLength(hEdit)    ' character count

  ' -------------------------------------
  ' 1. Refresh the status bar information
  ' -------------------------------------
    sbT = "Ln: " + FORMAT$(Get_Cur_Line(),"#,") _
      + "  Col: " + FORMAT$(Get_Cur_Col(),"#,") _
      + IIF$(sll>0,"  Sel: " + FORMAT$(sll,"#,"),"")
    SendMessage hBar,%SB_SETTEXT,0,BYVAL VARPTR(sbT)

    sbT = FORMAT$(nli,"#,") + "  lines  (" _
        + FORMAT$(nca,"#,") + "  characters)"
    SendMessage hBar,%SB_SETTEXT,1,BYVAL VARPTR(sbT)

    sbT = IIF$(EOL=$CRLF,"WINDOWS","UNIX")
    SendMessage hBar,%SB_SETTEXT,2,BYVAL VARPTR(sbT)

    sbT = IIF$(ISFALSE INS,"INS","OVR")
    SendMessage hBar,%SB_SETTEXT,3,BYVAL VARPTR(sbT)

    sbT = IIF$(ISTRUE SendMessage(hEdit,%EM_GETMODIFY,0,0),"* Unsaved","Saved")
    SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)

  ' -------------------------------------
  ' 2. Refresh the margin of line numbers
  ' -------------------------------------

    IF File_Exist(EXE.PATH$ + "MaNo.ini") THEN
        IF ISFALSE GetIniV("editor","LineNbShow") THEN EXIT SUB
    END IF

  ' Find the index of the first visible line
  ' ----------------------------------------
    GetClientRect hEdit,BYVAL VARPTR(rct)
    pt.x = 0 : pt.y = 0 ' set ourself in the top left corner
    car = SendMessage(hEdit,%EM_CHARFROMPOS,0,BYVAL VARPTR(pt)) ' get character
    lfi = SendMessage(hEdit,%EM_EXLINEFROMCHAR,0,car) ' get line number for this position
    DO
      INCR pt.y
      car = SendMessage(hEdit,%EM_CHARFROMPOS,0,BYVAL VARPTR(pt)) ' get character
      lcu = SendMessage(hEdit,%EM_EXLINEFROMCHAR,0,car) ' get line number for this position
    LOOP UNTIL lcu <> lfi OR pt.y >= rct.nBottom
    IF pt.y >= rct.nBottom THEN
      lfi = 1 : yfi = 19         ' special case: empty edit zone (new file)
    ELSE
      lfi = lcu : yfi = pt.y - 1 ' normal case: more than 1 line
    END IF

  ' Calculate the letter height
  ' ---------------------------
    DO
      INCR pt.y
      car = SendMessage(hEdit,%EM_CHARFROMPOS,0,BYVAL VARPTR(pt)) ' get character
      lcu = SendMessage(hEdit,%EM_EXLINEFROMCHAR,0,car) ' get line number for this position
    LOOP UNTIL lcu <> lfi OR pt.y >= rct.nBottom
    IF pt.y >= rct.nBottom THEN
      leh = yfi                  ' special case: empty edit zone (new file)
    ELSE
      leh = pt.y - yfi + 1       ' normal case: more than 1 line
    END IF

  ' Find the index of the last visible line
  ' ---------------------------------------
    pt.y = rct.nBottom ' set ourself in the bottom left corner
    car = SendMessage(hEdit,%EM_CHARFROMPOS,0,BYVAL VARPTR(pt)) ' get character
    lla = SendMessage(hEdit,%EM_EXLINEFROMCHAR,0,car) ' get line number for this position
    IF lla = 0 THEN
      lla = nli - 2              ' special case: edit zone partially filled
    ELSE
      DO                         ' normal case: edit zone fully filled
        DECR pt.y
        car = SendMessage(hEdit,%EM_CHARFROMPOS,0,BYVAL VARPTR(pt)) ' get character
        lcu = SendMessage(hEdit,%EM_EXLINEFROMCHAR,0,car) ' get line number for this position
      LOOP UNTIL lcu <> lla OR pt.y <= 0
      yla = pt.y + 1 : lla = lcu + 1
    END IF

  ' Define the y-step
  ' -----------------
    IF lla = lfi THEN
      yst = leh                  ' special case: exactly 3 lines
    ELSE
      yst = (yla-yfi)/(lla-lfi)  ' normal case: everything else
    END IF

  ' Render the line numbers
  ' -----------------------
    rct.nRight  = 40
    hDC = GetDC(hEdit)
    IF File_Exist(EXE.PATH$ + "MaNo.ini") THEN
        hbr = CreateSolidBrush(Hex_To_Rgb(GetIniS("editor","LineNbBackColor")))
        lcu = Hex_To_Rgb(GetIniS("editor","LineNbForeColor"))
    ELSE
        hbr = GetStockObject(%DC_BRUSH)
        lcu = RGB(95,211,188)
    END IF
    FillRect hDC, BYVAL VARPTR(rct), hbr
    SelectObject hDC, hFont2
    SetTextColor hDC, lcu
    SetBkMode hDC, %TRANSPARENT
    FOR lcu = lfi TO lla + 2
      IF lcu > nli THEN EXIT FOR
      rct.nTop = yfi + yst * (lcu - lfi) - leh
      rct.nBottom = rct.nTop + leh
      lnb = FORMAT$(lcu)
      DrawText hDC, BYVAL STRPTR(lnb), LEN(lnb), rct, %DT_RIGHT OR %DT_VCENTER OR %DT_SINGLELINE
    NEXT
    ReleaseDC hEdit,hDC

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Get_Zoom(num AS DWORD, den AS DWORD)

    IF ISFALSE SendMessage(hEdit,%EM_GETZOOM,BYVAL VARPTR(num),BYVAL VARPTR(den)) THEN
        num = 1 : den = 1
    END IF

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Get_First_Line AS LONG

    LOCAL pt  AS POINT
    LOCAL car AS DWORD
    LOCAL li  AS LONG

    pt.x = 0 : pt.y = 0                                         ' set ourself in the top left corner
    car = SendMessage(hEdit,%EM_CHARFROMPOS,0,BYVAL VARPTR(pt)) ' get character
    li = SendMessage(hEdit,%EM_EXLINEFROMCHAR,0,car)            ' get line number for this position
    FUNCTION = li

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Set_First_Line(BYVAL li AS LONG, OPTIONAL BYVAL freeze_caret AS LONG)

    LOCAL pt  AS POINT
    LOCAL car AS DWORD

    SendMessage hEdit,%EM_LINESCROLL,0,li                       ' scroll to wanted line
    IF ISTRUE freeze_caret THEN EXIT SUB
    pt.x = 0 : pt.y = 0                                         ' set ourself in the top left corner
    car = SendMessage(hEdit,%EM_CHARFROMPOS,0,BYVAL VARPTR(pt)) ' get character
    Set_Sel (car,car)                                           ' set cursor at character

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Center_Dialog(BYVAL hDlg AS DWORD)

    LOCAL cw, ch, pw, ph, x, y AS DWORD
    LOCAL rc AS RECT

    GetWindowRect hDlg,BYVAL VARPTR(rc)
    cw = rc.nRight - rc.nLeft : ch = rc.nBottom - rc.nTop ' child width/height
    GetWindowRect GetParent(hDlg),BYVAL VARPTR(rc)
    pw = rc.nRight - rc.nLeft : ph = rc.nBottom - rc.nTop ' parent width/height
    x = rc.nLeft + (pw - cw) \ 2
    y = rc.nTop  + (ph - ch) \ 2
    SetWindowPos hDlg,BYVAL 0,x,y,cw,ch,%SWP_SHOWWINDOW

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Get_Cur_Line AS LONG

    LOCAL cr    AS CHARRANGE
    LOCAL row   AS LONG

    SendMessage hEdit,%EM_EXGETSEL,0,BYVAL VARPTR(cr)
    row = SendMessage(hEdit,%EM_EXLINEFROMCHAR,0,cr.cpMax)
    FUNCTION = row + 1

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Get_Cur_Col AS LONG

    LOCAL cr    AS CHARRANGE
    LOCAL col   AS LONG

    SendMessage hEdit,%EM_EXGETSEL,0,BYVAL VARPTR(cr)
    Col = cr.cpMax - SendMessage(hEdit,%EM_LINEINDEX,-1,0)
    FUNCTION = col + 1

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Get_Sel AS STRING

    LOCAL cr     AS CHARRANGE
    LOCAL szText AS ASCIIZ * %MAX_PATH * %MAX_PATH
    LOCAL szLen  AS LONG

  ' Prevent crash on selection > 64k
  ' --------------------------------
    SendMessage hEdit,%EM_EXGETSEL,0,BYVAL VARPTR(cr)
    IF cr.cpMax - cr.cpMin + 1 >= %MAX_PATH * %MAX_PATH THEN
      cr.cpMax = cr.cpMin ' cancel selection
      BEEP                ' do windows sound
      EXIT FUNCTION       ' do not proceed
    END IF

  ' Handle selection < 64k
  ' ----------------------
    szLen = SendMessage(hEdit,%EM_GETSELTEXT,0,VARPTR(szText))
    FUNCTION = LEFT$(sztext,szLen)

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Set_Sel (i AS LONG, j AS LONG)

    LOCAL cr    AS CHARRANGE

    cr.cpMin = i
    cr.cpMax = j
    SendMessage hEdit,%EM_EXSETSEL,0,BYVAL VARPTR(cr)

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Select_All

    Set_Sel (0,GetWindowTextLength(hEdit))

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
FUNCTION Hex_To_Rgb(h AS STRING) AS LONG

    LOCAL r, g, b AS LONG
    LOCAL c AS STRING

    c = RIGHT$("000000" + h, 6)
    r = VAL("&H" + LEFT$(c,2))
    g = VAL("&H" + MID$(c,3,2))
    b = VAL("&H" + RIGHT$(c,2))

    FUNCTION = RGB(r,g,b)

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Set_Colors (hW AS DWORD, fg AS STRING, bg AS STRING)

      LOCAL cf AS CHARFORMAT

      SendMessage hW, %EM_SETBKGNDCOLOR, %FALSE, Hex_To_Rgb(bg)
      cf.cbSize      = LEN(cf)         ' Length of structure
      cf.dwMask      = %CFM_COLOR      ' Set mask to colors only
      cf.crTextColor = Hex_To_Rgb(fg)  ' Set the new color value
      cf.dwEffects   = 0               ' Important!
      SendMessage hW, %EM_SETCHARFORMAT, %SCF_DEFAULT, VARPTR(cf)

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Enclose_Selection_With(c AS STRING)
' Arg 'c'     ; Markdown Control
' ------------------------------
' "`"         ; Inline Code
' "```" + $CR ; Code Block

    LOCAL cr AS CHARRANGE
    LOCAL e  AS STRING

  ' Get initial selection char-range
  ' --------------------------------
    SendMessage hEdit,%EM_EXGETSEL,0,BYVAL VARPTR(cr)
    e = Get_Sel()
    IF e <> "" AND c = "`" AND _
      ISTRUE INSTR(e,ANY $CRLF) THEN
      c = "```" + $CR                               ' multi-line: smartly replace inlide code by code block
    ELSEIF e <> "" AND c = "```" + $CR AND _
      ISFALSE INSTR(e,ANY $CRLF) THEN
      c = "`"                                       ' single line: smartly replace code block by inlide code
    END IF

  ' Expand selection to see if it's already enclosed with 'c'
  ' ---------------------------------------------------------
    cr.cpMin -= LEN(c) : cr.cpMax += LEN(c)
    SendMessage hEdit,%EM_EXSETSEL,0,BYVAL VARPTR(cr)
    e = Get_Sel()

  ' Already enclosed -> declose
  ' ---------------------------
    IF LEFT$(e,LEN(c)) = c AND RIGHT$(e,LEN(c)) = c THEN
      e = RIGHT$(e,-LEN(c)) : e = LEFT$(e,-LEN(c))
      SendMessage hEdit,%EM_REPLACESEL,%TRUE,STRPTR(e)
      cr.cpMax -= 2 * LEN(c)
      SendMessage hEdit,%EM_EXSETSEL,0,BYVAL VARPTR(cr)
      Refresh_Info_Bars ' redraw index
      EXIT SUB
    END IF

  ' Not enclosed -> do it
  ' ---------------------
    cr.cpMin += LEN(c) : cr.cpMax -= LEN(c)
    SendMessage hEdit,%EM_EXSETSEL,0,BYVAL VARPTR(cr)
    e = c + Get_Sel() + c
    SendMessage hEdit,%EM_REPLACESEL,%TRUE,STRPTR(e)
    cr.cpMin += LEN(c) : cr.cpMax += LEN(c)
    SendMessage hEdit,%EM_EXSETSEL,0,BYVAL VARPTR(cr)
    Refresh_Info_Bars ' redraw index

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Enclose_Selection_Between(c1 AS STRING, c2 AS STRING)
' Arg 'c1'       ; Arg 'c2'     ; Markdown Control
' ------------------------------------------------
'   "["          ; "](http://)" ; External Link
' "![alt text](" ;     ")"      ; Image

    LOCAL e AS STRING
    LOCAL nd AS STRING

  ' Get initial selection and store ending CR/LF
  ' --------------------------------------------
    e = Get_Sel()
    WHILE RIGHT$(e,1) = $CR OR RIGHT$(e,1) = $LF
      nd = RIGHT$(e,1) + nd : e = LEFT$(e,-1)
    WEND

  ' Enclose selection
  ' -----------------
    REPLACE $CR WITH c2 + $CR + c1 IN e
    e = c1 + e + c2 + nd    ' and restore ending CR/LF
    IF ISTRUE INSTR(e,c1+c2+$CR) THEN REPLACE c1+c2+$CR WITH $CR IN e
    SendMessage hEdit,%EM_REPLACESEL,%TRUE,STRPTR(e)
    Refresh_Info_Bars       ' redraw index

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

MACRO Make_Link_Macro ' (algo taken from "tools\list-to-anchors.bas")
    IF TRIM$(s) = "" THEN
      r += t + s + EOL                                  ' skip empty line
    ELSEIF LEFT$(s,2) = "* " THEN
      r += t + "* [" + MID$(s,3) + "](" _               ' handle unordered lists of header references
         + anchor(MID$(s,3)) + ")" + EOL
    ELSEIF ISTRUE VAL(LEFT$(s,INSTR(s,". ")-1)) THEN
      r += LEFT$(s,INSTR(s,". ")+1) + "["_              ' handle ordered lists of header references
         + MID$(s,INSTR(s,". ")+2) + "](" _
         + anchor(MID$(s,INSTR(s,". ")+2)) + ")" + EOL
    ELSE
      r += t + "[" + s + "](" + anchor(s) + ")" + EOL   ' normal case
    END IF
END MACRO

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Make_Link_From_Selection ' Make a list from a single header reference,
                             ' or from a list of multiple header references
    LOCAL e     AS STRING
    LOCAL s     AS STRING
    LOCAL t     AS STRING
    LOCAL r     AS STRING
    LOCAL nd    AS STRING    ' ending CR/LF of string
    LOCAL i     AS LONG

  ' Get initial selection and store ending CR/LF
  ' --------------------------------------------
    e = Get_Sel()
    WHILE RIGHT$(e,1) = $CR OR RIGHT$(e,1) = $LF
      nd = RIGHT$(e,1) + nd : e = LEFT$(e,-1)
    WEND

  ' Make anchor link(s)
  ' -------------------
    IF INSTR(e,ANY $CRLF) = 0 THEN
      s = e                                                 ' single line
      Make_Link_Macro
    ELSE
      FOR i = 1 TO PARSECOUNT(e,ANY $CRLF)                  ' multiple lines
        s = PARSE$(e,ANY $CRLF,i)
        t = "" ' tabulations
        WHILE LEFT$(s,1) = $TAB
            t += $TAB
            s = MID$(s,2)
        WEND
        Make_Link_Macro
      NEXT
    END IF
    r = RTRIM$(r,ANY $CRLF) + nd                            ' restore ending CR/LF

  ' Replace selection
  ' -----------------
    SendMessage hEdit,%EM_REPLACESEL,%TRUE,STRPTR(r)
    Refresh_Info_Bars ' redraw index

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

MACRO Start_Lines_Macro
    IF c = "# " AND LEFT$(s,7) = "###### " THEN
      r += MID$(s,8) + EOL                        ' special case: reset header level if current level = 6
    ELSEIF c = "# " AND LEFT$(s,1) = "#" THEN
      r += "#" + s + EOL                          ' special case: increment header level
    ELSEIF ISTRUE VAL(LEFT$(c,-2)) AND ISTRUE VAL(LEFT$(s,INSTR(s,". ")-1)) THEN
      r += MID$(s,INSTR(s,". ")+2) + EOL          ' special case: revert (remove) ordered list
    ELSEIF c = "- [ ] " AND LEFT$(s,3) = "- [" AND MID$(s,5,2) = "] " THEN
      r += MID$(s,LEN(c)+1) + EOL                 ' special case: revert (remove) task list
    ELSEIF c <> "# " AND LEFT$(s,LEN(c)) = c THEN
      r += MID$(s,LEN(c)+1) + EOL                 ' special case: revert (remove) unordered list and blockquote
    ELSE
      r += c + s + EOL                            ' normal case: insert control
    END IF
END MACRO

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Start_Lines_With(c AS STRING)
' Arg 'c'   ; Markdown Control
' ----------------------------
' "# "      ; Header (Linkable)
' "1. "     ; Ordered List
' "* "      ; Unordered List
' "> "      ; Blockquote
' "- [ ] "  ; Task List

    LOCAL cr AS CHARRANGE
    LOCAL e  AS STRING
    LOCAL s  AS STRING
    LOCAL r  AS STRING
    LOCAL nd AS STRING ' ending CR/LF of string
    LOCAL i  AS LONG

  ' Store current selection for later
  ' ---------------------------------
    SendMessage hEdit,%EM_EXGETSEL,0,BYVAL VARPTR(cr)

  ' Get initial selection and store ending CR/LF
  ' --------------------------------------------
    e = Get_Sel()
    WHILE RIGHT$(e,1) = $CR OR RIGHT$(e,1) = $LF
      nd = RIGHT$(e,1) + nd : e = LEFT$(e,-1)
    WEND

  ' Insert 'c' in front of each new line
  ' ------------------------------------
    IF INSTR(e,ANY $CRLF) = 0 THEN                      ' single line
      s = e
      Start_Lines_Macro
    ELSE
      FOR i = 1 TO PARSECOUNT(e,ANY $CRLF)              ' multiple lines
        s = PARSE$(e,ANY $CRLF,i)
        IF TRIM$(s) = "" THEN
          r += s + EOL                                  ' skip empty line
        ELSE
          Start_Lines_Macro
          IF ISTRUE VAL(LEFT$(c,-2)) THEN               ' special case: increment ordered list
            c = FORMAT$(1+VAL(LEFT$(c,-2))) + ". "
          END IF
        END IF
      NEXT
    END IF
    r = RTRIM$(r,ANY $CRLF) + nd                        ' restore ending CR/LF

  ' Replace and adapt selection
  ' ---------------------------
    SendMessage hEdit,%EM_REPLACESEL,%TRUE,STRPTR(r)
    IF c = "# " THEN                ' special case: header
      cr.cpMax = cr.cpMin + LEN(r)  ' keep selection and extend it
    ELSE
      cr.cpMin += LEN(r)            ' normal case:
      cr.cpMax = cr.cpMin           ' invalidate selection
    END IF
    SendMessage hEdit,%EM_EXSETSEL,0,BYVAL VARPTR(cr)
    Refresh_Info_Bars ' redraw index

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Insert_Str(c AS STRING) ' Insert string while preserving selection
                            ' Used when inserting a Table
    LOCAL cr AS CHARRANGE
    LOCAL e  AS STRING

  ' Get initial selection char-range
  ' --------------------------------
    SendMessage hEdit,%EM_EXGETSEL,0,BYVAL VARPTR(cr)

  ' Invalidate selection, place ourself at beginning
  ' ------------------------------------------------
    cr.cpMax = cr.cpMin
    SendMessage hEdit,%EM_EXSETSEL,0,BYVAL VARPTR(cr)

  ' Insert string 'c'
  ' -----------------
    e = c
    SendMessage hEdit,%EM_REPLACESEL,%TRUE,STRPTR(e)
    Refresh_Info_Bars ' redraw index

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB F5_Generate      ' F5- Generate and view in browser

    LOCAL md            AS ASCIIZ * %MAX_PATH
    LOCAL lf            AS ASCIIZ * %MAX_PATH
    LOCAL sbT           AS ASCIIZ * %MAX_PATH
    LOCAL buf           AS STRING
    LOCAL head          AS STRING
    LOCAL foot          AS STRING
    LOCAL svg           AS STRING
    LOCAL emojis        AS STRING
    LOCAL html          AS STRING
    LOCAL lng           AS STRING
    LOCAL e, r, s, t    AS STRING
    LOCAL i, j, k, n    AS LONG
    LOCAL t0            AS DOUBLE

    t0 = TIMER

  ' Get current file name
  ' ---------------------
    IF (IS_COMMAND_LINE) THEN
        IF File_Exist(COMMAND$(2)) THEN
            md = COMMAND$(2)
        ELSE
            DosPrint "Error: file does not exist" + $CRLF
            EXIT SUB
        END IF
    ELSE ' W32 GUI mode
        GetWindowText hWnd,BYVAL VARPTR(md),%MAX_PATH
        IF md = $UNTITLED THEN
            Dialog_Msg "Cannot generate unsaved file.", EXE.NAME$
            EXIT SUB
        END IF
        md = MID$(md,INSTR(md,$MANO)+LEN($MANO))
    END IF

  ' Extract html elements from resource
  ' -----------------------------------
  ' HTML header
    lf = EXE.PATH$ + "markdown.head"
    IF File_Exist(lf) THEN
        head    = Load_File(BYVAL VARPTR(lf))
    ELSE
        head    = Get_Resource(6)
    END IF
    lf = "markdown1.css"
    IF File_Exist(EXE.PATH$ + lf) THEN REPLACE $WEB + "/" + lf WITH Url_Encode(EXE.PATH$ + lf) IN head
    lf = "markdown2.css"
    IF File_Exist(EXE.PATH$ + lf) THEN REPLACE $WEB + "/" + lf WITH Url_Encode(EXE.PATH$ + lf) IN head
    lf = "favicon.png"
    IF File_Exist(EXE.PATH$ + lf) THEN REPLACE $WEB + "/MaNo.ico" WITH Url_Encode(EXE.PATH$ + lf + "?v=1.0") IN head
    IF INSTR(md, EXE.PATH$) = 1 THEN REPLACE Url_Encode(EXE.PATH$) WITH "./" IN head
  ' HTML footer
    lf = EXE.PATH$ + "markdown.foot"
    IF File_Exist(lf) THEN
        foot    = Load_File(BYVAL VARPTR(lf))
    ELSE
        foot    = Get_Resource(7)
    END IF
    lf = "markdown1.js"
    IF File_Exist(EXE.PATH$ + lf) THEN REPLACE $WEB + "/" + lf WITH Url_Encode(EXE.PATH$ + lf) IN foot
    lf = "markdown2.js"
    IF File_Exist(EXE.PATH$ + lf) THEN REPLACE $WEB + "/" + lf WITH Url_Encode(EXE.PATH$ + lf) IN foot
    IF INSTR(md, EXE.PATH$) = 1 THEN REPLACE Url_Encode(EXE.PATH$) WITH "./" IN foot
  ' HTML svg
    lf = EXE.PATH$ + "markdown.svg"
    IF File_Exist(lf) THEN
        svg     = Load_File(BYVAL VARPTR(lf))
    ELSE
        svg     = Get_Resource(8)
    END IF
  ' HTML emoji list
    lf = EXE.PATH$ + "emojis.lst"
    IF File_Exist(lf) THEN
        emojis  = Load_File(BYVAL VARPTR(lf))
    ELSE
        emojis  = Get_Resource(9)
    END IF

  ' Set html title in the header
  ' ----------------------------
    t = md
    IF ISTRUE INSTR(t,"\") THEN t = MID$(t,INSTR(-1,t,"\")+1)
    REPLACE "MaNo_TiTle" WITH t IN head

  ' Build html
  ' ----------
    IF (IS_COMMAND_LINE) THEN
        buf = $LF + Load_File(BYVAL VARPTR(md)) + $LF
    ELSE ' W32 GUI mode
        buf = $LF + RE_Get() + $LF
    END IF
    REPLACE $CRLF WITH $LF IN buf           ' Unix format
    REPLACE $CR WITH $LF IN buf
    REPLACE "<" WITH "&lt;" IN buf          ' Html-protect
    REPLACE "&lt;!--" WITH "<!--" IN buf    ' except for comments

  ' Treat level-1 to level-6 headers
  ' --------------------------------
    FOR n=1 TO 6
        IF ISFALSE (IS_COMMAND_LINE) THEN
            sbT = "Treat level-"+TRIM$(STR$(n))+" headers"
            SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
        END IF
        e = $LF + STRING$(n,"#") + " "
        r = "<h" + FORMAT$(n) + "><a id=""user-content-"" class=""anchor"" href=""#"" aria-hidden=""true"">"
        r += svg + "</a>header</h" + FORMAT$(n) + ">"
        i = INSTR(buf,e)
        WHILE ISTRUE i
            INCR i                              ' start at "# "
            j = INSTR(i,buf," ")
            k = INSTR(j,buf,$LF)
            IF ISFALSE j OR ISFALSE k OR j > k THEN ITERATE
            s = MID$(buf,j+1,k-j-1)             ' actual header
            t = r                               ' tag
            REPLACE ">header<" _                ' replace header
               WITH ">"+s+"<" IN t
            REPLACE $DQ+"user-content-"+$DQ _   ' replace id
               WITH $DQ+"user-content-" _
               +MID$(anchor(s),2)+$DQ IN t
            REPLACE $DQ+"#"+$DQ _               ' replace href
               WITH $DQ+anchor(s)+$DQ IN t
            buf = LEFT$(buf,i-1) + t + MID$(buf,k)
            i = INSTR(i,buf,e)
        WEND
    NEXT

  ' Treat images
  ' ------------
    IF ISFALSE (IS_COMMAND_LINE) THEN
        sbT = "Treat images"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF
    i = INSTR(buf,"![")
    WHILE ISTRUE i
        j = INSTR(i,buf,"](")
        k = INSTR(j,buf,")")
        r = MID$(buf,i+2,j-i-2)                         ' alt-text
        t = MID$(buf,j+2,k-j-2)                         ' src
        IF INSTR(t,"www.") = 1 THEN t = "http://" + t   ' external img
        e = "<p><a href=" + $DQ + t + $DQ
        e += " target=""_blank"">"
        e += "<img src=" + $DQ + t + $DQ
        e += " alt=" + $DQ + r + $DQ
        e += "></a></p>"
        buf = LEFT$(buf,i-1) + e + MID$(buf,k+1)
        i = INSTR(k,buf,"![")
    WEND

  ' Treat links (external and to headers)
  ' -------------------------------------
    IF ISFALSE (IS_COMMAND_LINE)  THEN
        sbT = "Treat links (external and to headers)"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF
    j = INSTR(buf,"](")
    WHILE ISTRUE j
        i = INSTR(j-LEN(buf),buf,"[")
        k = INSTR(j,buf,")")
        r = MID$(buf,i+1,j-i-1)                         ' label
        t = MID$(buf,j+2,k-j-2)                         ' href
        IF INSTR(t,"www.") = 1 THEN t = "http://" + t   ' external link
        IF t = "" THEN t = "#"                          ' empty link
        e = "<a href=" + $DQ + t + $DQ
        IF INSTR(t,"http") = 1 THEN e += " target=""_blank"""
        e += ">" + r + "</a>"
        buf = LEFT$(buf,i-1) + e + MID$(buf,k+1)
        j = INSTR(j,buf,"](")
    WEND

  ' Treat blockquotes
  ' -----------------
    IF ISFALSE (IS_COMMAND_LINE)  THEN
        sbT = "Treat blockquotes"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF
    e = $LF + "> "
    i = INSTR(buf,e)
    WHILE ISTRUE i
        buf = LEFT$(buf,i) + "<blockquote>" + $LF _         ' start of blockquote
            + "<p>" + MID$(buf,i+LEN(e))
        i = INSTR(i,buf,$LF)
        DO
            j = INSTR(i+1,buf,$LF)
            IF MID$(buf,j+1,1) = $LF THEN
                buf = LEFT$(buf,j-1) + "</p>" _             ' end of blockquote
                + $LF + "</blockquote>" + MID$(buf,j+1)
                EXIT LOOP
            ELSEIF MID$(buf,j,LEN(e)) = e THEN              ' new line in the blockquote
                buf = LEFT$(buf,j) + MID$(buf,j+LEN(e))
                i = INSTR(i,buf,$LF)
            END IF
            i = INSTR(j+1,buf,$LF) - 1
        LOOP
        i = INSTR(j+1,buf,e)
    WEND

  ' Treat code blocks
  ' -----------------
    n = 0
    e = $LF + "```"
    i = INSTR(buf,e)
    s = TRIM$(STR$(TALLY(buf,e)/2))
    WHILE ISTRUE i
        INCR n
        IF ISFALSE (IS_COMMAND_LINE)  THEN
            sbT = "Treat code block # "+TRIM$(STR$(n))+" / "+s
            SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
        END IF
        j = INSTR(i+LEN(e),buf,$LF)
        lng = MID$(buf,i+LEN(e),j-i-LEN(e))
        INCR j
        k = INSTR(j,buf,e)
        r = MID$(buf,j,k-j)                                 ' r = raw code block
        IF lng <> "" THEN
            IF HL_is_valid_language(lng) THEN               ' valid language specified
                r = HL_highlighted(r,lng)                   ' syntax-highlight it!
                r = HL_to_github(r)                         ' +convert syntax (css) from
                r = "<div class=""highlight"">" _           ' 'highlight' to 'github'
                  + "<pre>" + r + "</pre></div>"
            END IF
        END IF
        IF RIGHT$(r,LEN("</div>")) <> "</div>" THEN         ' else format non-highlighted code
            r = "<pre><code>" + r + "</code></pre>"
        END IF
        buf = LEFT$(buf,i) + r + MID$(buf,INSTR(k+1,buf,$LF)+1)
        i = INSTR(k+1,buf,e)
    WEND

  ' Treat inline code
  ' -----------------
    IF ISFALSE (IS_COMMAND_LINE)  THEN
        sbT = "Treat inline code"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF
    e = "`"
    i = INSTR(buf,e)
    WHILE ISTRUE i
        buf = LEFT$(buf,i-1) + "<code>" + MID$(buf,i+LEN(e))
        j = INSTR(i,buf,e)
        IF ISFALSE j THEN EXIT LOOP
        buf = LEFT$(buf,j-1) + "</code>" + MID$(buf,j+LEN(e))
        i = INSTR(j,buf,e)
    WEND

  ' Treat unordered lists
  ' ---------------------
    IF ISFALSE (IS_COMMAND_LINE)  THEN
        sbT = "Treat unordered lists"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF

    n = 0               ' list level
    e = $LF + "* "
    i = INSTR(buf,e)
    j = i + 1
    IF i = 0 THEN GOTO End_List

Start_List:
'    s = "<!--start of new list-->"               ' start of new list
    s = "<ul>" + $LF + "<li>"
    buf = LEFT$(buf,i) + s + MID$(buf,i+LEN(e))
    i = INSTR(i+LEN(s),buf,$LF)

Browse_List:                                    ' browse the current list
    j = INSTR(i+1,buf,$LF)

  ' Double Line Feed --> end of previous list
  ' -------------------------------------------------------------------------
    IF j = i + 1 THEN
        s = "</li>" + $LF + REPEAT$(n+1,"</ul>")
'        s += "<!--end of level-"+TRIM$(STR$(n+1))+" list-->"
        s += $LF + $LF
        buf = LEFT$(buf,i-1) + s + MID$(buf,j+1)
        n = 0 : e = $LF + "* "                  ' reset list level
        i = INSTR(j+LEN(s)+1, buf, e)
        IF i > 0 THEN GOTO Start_List ELSE GOTO End_List
    END IF

  ' New list element at same level
  ' -------------------------------------------------------------------------
    IF MID$(buf,i,LEN(e)) = e THEN
        s = "</li>" + $LF
'        s += "<!--same level-->"
        s += STRING$(n,$TAB) + "<li>"
        buf = LEFT$(buf,i-1) + s + MID$(buf,i+LEN(e))
        i = INSTR(i+LEN(s),buf,$LF)
        GOTO Browse_List
    END IF

  ' New list element at increased level (+1)
  ' -------------------------------------------------------------------------
    e = $LF + STRING$(n+1,$TAB) + "* "
    IF MID$(buf,i,LEN(e)) = e THEN              ' new list element at increased level (+1)
        INCR n
        s = "</li>" + $LF + STRING$(n,$TAB) + "<ul>"
'        s += "<!--increased level-->"
        s += $LF + STRING$(n,$TAB) + "<li>"
        buf = LEFT$(buf,i-1) + s + MID$(buf,i+LEN(e))
        i = INSTR(i+LEN(s),buf,$LF)
        GOTO Browse_List
    END IF

  ' New list element at decreased level (-1..n)
  ' -------------------------------------------------------------------------
    FOR k = n-1 TO 0 STEP -1
        e = $LF + STRING$(k,$TAB) + "* "
        IF MID$(buf,i,LEN(e)) = e THEN          ' new list element at decreased level (-?)
            s = "</li>" + $LF + STRING$(n-k,$TAB) + REPEAT$(n-k,"</ul>")
'            s += "<!--decreasing from level-"+TRIM$(STR$(n))+" to level-"+TRIM$(STR$(k))+"-->"
            s += $LF + STRING$(k,$TAB) + "<li>"
            buf = LEFT$(buf,i-1) + s + MID$(buf,i+LEN(e))
            n = k
            i = INSTR(i+LEN(s),buf,$LF)
            GOTO Browse_List
        END IF
    NEXT

  ' Other (should not happen)
  ' -------------------------
    i = j
    GOTO Browse_List

End_List:

  ' Treat ordered lists
  ' -------------------
    IF ISFALSE (IS_COMMAND_LINE)  THEN
        sbT = "Treat ordered lists"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF
    e = $LF + "1. "
    i = INSTR(buf,e)
    WHILE ISTRUE i
        buf = LEFT$(buf,i) + "<ol>" + $LF _                 ' start of list
            + "<li>" + MID$(buf,i+LEN(e))
        i = INSTR(i,buf,$LF)
        DO
            j = INSTR(i+1,buf,$LF)
            IF MID$(buf,j+1,1) = $LF THEN
                buf = LEFT$(buf,j-1) + "</li>" _            ' end of list
                + $LF + "</ol>" + MID$(buf,j+1)
                EXIT LOOP
            ELSE
                r = MID$(buf,j+1,INSTR(j+1,buf,".")-j-1)
                IF ISTRUE VAL(r) THEN                       ' new list element
                    buf = LEFT$(buf,j-1) + "</li>" + $LF _
                        + "<li>" + MID$(buf,j+LEN(r)+3)     ' +3 for $LF + ". "
                    i = INSTR(i,buf,$LF)
                END IF
            END IF
            i = INSTR(j+1,buf,$LF) - 1
        LOOP
        i = INSTR(j+1,buf,e)
    WEND

  ' Treat task lists
  ' ----------------
    IF ISFALSE (IS_COMMAND_LINE)  THEN
        sbT = "Treat task lists"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF
    e = $LF + "- ["
    i = INSTR(buf,e)
    WHILE ISTRUE i
        r = UCASE$(MID$(buf,i+LEN(e),1))                ' content of task list element [ ] or [X]
        IF MID$(buf,i+LEN(e)+1,1) <> "]" _              ' not a task list               ^      ^
        OR ISFALSE INSTR(" X",r) THEN                   ' or incorrect task list
            i = INSTR(i+1,buf,e)
            ITERATE LOOP
        END IF
        buf = LEFT$(buf,i) _                            ' start of list
            + "<ul class=""contains-task-list"">" + $LF _
            + "<li class=""task-list-item"">" _
            + "<input type=""checkbox"" class=""" _
            + "task-list-item-checkbox"" disabled=""""" _
            + IIF$(r="X","checked=""""","") + ">" _
            + MID$(buf,i+LEN(e)+2)
        i = INSTR(i+1,buf,$LF)
        DO
            j = INSTR(i+1,buf,$LF)
            IF MID$(buf,j+1,1) = $LF THEN
                buf = LEFT$(buf,j-1) + "</li>" _        ' end of list
                + $LF + "</ul>" + MID$(buf,j+1)
                EXIT LOOP
            ELSEIF MID$(buf,j,LEN(e)) = e THEN          ' new list element
                r = UCASE$(MID$(buf,j+LEN(e),1))        ' content of task list element [ ] or [X]
                IF MID$(buf,j+LEN(e)+1,1) <> "]" _      ' not a task list               ^      ^
                OR ISFALSE INSTR(" X",r) THEN           ' or incorrect task list
                    j = INSTR(j+1,buf,e)
                    ITERATE LOOP
                END IF
                buf = LEFT$(buf,j-1) + "</li>" + $LF _
                    + "<li class=""task-list-item"">" _
                    + "<input type=""checkbox"" class=""" _
                    + "task-list-item-checkbox"" disabled=""""" _
                    + IIF$(r="X","checked=""""","") + ">" _
                    + MID$(buf,j+LEN(e)+2)
                i = INSTR(i,buf,$LF)
            END IF
            i = INSTR(j+1,buf,$LF) - 1
        LOOP
        i = INSTR(j+1,buf,e)
    WEND

  ' Treat tables
  ' ------------
    IF ISFALSE (IS_COMMAND_LINE)  THEN
        sbT = "Treat tables"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF
    e = "-|-"
    j = INSTR(buf,e)
    WHILE ISTRUE j
        j = INSTR(j-LEN(buf),buf,$LF)               ' start of "---|---"
        i = INSTR(j-LEN(buf)-2,buf,$LF)             ' start of title line
        r = MID$(buf,i+1,j-i-1)                     ' title line
        j = INSTR(j,buf,e)
        j = INSTR(j,buf,$LF)                        ' start of table body
        n = TALLY(r,"|")
        IF n = 0 THEN                               ' incorrect table (no title)
            j = INSTR(j,buf,e)
            ITERATE LOOP
        END IF
      ' Write table header
        s = "<table>" + $LF _
          + "<thead>" + $LF _
          + "<tr>" + $LF
        FOR k=1 TO n+1
            s += "<th>" + TRIM$(PARSE$(r,"|",k)) + "</th>" + $LF
        NEXT
        s += "</tr>" + $LF _
           + "</thead>" + $LF _
           + "<tbody>" + $LF
      ' Write table body
        k = INSTR(j+1,buf,$LF)                      ' end of current line
        WHILE ISTRUE k
            IF k = j+1 THEN
                s += "</tr>" + $LF _                ' table end
                + "</tbody>" + $LF _
                + "</table>"
                REPLACE "<tbody>" + $LF + "</tr>" _
                   WITH "<tbody>" IN s
                buf = LEFT$(buf,i) + s + MID$(buf,k)
                EXIT LOOP
            ELSE
                r = MID$(buf,j+1,k-j-1)             ' new row
                s += "</tr>" + $LF + "<tr>" + $LF
                FOR j=1 TO PARSECOUNT(r,"|")
                    s += "<td>" + TRIM$(PARSE$(r,"|",j)) + "</td>" + $LF
                NEXT
            END IF
            j = k
            k = INSTR(j+1,buf,$LF)
        WEND
        j = INSTR(k,buf,e)
    WEND

  ' Treat bold
  ' ----------
    IF ISFALSE (IS_COMMAND_LINE)  THEN
        sbT = "Treat bold"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF
    e = "**"
    i = INSTR(buf,e)
    WHILE ISTRUE i
        buf = LEFT$(buf,i-1) + "<strong>" + MID$(buf,i+LEN(e))
        j = INSTR(i,buf,e)
        IF ISFALSE j THEN EXIT LOOP
        buf = LEFT$(buf,j-1) + "</strong>" + MID$(buf,j+LEN(e))
        i = INSTR(j,buf,e)
    WEND

  ' Treat underline
  ' ---------------
    IF ISFALSE (IS_COMMAND_LINE)  THEN
        sbT = "Treat underline"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF
    e = "__"
    i = INSTR(buf,e)
    WHILE ISTRUE i
        buf = LEFT$(buf,i-1) + "<u>" + MID$(buf,i+LEN(e))
        j = INSTR(i,buf,e)
        IF ISFALSE j THEN EXIT LOOP
        buf = LEFT$(buf,j-1) + "</u>" + MID$(buf,j+LEN(e))
        i = INSTR(j,buf,e)
    WEND

  ' Treat strikethrough
  ' -------------------
    IF ISFALSE (IS_COMMAND_LINE)  THEN
        sbT = "Treat strikethrough"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF
    e = "~~"
    i = INSTR(buf,e)
    WHILE ISTRUE i
        buf = LEFT$(buf,i-1) + "<del>" + MID$(buf,i+LEN(e))
        j = INSTR(i,buf,e)
        IF ISFALSE j THEN EXIT LOOP
        buf = LEFT$(buf,j-1) + "</del>" + MID$(buf,j+LEN(e))
        i = INSTR(j,buf,e)
    WEND

  ' Treat italic
  ' ------------
    IF ISFALSE (IS_COMMAND_LINE)  THEN
        sbT = "Treat italic"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF
    e = "*"
    i = INSTR(buf,e)
    WHILE ISTRUE i
      ' Is it part of a code block ? (a = b * c \n d = 3 * 5 / 2)
        j = INSTR(i-LEN(buf),buf,"<pre") : k = INSTR(j,buf,"</pre>")
        IF i > j AND i < k THEN i = INSTR(i+1,buf,e) : ITERATE LOOP
      ' Is it part of an inline code ? (a = b * c)
        j = INSTR(i-LEN(buf),buf,"<code") : k = INSTR(j,buf,"</code>")
        IF i > j AND i < k THEN i = INSTR(i+1,buf,e) : ITERATE LOOP
      ' None of the above: convert to italic
        j = INSTR(i+1,buf,e) : IF ISFALSE j THEN EXIT LOOP  ' no ending -> end
        IF ISTRUE INSTR(MID$(buf,i,j-i),$LF) THEN
            i = INSTR(i+1,buf,e) : ITERATE LOOP             ' italic enclosing on 1-line only
        END IF
        buf = LEFT$(buf,i-1) + "<em>" + MID$(buf,i+LEN(e))
        j = INSTR(i+1,buf,e)
        buf = LEFT$(buf,j-1) + "</em>" + MID$(buf,j+LEN(e))
        i = INSTR(j,buf,e)
    WEND

  ' Treat hyperlinks (http:// www. mailto: etc.)
  ' --------------------------------------------
    IF ISFALSE (IS_COMMAND_LINE)  THEN
        sbT = "Treat hyperlinks"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF
    LOCAL url_start() AS STRING
    DIM url_start(1 TO 5)    ' (1)        (2)         (3)     (4)       (5)
    ARRAY ASSIGN url_start() = "http://", "https://", "www.", "ftp://", "mailto:"
    FOR n=LBOUND(url_start) TO UBOUND(url_start)
        e = url_start(n)
        i = INSTR(buf,e)
        WHILE ISTRUE i
            IF e = "www." AND ( _       ' skip "www." if it's preceded by "http://" or "https://"
                MID$(buf,i-LEN(url_start(1)),LEN(url_start(1))) = url_start(1) OR _
                MID$(buf,i-LEN(url_start(2)),LEN(url_start(2))) = url_start(2)) THEN
                i = INSTR(i+1,buf,e)
                ITERATE LOOP
            END IF
            IF MID$(buf,i-6,6) = "href=" + $DQ _
            OR MID$(buf,i-5,5) = "src="  + $DQ _
            OR MID$(buf,i-2,2) = $DQ + ">" THEN
                i = INSTR(i+1,buf,e)
                ITERATE LOOP
            END IF
            j = INSTR(i+LEN(e),buf,ANY " ):,;"+$DQ+$LF)
            r = MID$(buf,i,j-i) ' url
            buf = LEFT$(buf,i-1) + "<a href=" _
                + $DQ + r + $DQ _
                + " target=""_blank"">" _
                + LTRIM$(r,"mailto:") + "</a>" _
                + MID$(buf,i+LEN(r))
            i = INSTR(j,buf,"</a>")
            i = INSTR(i,buf,e)
        WEND
    NEXT

  ' Treat emojis
  ' ------------
    IF ISFALSE (IS_COMMAND_LINE)  THEN
        sbT = "Treat emojis"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF
    FOR i=1 TO PARSECOUNT(emojis,$LF)
        r = PARSE$(emojis,$LF,i)
        IF LEFT$(r,1) <> ":" THEN ITERATE FOR
        s = PARSE$(r,1)                                         ' s = shortcut
        e = PARSE$(r,2)                                         ' e = emoji (html-encoded)
        REPLACE s WITH _
              "<g-emoji alias=" + $DQ + TRIM$(s,":") + $DQ _
            + " fallback-src=""https://assets-cdn" _
            + ".github.com/images/icons/emoji/unicode/" _
            + RTRIM$(LTRIM$(e,"&#x"),";") _
            + ".png"" ios-version=""6.0"">" _
            + e + "</g-emoji>" _
            IN buf
    NEXT

  ' Add paragraphs for everything else
  ' ----------------------------------
    IF ISFALSE (IS_COMMAND_LINE)  THEN
        sbT = "Add paragraphs"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
    END IF
    LOCAL tags() AS STRING
    DIM tags(1 TO 6)    ' (1)     (2)     (3)             (4)      (5)        (6)
    ARRAY ASSIGN tags() = "<ul>", "<ol>", "<blockquote>", "<pre>", "<table>", "<h"
    i = INSTR(buf,$LF)
    WHILE i > 0 AND i < LEN(buf)
      ' Skip specific tag-blocks: (un)ordered lists, blockquotes, etc.
        FOR n = LBOUND(tags) TO UBOUND(tags)
            IF INSTR(i,buf,$LF+tags(n)) = i THEN            ' found opening tag
                s = "</" + MID$(tags(n),2)
                j = INSTR(i,buf,$LF+s)                      ' look for closing tag
                IF j=0 THEN j=INSTR(i,buf,s)
                i = INSTR(j+2,buf,$LF)
                ITERATE LOOP
            END IF
        NEXT
      ' Skip comments
        IF INSTR(i+1,buf,"<!--") = i+1 THEN
            i = INSTR(i+1,buf,"-->") + LEN("-->")
            i = INSTR(i+1,buf,$LF)
            ITERATE LOOP
        END IF
      ' Not skipped -> raw text (or enhanced with <b>, <code>, etc.)
        buf = LEFT$(buf,i) _
            + "<p>" _                                       ' -> start paragraph
            + MID$(buf,i+1)
        DO
            i = INSTR(i+1,buf,$LF)
            k = 0
            FOR n=LBOUND(tags) TO UBOUND(tags)
                IF INSTR(i+1,buf,tags(n)) = i+1 THEN k = 1 : EXIT FOR
            NEXT
            IF k = 1 OR MID$(buf,i+1,1) = $LF _         ' specific tag, or double $LF,
                OR i = LEN(buf) THEN                    ' or end of document
                buf = LEFT$(buf,i-1) _
                    + "</p>" _                          ' -> end paragraph
                    + MID$(buf,i)
                EXIT LOOP
            END IF
        LOOP UNTIL 0
        i = INSTR(i+1,buf,$LF)
    WEND

Fin_Generate:

  ' Finalize: add header and footer
  ' -------------------------------
    buf = head + TRIM$(buf,$LF) + foot

  ' Save html
  ' ---------
    html = md
    IF ISTRUE INSTR(html,".") THEN html = LEFT$(html,INSTR(-1,html,".")-1)
    html += ".htm"
    Save_File STRPTR(html), buf
    IF (IS_COMMAND_LINE) THEN
        t = html
        IF ISTRUE INSTR(t,"\") THEN t = MID$(t,INSTR(-1,t,"\")+1)
        DosPrint "Successfully created " + t
        IF LCASE$(COMMAND$(1)) <> "-cv" THEN DosPrint $CRLF : EXIT SUB
        DosPrint " - Opening it for view" + $CRLF
    END IF

  ' View it in browser
  ' ------------------
    ShellExecute 0,"open",(html),"","",%SW_SHOW
    IF ISFALSE (IS_COMMAND_LINE) THEN
        sbT = "Successfuly generated in "+TRIM$(STR$(INT((TIMER-t0)*100)/100))+" seconds"
        SendMessage hBar,%SB_SETTEXT,4,BYVAL VARPTR(sbT)
        SLEEP 1500
    END IF

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB F11_Sort_List       ' F11- Sort a list alphabetically, regardless of case
                        ' (algo taken from "tools\sort-gw-keywords.bas")

    LOCAL e     AS STRING
    LOCAL s()   AS STRING
    LOCAL r     AS STRING
    LOCAL nd    AS STRING    ' ending CR/LF of string
    LOCAL i     AS LONG
    LOCAL n     AS LONG

  ' Get initial selection and store ending CR/LF
  ' --------------------------------------------
    e = Get_Sel()
    WHILE RIGHT$(e,1) = $CR OR RIGHT$(e,1) = $LF
      nd = RIGHT$(e,1) + nd : e = LEFT$(e,-1)
    WEND

  ' Sort list
  ' ---------
    IF INSTR(e,ANY $CRLF) = 0 THEN
      BEEP                                                  ' single line
      Dialog_Msg "Please select more than one line.", "Sort Alphabetically"
      EXIT SUB
    ELSE
      n = PARSECOUNT(e,ANY $CRLF)                           ' multiple lines
      DIM s(1 TO n)
      FOR i = 1 TO n
        s(i) = PARSE$(e,ANY $CRLF,i)                        ' get list' individual elements
      NEXT
      ARRAY SORT s(), COLLATE UCASE                         ' sort them regardless of case
      FOR i = 1 TO n
        r += s(i) + $CR                                     ' rebuild sorted list
      NEXT
    END IF
    r = RTRIM$(r,ANY $CRLF) + nd                            ' restore ending CR/LF

  ' Replace selection
  ' -----------------
    SendMessage hEdit,%EM_REPLACESEL,%TRUE,STRPTR(r)
    Refresh_Info_Bars ' redraw index

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB F4_Progress_Indicator   ' F4- Show completion of document = % of links with header written
                            ' (algo taken from "tools\manual-show-completion.bas")

    LOCAL alllinks_m  AS STRING
    LOCAL alllinks_c  AS STRING
    LOCAL buf         AS STRING
    LOCAL hdr         AS STRING
    LOCAL lnk         AS STRING
    LOCAL i, j        AS LONG
    LOCAL present     AS LONG
    LOCAL absent      AS LONG
    LOCAL pct         AS LONG

  ' Get list of all headers, calculate their links,
  ' store them in 'alllinks_c' (calculated)
  ' -----------------------------------------------
    Make_Headers_List(0) ' 0 to ignore header levels
'    IF ISTRUE Count_Duplicates() THEN                      ' ToDo: keep it? (seems a little restrictive...)
'      BEEP
'      Dialog_Msg "Duplicate headers found => use F7 first" + $CR _
'               + "before using F4 for Progress Indicator.", _
'               "Progress Indicator"
'      EXIT SUB
'    END IF
    alllinks_c = $LF
    FOR i = LBOUND(headers) TO UBOUND(headers)
      alllinks_c += anchor(headers(i)) + $LF                ' make list of all links calculated (alllinks_c)
    NEXT

  ' Get all actual links, check if we have a title for them, else
  ' store them in 'alllinks_m' (missing) & fill dlg_combo_lst()
  ' -------------------------------------------------------------
    buf = RE_Get()
    alllinks_m = $LF
    ERASE dlg_combo_lst()
    i = INSTR(buf,"](#")
    WHILE ISTRUE i
      j = INSTR(i-LEN(buf),buf,"[")
      hdr = MID$(buf,j+1,i-j-1)                             ' header
      i += 2
      j = INSTR(i,buf,")")
      lnk = MID$(buf,i,j-i)                                 ' link (anchor)
      IF ISTRUE INSTR(alllinks_c,$LF+lnk+$LF) THEN
        INCR present                                        ' link is part of calculated list
      ELSEIF ISFALSE INSTR(alllinks_m,$LF+lnk+$LF) THEN
        INCR absent                                         ' link is unknown
        alllinks_m += lnk + $LF                             ' add it to list of all links missing (alllinks_m)
        j = UBOUND(dlg_combo_lst) + 1
        REDIM PRESERVE dlg_combo_lst(j)                     ' and add header + link to combobox list
        dlg_combo_lst(j) = hdr + "  (" + lnk + ")"
      END IF
      i = INSTR(i+1,buf,"](#")
    WEND
    pct = INT(100 * present / (present + absent))
    hdr = " (" + FORMAT$(present) + "/" + FORMAT$(present + absent) + ")"

  ' If all headers filled: warn with simple dialog message
  ' ------------------------------------------------------
    IF absent = 0 THEN
      Dialog_Msg "Your document is complete :" + $CR _                                      ' msg label
               + TRIM$(hdr,ANY" ()") + " linked headers are written.", _
               "Progress Indicator : 100%"                                                  ' msg title
      EXIT SUB
    END IF

  ' Else show result in combobox dialog
  ' -----------------------------------
    dlg_combo_ope = 4                                   ' F4- Progress Indicator
    IF absent = 1 THEN buf = "There is 1" ELSE buf = "There are " + FORMAT$(absent)
    buf += " linked header" + IIF$(absent=1,"","s") + " not written yet :"
    Dialog_Combo buf, _                                                                     ' combo label
                 "Cre&ate", _                                                               ' combo button
                 "Progress Indicator : " + FORMAT$(pct) + "% linked headers written" + hdr  ' combo title

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Make_Headers_List(BYVAL withLevel AS LONG)

    LOCAL e     AS STRING
    LOCAL i     AS LONG
    LOCAL j     AS LONG
    LOCAL k     AS LONG
    LOCAL mrk   AS STRING

    mrk = $CR + "#"                             ' marker for header

    e = RE_Get()                                ' get rich edit content
    REPLACE $CRLF WITH $CR IN e
    REPLACE $LF WITH $CR IN e                   ' and convert its EOL to Windows

    ERASE headers()
    ERASE hdr_pos()

    i = INSTR(e,mrk)
    WHILE i
      j = INSTR(i,e,$SPC)
      IF REMOVE$(MID$(e,i+2,j-i-2),"#") <> "" THEN
        i = INSTR(j,e,mrk)
        ITERATE LOOP
      END IF
      IF ISFALSE withLevel THEN i = j           ' ignore the leading '#'
      j = INSTR(i+1,e,$CR)
      IF j = 0 THEN j = LEN(e)+1                ' special case: end of document
      k = UBOUND(headers) + 1
      REDIM PRESERVE headers(k)
      headers(k) = TRIM$(MID$(e,i+1,j-i-1))     ' store header in headers()
      REDIM PRESERVE hdr_pos(k)
      hdr_pos(k) = i                            ' and its position in hdr_pos()
      i = INSTR(j,e,mrk)
    WEND

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Count_Duplicates() AS LONG
' /!\ THIS FUNCTION NEEDS TO BE CALLED AFTER Make_Headers_List()
' Return the number of duplicate headers + list them in dlg_combo_lst()

    LOCAL sorted_headers()  AS STRING
    LOCAL occurences()      AS LONG
    LOCAL i, j, n           AS LONG

  ' Create a sorted copy of the list of all headers
  ' -----------------------------------------------
    REDIM sorted_headers(LBOUND(headers) TO UBOUND(headers))
    FOR i = LBOUND(headers) TO UBOUND(headers)
      sorted_headers(i) = headers(i)
    NEXT
    ARRAY SORT sorted_headers(), COLLATE UCASE

  ' Analyze the list and store (+count) duplicates
  ' ----------------------------------------------
    ERASE dlg_combo_lst()
    ERASE occurences()
    FOR i = LBOUND(sorted_headers)+1 TO UBOUND(sorted_headers)
      IF UCASE$(sorted_headers(i)) = UCASE$(sorted_headers(i-1)) THEN ' it's a dup!
        INCR n
        ARRAY SCAN dlg_combo_lst(), COLLATE UCASE, =UCASE$(sorted_headers(i)), TO j
        IF ISTRUE j THEN
          INCR occurences(j)
        ELSE
          j = UBOUND(dlg_combo_lst) + 1
          REDIM PRESERVE dlg_combo_lst(j)
          dlg_combo_lst(j) = sorted_headers(i)
          REDIM PRESERVE occurences(j)
          occurences(j) = 2
        END IF
      END IF
    NEXT

    FOR i = LBOUND(dlg_combo_lst) TO UBOUND(dlg_combo_lst)
      dlg_combo_lst(i) += " (x" + FORMAT$(occurences(i)) + ")"
    NEXT

    FUNCTION = n

END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB F7_Check_Duplicate_Headers      ' F7- Check Duplicate Headers

    LOCAL n     AS LONG

    Make_Headers_List(0) ' 0 to ignore header levels
    n = Count_Duplicates()

    IF n = 0 THEN
      Dialog_Msg "No duplicate headers.", _                                           ' msg label
                 "Check Duplicate Headers"                                            ' msg title
    ELSE
      dlg_combo_ope = 7             ' F7- Check Duplicate Headers
      Dialog_Combo FORMAT$(n) + " duplicate header" + IIF$(n>1,"s","") + " found. " _
                 + "Click ""Go"" then F3 for next occurences.", _                     ' combo label
                   "&Go", _                                                           ' combo button
                   "Check Duplicate Headers"                                          ' combo title
    END IF

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB F2_Header_Nav                   ' F2- Table Of Content

    LOCAL i     AS LONG

    Make_Headers_List(0) ' 0 to ignore header levels
    REDIM dlg_combo_lst(LBOUND(headers) TO UBOUND(headers))
    FOR i = LBOUND(headers) TO UBOUND(headers)
      dlg_combo_lst(i) = headers(i)
    NEXT

    i = UBOUND(headers) - LBOUND(headers) + 1
    IF i = 0 THEN
      Dialog_Msg "No headers in the document.", _                                     ' msg label
                 "Header Navigator"                                                   ' msg title
    ELSE
      dlg_combo_ope = 2             ' F2- Table Of Content
      Dialog_Combo FORMAT$(i) + " header" + IIF$(i>1,"s","") + _
                   " available in the document :", _                                  ' combo label
                   "&Go", _                                                           ' combo button
                   "Header Navigator"                                                 ' combo title
    END IF

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Create_ToK()
    LOCAL e     AS STRING
    LOCAL i     AS LONG
    LOCAL j     AS LONG
    LOCAL cr    AS CHARRANGE

    SendMessage hEdit,%EM_EXGETSEL,0,BYVAL VARPTR(cr)   ' get richedit caret position

    Make_Headers_List(-1) ' -1 to get the header levels

    i = UBOUND(headers) - LBOUND(headers) + 1
    IF i = 0 THEN

      Dialog_Msg "No headers in the document.", _       ' msg label
                 "Create ToK"                           ' msg title
    ELSE

        FOR i = LBOUND(headers) TO UBOUND(headers)
          REPLACE "#" WITH $TAB IN headers(i)           ' make unordered list
          j = INSTR(headers(i), $SPC)                   ' of headers with level
          headers(i) = LEFT$(headers(i),j-1) _
                     + "*" + MID$(headers(i),j)
          e += MID$(headers(i),2) + EOL
        NEXT

        Insert_STR EOL + e + EOL                        ' insert the list
        Set_Sel (cr.cpMin, cr.cpMin+LEN(e)+1)           ' select it
        Make_Link_From_Selection()                      ' make links

    END IF
END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Link_To_Header_Dlg()                ' Ctrl + Alt + L- Insert Link
                                        ' Part #1: show combo dlg with existing headers+links
    LOCAL i     AS LONG

    Make_Headers_List(0) ' 0 to ignore header levels
    REDIM dlg_combo_lst(LBOUND(headers) TO UBOUND(headers) + 1)
    dlg_combo_lst(0) = "New header (#)"
    FOR i = LBOUND(headers) TO UBOUND(headers)
      dlg_combo_lst(i+1) = headers(i) + " (" + anchor(headers(i)) + ")"
    NEXT

    dlg_combo_ope = 0             ' Ctrl + Alt + L- Insert Link
    i = UBOUND(headers) - LBOUND(headers)
    Dialog_Combo "Insert link to header (" + FORMAT$(i) + " headers available) :", _    ' combo label
                 "&Insert", _                                                           ' combo button
                 "Link To Header"                                                       ' combo title

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Link_To_Header_Proc(c AS STRING)    ' Ctrl + Alt + L- Insert Link
                                        ' Part #2: insert chosen link/header around selection
    LOCAL hdr, lnk  AS STRING
    LOCAL i         AS LONG

    i = INSTR(c," (#")
    hdr = LEFT$(c,i-1)
    lnk = LEFT$(MID$(c,i+2),-1)

    IF Get_Sel() = "" THEN                                          ' empty selection -> insert header *label* + link
      Enclose_Selection_Between "[" + hdr + "]", "(" + lnk + ")"
    ELSE                                                            ' existing selection -> insert header link only
      Enclose_Selection_Between "[", "](" + lnk + ")"
    END IF

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

MACRO F8_Fill_Empty_Links_Macro

    MACROTEMP ini
    MACROTEMP rpl
    DIM ini AS STRING
    DIM rpl AS STRING

    ini = "["+hdr+"]()"                                 ' define initial (empty) link
    rpl = "["+hdr+"]("+lnk+")"                          ' define filled link for replacement

    k = INSTR(buf,ini)
    WHILE ISTRUE k
      Set_Sel (k-1,k+LEN(ini)-1)                        ' select empty link (/!\ index is 0-based)
      SendMessage hEdit,%EM_REPLACESEL, _               ' replace selection with filled link
        %TRUE,STRPTR(rpl)
      buf = LEFT$(buf,k-1) + rpl + MID$(buf,k+LEN(ini)) ' + replace in buffer as well
      k = INSTR(buf,ini)
    WEND

END MACRO

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB F8_Fill_Empty_Links     ' F8- Autofill empty links
                            ' (algo taken from "tools\manual-gen-lnk.bas")

    LOCAL alllinks_c    AS STRING
    LOCAL buf           AS STRING
    LOCAL hdr           AS STRING
    LOCAL lnk           AS STRING
    LOCAL i             AS LONG
    LOCAL j             AS LONG
    LOCAL k             AS LONG
    LOCAL l             AS LONG
    LOCAL n             AS LONG
    LOCAL nempty        AS LONG
    LOCAL nfi           AS LONG

  ' Check if there are empty links
  ' ------------------------------
    buf = RE_Get()
    REPLACE $CRLF WITH $CR IN buf
    nempty = TALLY(buf, "]()")
    IF nempty = 0 THEN
      Dialog_Msg "No empty links in the document.", "Fill Empty Links"
      EXIT SUB
    END IF

  ' Make headers list and calculate all links
  ' -----------------------------------------
    Make_Headers_List(0) ' 0 to ignore header levels
    alllinks_c = $LF
    FOR i = LBOUND(headers) TO UBOUND(headers)
      alllinks_c += anchor(headers(i)) + $LF            ' make list of all links calculated (alllinks_c)
    NEXT

  ' Treat all empty links
  ' ---------------------
    j = INSTR(buf,"]()")
    WHILE ISTRUE j
      INCR n
      i = INSTR(j-LEN(buf),buf,"[")
      IF ISTRUE i THEN
        hdr = MID$(buf,i+1,j-i-1)
        k = INSTR(buf,"["+hdr+"](#")
        IF ISTRUE k THEN                                ' autofill on already-existing link (1 occurence is enough)
          k += LEN("["+hdr+"](")
          l = INSTR(k,buf,")")
          lnk = MID$(buf,k,l-k)
          F8_Fill_Empty_Links_Macro
        ELSE
          lnk = anchor(hdr)                             ' new link -> try to guess it
          IF ISTRUE INSTR(alllinks_c,$LF+lnk+$LF) THEN
            F8_Fill_Empty_Links_Macro                   ' an existing header has this anchor name
          ELSE
            F8_Fill_Empty_Links_Macro                   ' auto-generate link according to content
            alllinks_c += lnk + $LF                     ' and update list of calculated links
          END IF
        END IF
      END IF
      j = INSTR(j+1,buf,"]()")
    WEND

  ' Show result dialog msg
  ' ----------------------
    Dialog_Msg FORMAT$(n) + " empty links successfully filled." + $CR _
             + "Hit Ctrl + Z to undo (one by one).", "Fill Empty Links"

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB F9_Fix_Inco_Links       ' F9- Autofix incorrect links
                            ' (algo taken from "tools\manual-fix-inco-lnk.bas")

    LOCAL alllinks_c    AS STRING
    LOCAL buf           AS STRING
    LOCAL hdr           AS STRING
    LOCAL lnk           AS STRING
    LOCAL inco          AS STRING
    LOCAL i             AS LONG
    LOCAL j             AS LONG
    LOCAL k             AS LONG
    LOCAL l             AS LONG
    LOCAL m             AS LONG
    LOCAL n             AS LONG
    LOCAL nempty        AS LONG
    LOCAL nfi           AS LONG

  ' Make headers list and calculate all links
  ' -----------------------------------------
    Make_Headers_List(0) ' 0 to ignore header levels
    alllinks_c = $LF
    FOR i = LBOUND(headers) TO UBOUND(headers)
      alllinks_c += anchor(headers(i)) + $LF            ' make list of all links calculated (alllinks_c)
    NEXT

  ' Check all links for incorrectness
  ' ---------------------------------
    buf = RE_Get()
    REPLACE $CRLF WITH $CR IN buf
    j = INSTR(buf,"](#")
    WHILE ISTRUE j
      i = INSTR(j-LEN(buf),buf,"[")
      IF ISTRUE i THEN
        hdr = MID$(buf,i+1,j-i-1)
        k = INSTR(j,buf,")")
        IF ISTRUE k THEN
          lnk = MID$(buf,j+2,k-j-2)
          IF ISFALSE INSTR(alllinks_c,$LF+lnk+$LF) THEN ' it's an incorrect link
            inco = lnk
            l = INSTR(alllinks_c,$LF+inco)
            IF ISTRUE l THEN                            ' we found a fixed link that *starts* with the incorrect link
              INCR n                                    ' e.g. (#mushromms) -> (#mushrooms-and-co)
              m = INSTR(l+1,alllinks_c,$LF)
              lnk = MID$(alllinks_c,l+1,m-l-1)
              Set_Sel (j+1,k-1)                         ' select incorrect link (/!\ index is 0-based)
              SendMessage hEdit,%EM_REPLACESEL, _       ' replace selection with fixed link
                %TRUE,STRPTR(lnk)
              buf = LEFT$(buf,j+1) + lnk _              ' + replace in buffer as well
                  + MID$(buf,k)
            ELSE
              m = INSTR(alllinks_c,MID$(inco,2)+$LF)
              IF ISTRUE m THEN                          ' we found a fixed link that *ends* with the incorrect link
                INCR n                                  ' e.g. (#shiitake) -> (#how-to-cook-shiitake)
                l = INSTR(m-LEN(alllinks_c), _
                        alllinks_c,$LF+"#")
                m = INSTR(m+1,alllinks_c,$LF)
                lnk = MID$(alllinks_c,l+1,m-l-1)
                Set_Sel (j+1,k-1)                       ' select incorrect link (/!\ index is 0-based)
                SendMessage hEdit,%EM_REPLACESEL, _     ' replace selection with fixed link
                  %TRUE,STRPTR(lnk)
                buf = LEFT$(buf,j+1) + lnk _            ' + replace in buffer as well
                    + MID$(buf,k)
              END IF
            END IF
          END IF
        END IF
      END IF
      j = INSTR(j+1,buf,"](#")
    WEND

  ' Show result dialog msg
  ' ----------------------
    IF n = 0 THEN
      Dialog_Msg "No incorrect links in the document.", "Fix Incorrect Links"
    ELSE
      Dialog_Msg FORMAT$(n) + " incorrect links successfully fixed." + $CR _
               + "Hit Ctrl + Z to undo (one by one).", "Fix Incorrect Links"
    END IF

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

SUB Follow_Link

    LOCAL cr    AS CHARRANGE
    LOCAL buf   AS STRING
    LOCAL lnk   AS STRING
    LOCAL i, j  AS LONG

  ' Get richedit content and caret position
  ' ---------------------------------------
    buf = RE_Get
    REPLACE $CRLF WITH $CR IN buf
    SendMessage hEdit,%EM_EXGETSEL,0,BYVAL VARPTR(cr)

  ' Get link under caret
  ' --------------------
    i = INSTR(cr.cpMin-LEN(buf),buf,"[")
    IF ISFALSE i THEN BEEP : EXIT SUB
    IF ISTRUE INSTR(MID$(buf,i,cr.cpMax-i),$CR) THEN BEEP : EXIT SUB
    i = INSTR(i,buf,"](")
    IF ISFALSE i THEN BEEP : EXIT SUB
    i += LEN("](")
    j = INSTR(i,buf,")")
    IF ISFALSE j THEN BEEP : EXIT SUB
    lnk = MID$(buf,i,j-i)

  ' If link is incorrect, beep and exit
  ' -----------------------------------
    IF ISTRUE INSTR(lnk,$SPC) _
    OR ISTRUE INSTR(lnk,$CR) THEN
      BEEP : EXIT SUB
    END IF

  ' If link is external, open it in internet browser
  ' ------------------------------------------------
    IF INSTR(LCASE$(lnk),"http") = 1 _
    OR INSTR(LCASE$(lnk),"www.") = 1 THEN
      ShellExecute 0,"open",(lnk),"","",%SW_SHOW
      EXIT SUB
    END IF

  ' If link is internal, find the header it points to
  ' -------------------------------------------------
    Make_Headers_List(0) ' 0 to ignore header levels
    FOR i = LBOUND(headers) TO UBOUND(headers)
      IF anchor(headers(i)) = lnk THEN
        Set_Sel (hdr_pos(i),hdr_pos(i)) ' ...and go to it!
        EXIT FOR
      END IF
    NEXT

END SUB

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION DosPrint(sText AS STRING) AS LONG
    STATIC iTxtDone, isConsole AS LONG
    STATIC hCon AS DWORD

    IF hCon = 0 THEN hCon = GetStdHandle(BYVAL %STD_OUTPUT_HANDLE)
    IF hCon = %INVALID_HANDLE_VALUE THEN
        isConsole = 1
        CALL FreeConsole()
        IF AllocConsole() THEN hCon = GetStdHandle(BYVAL %STD_OUTPUT_HANDLE)
    END IF
    IF hCon <> %INVALID_HANDLE_VALUE THEN
        CALL WriteConsole(hCon, BYCOPY sText, LEN(sText), iTxtDone, BYVAL 0)
    END IF
    FUNCTION = isConsole
END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤

FUNCTION Url_Encode(sText AS STRING) AS STRING
    LOCAL rText AS STRING

    rText = "file:///" + sText
    REPLACE "\" WITH "/" IN rText
    FUNCTION = rText
END FUNCTION

' ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤
