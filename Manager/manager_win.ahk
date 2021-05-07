﻿#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance, force
DetectHiddenWindows, On


; Command for the Controlpad from Coolermaster
; attached to the "24" key of this controlpad.
; A key shortcut that redirect to the sub_manager
#NumpadMult::
{
    run, keys_manager_win.ahk,,HIDE, pid1
    While, GetKeyState("Left") or GetKeyState("Down") or GetKeyState("Right") or GetKeyState("LWin")
    {
        Sleep, 10
    }
    Sleep, 1000
    WinClose, ahk_pid %pid1%
    WinWaitClose, ahk_pid %pid1%
    return
}
