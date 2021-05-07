#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force
DetectHiddenWindows, On


; Command for the Controlpad from Coolermaster
; attached to the "24" key of this controlpad.
; A key shortcut that redirect to the sub_manager

~#NumpadMult::
{
    run, keys_manager_win.ahk,,HIDE, pid1
    ;WinWait, ahk_pid %pid1%
    While, GetKeyState("Left") or GetKeyState("Down") or GetKeyState("Right") or GetKeyState("LWin")
    {
        ControlFocus, , manager_win.ahk
        Sleep, 10
    }
    Sleep, 1000
    WinClose, ahk_pid %pid1%
    WinWaitClose, ahk_pid %pid1%
    return
}
