#NoEnv
SendMode Input

WinGet, git_session_id, ID, A
run, "https://github.com/"

InputBox, repo, Give repo name, repo name, , 300, 100

Transform, command, Deref, git remote set-url origin %repo%
sleep, 10
WinActivate, ahk_id %git_session_id%
WinWaitActive, ahk_id %git_session_id%
Send, %command% {Enter}
