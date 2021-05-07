#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


; Commands
While, True
{
    if (GetKeyState("Left"))
    {
        run, keys_manager_set_0.ahk
        ExitApp
    }

    if (GetKeyState("Down"))
    {
        run, keys_manager_set_1.ahk
        ExitApp
    }

    if (GetKeyState("Right"))
    {   
        run, keys_manager_set_2.ahk
        ExitApp
    }
}

ExitApp
