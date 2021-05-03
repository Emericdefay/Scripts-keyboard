#NoEnv
SendMode Input

WinGet, current_ID, ID, A
previous_ID := current_ID
InputBox, env_input, Environment name, Give env name:,, 200, 100, A_ScreenWidth//2, A_ScreenHeight//2
global env := ""Chr(34)env_input
Run, cmd.exe, %A_Desktop%
WinWaitActive, ahk_exe %ComSpec%
WinActivate, ahk_id %previous_ID%

cmdHere()
 
cmdHere() {
	If WinActive("ahk_class CabinetWClass") || WinActive("ahk_class ExploreWClass") {
		WinHWND := WinActive()
		activation := "/Scripts/activate.bat"Chr(34)
		Transform, command, Deref, %env%%activation%
		ControlSend,, %command%{Enter}, ahk_exe %ComSpec%
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
}