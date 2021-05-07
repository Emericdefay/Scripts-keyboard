#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

path_startup := "C:\Users\Konatsune\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

FileCopy, run_manager_win.ahk, %path_startup%, 1