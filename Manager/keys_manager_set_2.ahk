#SingleInstance, Force
SetWorkingDir, %A_ScriptDir%


; TASKS 20 -> 23 :
TASK20 := "TASKS/.ahk"
TASK21 := "TASKS/.ahk"
TASK22 := "TASKS/.ahk"
TASK23 := "TASKS/.ahk"


; Commands :
While, True
{
    if (GetKeyState("Numpad0"))
    {
        try{
            run, %A_WorkingDir%\%TASK20%
            ExitApp
            return
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad1"))
    {
        try{
            run, %A_WorkingDir%\%TASK21%
            ExitApp
            return
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad2"))
    {
        try{
            run, %A_WorkingDir%\%TASK22%
            ExitApp
            return
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad3"))
    {
        try{
            run, %A_WorkingDir%\%TASK23%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }
}

ExitApp
