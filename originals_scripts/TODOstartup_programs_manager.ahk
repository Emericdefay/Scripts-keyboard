#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; ABM_SETSTATE    := 10
; ABS_NORMAL      := 0x0
; ABS_AUTOHIDE    := 0x1
; ABS_ALWAYSONTOP := 0x2
; VarSetCapacity(APPBARDATA, 36, 0)
; Address := NumPut(36, APPBARDATA)
; Address := NumPut(WinExist("ahk_class Shell_TrayWnd"), Address + 0)
; NumPut(ABS_NORMAL, Address + 24)
; DllCall("Shell32.dll\SHAppBarMessage", UInt, ABM_SETSTATE, UInt, &APPBARDATA)

ABM_GETSTATE    := 04
ABS_NORMAL      := 0x0
ABS_AUTOHIDE    := 0x1
ABS_ALWAYSONTOP := 0x2
VarSetCapacity(APPBARDATA, 36, 0)
Address := NumPut(36, APPBARDATA)
Address := NumPut(WinExist("ahk_class Shell_TrayWnd"), Address + 0)
NumPut(ABS_NORMAL, Address + 24)
state := DllCall("Shell32.dll\SHAppBarMessage", UInt, ABM_GETSTATE, UInt, &APPBARDATA)

if state
{
ABM_SETSTATE    := 10
ABS_NORMAL      := 0x0
ABS_AUTOHIDE    := 0x1
ABS_ALWAYSONTOP := 0x2
VarSetCapacity(APPBARDATA, 36, 0)
Address := NumPut(36, APPBARDATA)
Address := NumPut(WinExist("ahk_class Shell_TrayWnd"), Address + 0)
NumPut(ABS_NORMAL, Address + 24)
DllCall("Shell32.dll\SHAppBarMessage", UInt, ABM_SETSTATE, UInt, &APPBARDATA)
}
else ;show
{
ABM_SETSTATE    := 10
ABS_NORMAL      := 0x0
ABS_AUTOHIDE    := 0x1
ABS_ALWAYSONTOP := 0x2
VarSetCapacity(APPBARDATA, 36, 0)
Address := NumPut(36, APPBARDATA)
Address := NumPut(WinExist("ahk_class Shell_TrayWnd"), Address + 0)
NumPut(ABS_AUTOHIDE, Address + 24)
DllCall("Shell32.dll\SHAppBarMessage", UInt, ABM_SETSTATE, UInt, &APPBARDATA)
}