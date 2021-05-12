#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

RegRead, playing, HKEY_CURRENT_USER, Software\VideoLAN , playState

if playing = 01
{
    run, vlc_exit_.bat
    RegWrite, REG_BINARY, HKEY_CURRENT_USER, Software\VideoLAN, playstate, 00
}
Else
{
    run, vlc_url_cyberpunk_.bat
    RegWrite, REG_BINARY, HKEY_CURRENT_USER, Software\VideoLAN, playstate, 01
}