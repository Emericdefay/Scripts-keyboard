#SingleInstance, Force
SetWorkingDir, %A_ScriptDir%


; TASKS 1 -> 9 :
TASK01 := "TASKS/toolbar_switch_hide-show.ahk"
TASK02 := "TASKS/beep.ahk"
TASK03 := "TASKS/.ahk"
TASK04 := "TASKS/.ahk"
TASK05 := "TASKS/.ahk"
TASK06 := "TASKS/run_prompt_from_current_path.ahk"
TASK07 := "TASKS/run_prompt_from_current_path_create_env_and_install_req.ahk"
TASK08 := "TASKS/run_prompt_get_dj_and_go_to_current_path.ahk"
TASK09 := "TASKS/run_prompt_get_spe_env_and_go_to_current_path.ahk"


; Commands :
While, True
{
    if (GetKeyState("Numpad1"))
    {
        try{
            run, %A_WorkingDir%\%TASK01%
            ExitApp
            return
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad2"))
    {
        try{
            run, %A_WorkingDir%\%TASK02%
            ExitApp
            return
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad3"))
    {
        try{
            run, %A_WorkingDir%\%TASK03%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad4"))
    {
        try{
            run, %A_WorkingDir%\%TASK04%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad5"))
    {
        try{
            run, %A_WorkingDir%\%TASK05%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad6"))
    {
        try{
            run, %A_WorkingDir%\%TASK06%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad7"))
    {
        try{
            run, %A_WorkingDir%\%TASK07%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad8"))
    {
        try{
            run, %A_WorkingDir%\%TASK08%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }

    if (GetKeyState("Numpad9"))
    {
        try{
            run, %A_WorkingDir%\%TASK09%
            ExitApp
        }
        Catch, e
        {
            ExitApp
        }
    }
}

ExitApp
