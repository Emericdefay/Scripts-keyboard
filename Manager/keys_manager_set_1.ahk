#SingleInstance, Force
SetWorkingDir, %A_ScriptDir%


; TASKS 10 -> 19 :
TASK10 := "TASKS/.ahk"
TASK11 := "TASKS/.ahk"
TASK12 := "TASKS/.ahk"
TASK13 := "TASKS/.ahk"
TASK14 := "TASKS/.ahk"
TASK15 := "TASKS/.ahk"
TASK16 := "TASKS/.ahk"
TASK17 := "TASKS/.ahk"
TASK18 := "TASKS/.ahk"
TASK19 := "TASKS/.ahk"


; Commands :
While, True
{
    if (GetKeyState("Numpad0"))
    {
        try{
            run, %A_WorkingDir%\%TASK10%
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
            run, %A_WorkingDir%\%TASK11%
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
            run, %A_WorkingDir%\%TASK12%
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
            run, %A_WorkingDir%\%TASK13%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad4"))
    {
        try{
            run, %A_WorkingDir%\%TASK14%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad5"))
    {
        try{
            run, %A_WorkingDir%\%TASK15%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad6"))
    {
        try{
            run, %A_WorkingDir%\%TASK16%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad7"))
    {
        try{
            run, %A_WorkingDir%\%TASK17%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad8"))
    {
        try{
            run, %A_WorkingDir%\%TASK18%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad9"))
    {
        try{
            run, %A_WorkingDir%\%TASK19%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }
}

ExitApp
