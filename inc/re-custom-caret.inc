'-----------------------------------------------------------------------------------------------------------------
' THIS IS THE INCLUDE FILE FOR RICHEDIT CUSTOM CARET (FAT CARET) WHEN INSERT KEY IS PRESSED
'-----------------------------------------------------------------------------------------------------------------

FUNCTION RE_Subclass(BYVAL hWnd AS LONG,BYVAL wMsg AS LONG,BYVAL wParam AS LONG,BYVAL lParam AS LONG) AS LONG

    LOCAL cr       AS CHARRANGE
    LOCAL OldProc   AS LONG
    LOCAL lRetVal   AS LONG

    OldProc=GetProp(hWnd,"OldProc")

    SELECT CASE wMsg
        CASE %WM_SETFOCUS
            FUNCTION=CallWindowProc(OldProc,hWnd,wMsg,wParam,lParam)
            IF ISTRUE INS THEN CALL CustomCursorCreate(hWnd)
            EXIT FUNCTION

        CASE %WM_KILLFOCUS
          ' The control destroys the caret

        CASE %WM_PAINT
          ' Create caret the first time the control is painted
          IF GetFocus() = hWnd THEN
            IF GetProp(hWnd,"Initial_Paint") = 0 THEN
              SetProp hWnd,"Initial_Paint",1
              CallWindowProc(OldProc,hWnd,wMsg,wParam,lParam)
              IF ISTRUE INS THEN CALL CustomCursorCreate(hWnd)
              EXIT FUNCTION
            END IF
          END IF

        CASE %WM_LBUTTONDOWN
          CallWindowProc(OldProc,hWnd,wMsg,wParam,lParam)
          SendMessage hWnd,%EM_EXGETSEL,0,BYVAL VARPTR(cr)
          IF cr.cpMin = cr.cpMax AND ISTRUE INS THEN
            CALL CustomCursorCreate(hWnd)
          END IF
          EXIT FUNCTION

        CASE %WM_KEYUP
          SELECT CASE AS LONG wParam
            CASE %VK_INSERT
              IF ISTRUE INS THEN CALL RevertDefaultCursor(hWnd)
              INS = 1 - INS
              IF ISTRUE INS THEN CALL CustomCursorCreate(hWnd)
          END SELECT

        CASE %WM_KEYDOWN
          IF GetFocus() = hWnd THEN
            lRetVal = CallWindowProc(OldProc,hWnd,wMsg,wParam,lParam)
            SendMessage hWnd,%EM_EXGETSEL,0,BYVAL VARPTR(cr)
            IF cr.cpMin = cr.cpMax AND ISTRUE INS THEN
              CALL CustomCursorCreate(hWnd)
            END IF
            FUNCTION = lRetVal
            EXIT FUNCTION
          END IF

        CASE %WM_DESTROY
          RemoveProp hWnd,"Initial_Paint"
          RemoveProp hWnd,"OldProc"
          SetWindowLong hWnd,%GWL_WNDPROC,OldProc

    END SELECT

    FUNCTION=CallWindowProc(OldProc,hWnd,wMsg,wParam,lParam)

END FUNCTION

'-----------------------------------------------------------------------------------------------------------------

SUB CustomCursorCreate(hWnd AS LONG)

    LOCAL hDC       AS DWORD
    LOCAL tm        AS TEXTMETRIC
    LOCAL tmprc     AS RECT
    LOCAL newHeight AS LONG

    hDC=GetDC(hWnd)
    GetTextMetrics hDC,tm
    ReleaseDC hWnd,hDC
    DestroyCaret
    GetClientRect hWnd,tmprc
    IF (tmprc.nBottom-tmprc.nTop)>(tm.tmHeight-1) THEN
        newHeight=tm.tmHeight-1
    ELSE
        newHeight=tmprc.nBottom-tmprc.nTop-2
    END IF
    CreateCaret hWnd,BYVAL %NULL,IIF(tm.tmAveCharWidth>0,tm.tmAveCharWidth,5),newHeight
    CONTROL SET USER GetParent(hWnd),GetDlgCtrlID(hWnd),3,MAK(LONG,IIF(tm.tmAveCharWidth>0,tm.tmAveCharWidth,5),tm.tmHeight-1)
    ShowCaret hWnd

END SUB

'-----------------------------------------------------------------------------------------------------------------

SUB RevertDefaultCursor(hWnd AS LONG)

    LOCAL hDC       AS DWORD
    LOCAL tm        AS TEXTMETRIC
    LOCAL tmprc     AS RECT
    LOCAL newHeight AS LONG
    LOCAL CaretPos  AS POINTAPI
    LOCAL CaretSize AS LONG

  ' Destroy custom cursor
    GetCaretPos CaretPos
    MapWindowPoints hWnd,hWnd,CaretPos,1
    DestroyCaret
    CONTROL GET USER GetParent(hWnd),GetDlgCtrlID(hWnd),3 TO CaretSize
    tmprc.nTop=CaretPos.y
    tmprc.nLeft=CaretPos.x
    tmprc.nBottom=tmprc.nTop+HI(WORD,CaretSize)
    tmprc.nRight=tmprc.nLeft+LO(WORD,CaretSize)
    InvalidateRect hWnd,tmprc,%TRUE
    'UpdateWindow hWnd

  ' Re-draw default cursor
    hDC=GetDC(hWnd)
    GetTextMetrics hDC,tm
    ReleaseDC hWnd,hDC
    DestroyCaret
    GetClientRect hWnd,tmprc
    IF (tmprc.nBottom-tmprc.nTop)>(tm.tmHeight-1) THEN
        newHeight=tm.tmHeight-1
    ELSE
        newHeight=tmprc.nBottom-tmprc.nTop
        DECR newHeight
        DECR newHeight
    END IF
    CreateCaret hWnd,BYVAL %NULL,1,newHeight
    CONTROL SET USER GetParent(hWnd),GetDlgCtrlID(hWnd),3,MAK(LONG,1,tm.tmHeight-1)
    ShowCaret hWnd

END SUB

'-----------------------------------------------------------------------------------------------------------------
