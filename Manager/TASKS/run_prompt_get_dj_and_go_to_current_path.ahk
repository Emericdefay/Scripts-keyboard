#NoEnv
SendMode Input

WinGet, current_ID, ID, A
previous_ID := current_ID
Run *runas cmd.exe, %A_Desktop%
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
	dir := dir
	ControlSend,, cd /D %dir%{Enter}, ahk_exe %comspec%
}