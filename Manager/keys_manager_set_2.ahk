#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


; TASKS 20 -> 23
TASK20 := "TASKS/.ahk"
TASK21 := "TASKS/.ahk"
TASK22 := "TASKS/.ahk"
TASK23 := "TASKS/.ahk"

*Numpad0::
    try{
        run, %A_WorkingDir%\%TASK20%
        ExitApp
    }
    Catch, e
    {
        ExitApp
    }

*Numpad1::
    try{
        run, %A_WorkingDir%\%TASK21%
        ExitApp
    }
    Catch, e
    {
        ExitApp
    }

*Numpad2::
    try{
        run, %A_WorkingDir%\%TASK22%
        ExitApp
    }
    Catch, e
    {
        ExitApp
    }

*Numpad3::
    try{
        run, %A_WorkingDir%\%TASK23%
        ExitApp
    }
    Catch, e
    {
        ExitApp
    }