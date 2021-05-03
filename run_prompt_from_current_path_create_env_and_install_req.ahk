#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

WinGetClass, Class, ahk_id %ID%
ControlGetText, ePath, Edit1, ahk_id %ID%

cmdHere()

cmdHere() {
	If WinActive("ahk_class CabinetWClass") || WinActive("ahk_class ExploreWClass") {
		WinHWND := WinActive()
		For win in ComObjCreate("Shell.Application").Windows
			If (win.HWND = WinHWND) {
				dir := SubStr(win.LocationURL, 9)
				dir := RegExReplace(dir, "%20", " ")
				Break
			}
	}
	Run *runas %ComSpec%, % dir ? dir : A_Desktop
	WinWaitActive, ahk_exe %comspec%
	ControlSend,, python -m venv env{Enter}, ahk_exe %comspec%
	ControlSend,, "env/Scripts/activate.bat"{Enter}, ahk_exe %comspec%
	ControlSend,, pip install -r requirements.txt{Enter}, ahk_exe %comspec%
}