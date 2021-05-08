#NoEnv
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
        timer := 10
        While, !GetKeyState("LCtrl") or !GetKeyState("Ralt") or !GetKeyState("RCtrl")
        {
            if WinExist("ahk_class DV2ControlHost")
            {
                WinClose
            }

            if !WinExist(ahk_pid %pid1%)
            {
                Break
            }

            timer --

            if timer <= 0
            {
                Break
            }
        }

        if WinExist("ahk_class DV2ControlHost")
        {
            WinClose
        }

        Sleep, 10
        WinClose, ahk_pid %pid1%
        WinWaitClose, ahk_pid %pid1%

        if WinExist("ahk_class DV2ControlHost")
        {
            WinClose
        }
        return
    }

#NumpadMult up::
    {
        if WinExist("ahk_class DV2ControlHost")
        {
            WinClose
        }
        return
    }