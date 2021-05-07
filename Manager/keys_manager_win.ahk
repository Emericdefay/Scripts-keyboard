#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


; PATH :
path_TASKS := "C:\Users\Konatsune\Documents\Programmation\Clavier macro\Manager\TASKS\"


; TASKS :
TASK01 := ".ahk" ; Ouvrir pages chrome + vs code
TASK02 := ".ahk" ; Ouvrir terminal et github au dossier indiqué
TASK03 := ".ahk"
TASK04 := ".ahk"
TASK05 := "beep.ahk"
TASK06 := "run_prompt_from_current_path.ahk"
TASK07 := "run_prompt_from_current_path_create_env_and_install_req.ahk"
TASK08 := "run_prompt_get_dj_and_go_to_current_path.ahk"
TASK09 := "run_prompt_get_spe_env_and_go_to_current_path.ahk"
TASK10 := "env_deactivate.ahk" 
TASK11 := "github_commit.ahk" 
TASK12 := ".ahk"
TASK13 := "github_SSH.ahk"
TASK14 := ".ahk"
TASK15 := "github_go_repo.ahk" ; go repo github
TASK16 := "local_website.ahk" 
TASK17 := ".ahk"
TASK18 := ".ahk"
TASK19 := ".ahk"
TASK20 := ".ahk"
TASK21_0 := "wallpaper_engine_pause.bat"
TASK21_1 := "wallpaper_engine_play.bat"
TASK22 := "wallpaper_engine_next.bat"
TASK23 := "toolbar_switch_hide-show.ahk"


; Commands :
; 1
Ctrl & Numpad1::
    {
        try{
            run, %TASK01%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 2
Ctrl & Numpad2::
    {

        try{
            run, %TASK02%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 3
Ctrl & Numpad3::
    {
        try{
            run, %TASK03%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 4
Ctrl & Numpad4::
    {
        try{
            run, %TASK04%, %path_TASKS% 
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 5
Ctrl & Numpad5::
    {
        try{
            run, %TASK05%, %path_TASKS% 
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 6
Ctrl & Numpad6::
    {
        try{
            run, %TASK06%, %path_TASKS% 
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 7
Ctrl & Numpad7::
    {
        try{
            run, %TASK07%, %path_TASKS% 
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 8
Ctrl & Numpad8::
    {
        try{
            run, %TASK08%, %path_TASKS% 
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 9
Ctrl & Numpad9::
    {
        try{
            run, %TASK09%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 10
RAlt & Numpad0::
    {
        try{
            run, %TASK10%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 11
RAlt & Numpad1::
    {
        try{
            run, %TASK11%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 12
RAlt & Numpad2::
    {
        try{
            run, %TASK12%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 13
RAlt & Numpad3::
    {
        try{
            run, %TASK13%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 14
RAlt & Numpad4::
    {
        try{
            run,%TASK14%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 15
RAlt & Numpad5::
    {
        try{
            run, %TASK15%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 16
RAlt & Numpad6::
    {
        try{
            run, %TASK16%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 17
RAlt & Numpad7::
    {
        try{
            run, %TASK17%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 18
RAlt & Numpad8::
    {
        try{
            run, %TASK18%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 19
RAlt & Numpad9::
    {
        try{
            run, %TASK19%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 20
RCtrl & Numpad0::
    {
        try{
            run, %TASK20%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 21
RCtrl & Numpad1::
    {
        try{
            RegRead, playing, HKEY_CURRENT_USER, Software\WallpaperEngine, playState

            if(playing = 01)
            {
                RegWrite, REG_BINARY, HKEY_CURRENT_USER, Software\WallpaperEngine, playState, 00
                run, %TASK21_0%, %path_TASKS% 
                ExitApp
            }
            Else
            {
                RegWrite, REG_BINARY, HKEY_CURRENT_USER, Software\WallpaperEngine, playState, 01
                run, %TASK21_1%, %path_TASKS% 
                ExitApp
            }
        }
        Catch, e
        {
            ExitApp
        }
    }

; 22
RCtrl & Numpad2::
    {
        try{
            run, %TASK22%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

; 23
RCtrl & Numpad3::
    {
        try{
            run, %TASK23%, %path_TASKS%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }
