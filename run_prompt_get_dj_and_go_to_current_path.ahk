#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; WinGetClass, Class, ahk_id %ID%
; ControlGetText, ePath, Edit1, ahk_id %ID%


WinGet, current_ID, ID, A
previous_ID := current_ID
Run, cmd.exe, %A_Desktop%
WinWaitActive, ahk_exe %ComSpec%
WinActivate, ahk_id %previous_ID%
cmdHere()
 
cmdHere() {
	If WinActive("ahk_class CabinetWClass") || WinActive("ahk_class ExploreWClass") {
		WinHWND := WinActive()
		ControlSend,, "dj/Scripts/activate.bat"{Enter}, ahk_exe %ComSpec%
		For win in ComObjCreate("Shell.Application").Windows
			If (win.HWND = WinHWND) {
				dir := SubStr(win.LocationURL, 9)
				dir := RegExReplace(dir, "%20", " ")
				Break
			}
	}
	WinActivate, ahk_exe %ComSpec%
	WinWaitActive, ahk_exe %comspec%
	quotes := chr(34)
	dir := quotes dir quotes
	ControlSend,, cd %dir%{Enter}, ahk_exe %comspec%
	; ControlSend,, python -m venv env{Enter}, ahk_exe %comspec%
	; ControlSend,, env\\Scripts\\activate.bat{Enter}, ahk_exe %comspec%
	; ControlSend,, pip install -r requirements.txt{Enter}, ahk_exe %comspec%
}