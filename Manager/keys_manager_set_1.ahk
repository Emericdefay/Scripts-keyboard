#SingleInstance, Force
SendMode Input
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

 & Numpad0::
    try{
        run, %A_WorkingDir%\%TASK10%
        ExitApp
    }
    Catch, e
    {
        ExitApp
    }

*Numpad1::
    try{
        run, %A_WorkingDir%\%TASK11%
        ExitApp
    }
    Catch, e
    {
        ExitApp
    }

*Numpad2::
    try{
        run, %A_WorkingDir%\%TASK12%
        ExitApp
    }
    Catch, e
    {
        ExitApp
    }

*Numpad3::
    try{
        run, %A_WorkingDir%\%TASK13%
        ExitApp
    }
    Catch, e
    {
        ExitApp
    }

*Numpad4::
    try{
        run, %A_WorkingDir%\%TASK14%
        ExitApp
    }
    Catch, e
    {
        ExitApp
    }

*Numpad5::
    try{
        run, %A_WorkingDir%\%TASK15%
        ExitApp
    }
    Catch, e
    {
        ExitApp
    }

*Numpad6::
    try{
        run, %A_WorkingDir%\%TASK16%
        ExitApp
    }
    Catch, e
    {
        ExitApp
    }

*Numpad7::
    try{
        run, %A_WorkingDir%\%TASK17%
        ExitApp
    }
    Catch, e
    {
        ExitApp
    }

*Numpad8::
    try{
        run, %A_WorkingDir%\%TASK18%
        ExitApp
    }
    Catch, e
    {
        ExitApp
    }

*Numpad9::
    try{
        run, %A_WorkingDir%\%TASK19%
        ExitApp
    }
    Catch, e
    {
        ExitApp
    }