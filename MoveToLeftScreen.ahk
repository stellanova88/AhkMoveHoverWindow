#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
+F13::
Send, {#d}  ;{LWin up}
;Move hovered window to second monitor at center position
 SysGet, Mon1, Monitor, 1
 WatchCursor:
 MouseGetPos, , , id, control
 WinGetTitle, title, ahk_id %id%
     WinGetPos, , , WW, WH, A

         WinMove, %title%, , Mon1Left-7, Mon1Bottom/2-504, 1094, 1000
 return


; ^j::
+F14::
    Send, {LWin down}{Left down}{LWin up}
    Sleep, 100
    Send, {Shift up}
return

;Send Shift f14
; ^j::
; send, +{vk7E}

+F15::
    Send, {LWin down}{Right down}{LWin up}
    Sleep, 100
    Send, {Shift up}
return
