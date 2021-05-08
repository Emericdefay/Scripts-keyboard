#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.


; Base position
left_default_value_top := 0xFFFFFF35 
pixel_offset_top_to_bot := 399
RegRead, current_pos_monitor_left, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Configuration\AUS24B1#ASNUrOZpntPd_27_07E0_4D+IVM560C11005M1A00939_29_07DB_AB+VSCBB3116843009_23_07E0_0F^270E278CAA0F044117752A8D9E892BD5\02, Position.cy
if (current_pos_monitor_left = left_default_value_top)
{
    pixel_offset_top_to_bot := 0 
}


; Google get windows
GoogleWindows := WinGetAllGoogle()
NumberGoogleWindows := 0

for index, element in GoogleWindows
{
    NumberGoogleWindows ++
}

if (NumberGoogleWindows = 0)
{
    run, chrome https://www.jesuisundev.com/latest ,,, pid_chrome_1
    WinWait, ahk_pid %pid_chrome_1%
    run, chrome ,,, pid_chrome_2
    Sleep, 100
}

if (NumberGoogleWindows = 1)
{
    run, chrome ,,, pid_chrome_2
    Sleep, 100
}

IDsGoogleWindows := []
GoogleWindowsUpdate := WinGetAllGoogle()
for index, element in GoogleWindowsUpdate
{
    IDsGoogleWindows.Push(element)
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
    Sleep, 100
    WinGet, ID_VSC_window, ID, ahk_pid %pid_vsc_1%
    IDsVSCWindows.Push(ID_VSC_window)
}


; folder
run, "O:\Cours OCR"
WinWait, ahk_class CabinetWClass
WinActivate, ahk_class WorkerW
WinRestore, ahk_class CabinetWClass
WinMove, ahk_class CabinetWClass,, -1080, 1078-pixel_offset_top_to_bot, 1080, 640


; Move
for index, element in IDsGoogleWindows
{
    WinActivate, ahk_class WorkerW
    WinGetTitle, WTitle, % "ahk_id " element
    Sleep, 100

    if WTitle Contains Nouvel
    {
        WinRestore, ahk_id %element%
        WinMove, ahk_id %element%,, -1080, -202-pixel_offset_top_to_bot, 1080, 640
    }
    Else
    {
        WinRestore, ahk_id %element%
        WinMove, ahk_id %element%,, 1920, -195-pixel_offset_top_to_bot, 1080, 1920
    }
}

for index, element in IDsVSCWindows
{
    WinRestore, ahk_id %element%
    WinMove, ahk_id %element%,, 0, 0, 1080, 1920
    WinMaximize, ahk_id %element%
}


; potential terminal
WinActivate, ahk_class WorkerW
WinRestore, ahk_class ConsoleWindowClass
WinMove, ahk_class ConsoleWindowClass,, -1080, 438-pixel_offset_top_to_bot, 540, 640


; potential git
WinActivate, ahk_class WorkerW
WinRestore, ahk_class mintty
WinMove, ahk_class mintty,, -540, 438-pixel_offset_top_to_bot, 540, 640

ExitApp


;functions
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
