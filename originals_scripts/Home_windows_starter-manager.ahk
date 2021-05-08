#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

; Google get windows
GoogleWindows := WinGetAllGoogle()
NumberGoogleWindows := 0
for index, element in GoogleWindows
{
    NumberGoogleWindows ++
    ;IDsGoogleWindows.Push(element)
}
if (NumberGoogleWindows = 0)
{
    run, chrome https://www.jesuisundev.com/latest ,,, pid_chrome_1
    WinWait, ahk_pid %pid_chrome_1%
    ;WinGet, ID_first_window, ID, ahk_pid %pid_chrome_1%
    ;IDsGoogleWindows.Push(ID_first_window)
    ;Sleep, 100
    run, chrome ,,, pid_chrome_2
    Sleep, 100
    ;WinWait, ahk_pid %pid_chrome_2%
    ;Sleep, 100
    ;WinGet, ID_second_window, ID, ahk_pid %pid_chrome_2%
    ;IDsGoogleWindows.Push(ID_second_window)
}
if (NumberGoogleWindows = 1)
{
    run, chrome ,,, pid_chrome_2
    ;Sleep, 100
    ;WinWait, ahk_pid %pid_chrome_2%
    ;Sleep, 100
    ;WinGet, ID_second_window, ID, ahk_pid %pid_chrome_2%
    ;IDsGoogleWindows.Push(ID_second_window)
}

Sleep, 100

IDsGoogleWindows := []
GoogleWindowsUpdate := WinGetAllGoogle()
for index, element in GoogleWindowsUpdate
{
    IDsGoogleWindows.Push(element)
    ;MsgBox %element%
    Sleep, 10
}

; VSC get windows
VSCWindows := WinGetAllVSCode()
NumberVSCWindows := 0
IDsVSCWindows := []
for index, element in VSCWindows
{
    NumberVSCWindows ++
    IDsVSCWindows.Push(element)
}

if NumberVSCWindows = 0
{
    run, code ,,, pid_vsc_1
    ;WinWait, ahk_pid %pid_vsc_1%
    Sleep, 100
    WinGet, ID_VSC_window, ID, ahk_pid %pid_vsc_1%
    IDsVSCWindows.Push(ID_VSC_window)
}

; folder

run, "O:\Cours OCR"
WinWait, ahk_class CabinetWClass
WinActivate, ahk_class WorkerW
WinRestore, ahk_class CabinetWClass
WinMove, ahk_class CabinetWClass,, -1080, 1078, 1080, 640

; Move
for index, element in IDsGoogleWindows
{
    WinActivate, ahk_class WorkerW
    WinGetTitle, WTitle, % "ahk_id " element
    Sleep, 100
    ;msgbox %WTitle%
    if WTitle Contains Nouvel
    {
        WinRestore, ahk_id %element%
        WinMove, ahk_id %element%,, -1080, -202, 1080, 640
    }
    Else
    {
        WinRestore, ahk_id %element%
        WinMove, ahk_id %element%,, 1920, -195, 1080, 1920
    }
}

for index, element in IDsVSCWindows
{
    WinRestore, ahk_id %element%
    WinMove, ahk_id %element%,, 0, 0, 1080, 1920
    WinMaximize, ahk_id %element%
}

WinActivate, ahk_class WorkerW
WinRestore, ahk_class ConsoleWindowClass
WinMove, ahk_class ConsoleWindowClass,, -1080, 438, 540, 640

WinActivate, ahk_class WorkerW
WinRestore, ahk_class mintty
WinMove, ahk_class mintty,, -540, 438, 540, 640

ExitApp

WinGetAllGoogle(Which="Title", DetectHidden="Off"){
    O_DHW := A_DetectHiddenWindows, O_BL := A_BatchLines ;Save original states
    DetectHiddenWindows, % (DetectHidden != "off" && DetectHidden) ? "on" : "off"
        SetBatchLines, -1
        WinGet, all, list ;get all hwnd
        If (Which="Title") ;return Window Titles
        {
            Output := []
            Loop, %all%
            {
                WinGetTitle, WTitle, % "ahk_id " all%A_Index%
                WinGet, WID, ID, % "ahk_id" all%A_Index%
                If WTitle ;Prevent to get blank titles
                    If WTitle Contains Google
                    Output.Push(WID) 
            }
        }
        DetectHiddenWindows, %O_DHW% ;back to original state
        SetBatchLines, %O_BL% ;back to original state
        Sort, Output, U ;remove duplicates
    Return Output
}

WinGetAllVSCode(Which="Title", DetectHidden="Off"){
    O_DHW := A_DetectHiddenWindows, O_BL := A_BatchLines ;Save original states
    DetectHiddenWindows, % (DetectHidden != "off" && DetectHidden) ? "on" : "off"
        SetBatchLines, -1
        WinGet, all, list ;get all hwnd
        If (Which="Title") ;return Window Titles
        {
            Output := []
            Loop, %all%
            {
                WinGetTitle, WTitle, % "ahk_id " all%A_Index%
                WinGet, WID, ID, % "ahk_id" all%A_Index%
                If WTitle ;Prevent to get blank titles
                    If WTitle Contains Visual, Studio, Code
                    Output.Push(WID) 
            }
        }
        DetectHiddenWindows, %O_DHW% ;back to original state
        SetBatchLines, %O_BL% ;back to original state
        Sort, Output, U ;remove duplicates
    Return Output
}
