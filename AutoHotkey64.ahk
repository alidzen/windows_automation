#Requires AutoHotkey v2.0
#z::Run "https://www.autohotkey.com"  ; Win+Z

^!n::  ; Ctrl+Alt+N
{
    if WinExist("Untitled - Notepad")
        WinActivate
    else
        Run "Notepad"
}
; Windows Terminal with Win+1
#1::
{
    If WinExist("ahk_exe WindowsTerminal.exe")
        WinActivate ; uses the last found window
    else
        Run "wt" ; command to run Windows Terminal
}


; Visual Studio Code with Win+2
#2::
{
    If WinExist("ahk_exe Code.exe")
        WinActivate ; uses the last found window
    else
       Run "Code" ; command to run Visual Studio Code
}

; Disable default behavior
#3::
{
    if WinExist("Google Chrome")
        WinActivate
    else
        Run "Chrome"
}

#4::
{
}
#5:: ; win+5
{
    if WinExist("ahk_class MozillaWindowClass") 
        WinActivate ; Use the window found by WinExist.
    else
        Run "Firefox"
}
; pid: 18612 id: 332336
#6:: ; win+6
{
    if WinExist("ChatGPT") 
        WinActivate ; Use the window found by WinExist.
    else
        Run '"C:\Program Files\Google\Chrome\Application\chrome_proxy.exe"  --profile-directory=Default --app-id=cadlkienfkclaiaibeoongdcgmdikeeg"'
}

#7::
{
}
#8::
{
}

#9::
{
    MsgBox "The active window's ID is " WinExist("A")
}

; File Explorer with Win+e
#e::
{
    If WinExist("ahk_class CabinetWClass") or WinExist("ahk_class ExploreWClass")
        WinActivate ; uses the last found window
    else
        Run "explorer" ; command to run File Explorer
}



Hotkey "#a", OneKeySequince ; Open app {x}

OneKeySequince(ThisHotkey)
{
    ih := InputHook("L1")
    ih.Start()
    ih.Wait()
    key := Ord(ih.Input)
    MsgBox key
    if (key == 102)  ; f - Focus TO-DO app
    {
        try {
            If WinExist("ahk_exe FocusToDo.exe")
                WinActivate ; uses the last found window
            else
                Run "C:\Program Files\WindowsApps\52299SuperElement.119436511DDC8_7.0.0.0_neutral__792yctbvabkar\FocusToDo\FocusToDo.exe" ; command to run Focus To-Do
        } catch Error as err {
            MsgBox "Cant run Focus To-DO app", err.Message
        }
    }
    if (key == 116)  ; t - Telegram App
    {
        try {
            If WinExist("ahk_exe Telegram.exe")
                WinActivate ; uses the last found window
            else
                Run "Telegram.exe"
        } catch Error as err {
            MsgBox "Cant run Focus To-DO app", err.Message
        }
    }
    if (key == 122)  ; z - Zoom App
    {
        try {
            If WinExist("ahk_exe Zoom.exe")
                WinActivate ; uses the last found window
            else
                Run "Zoom.exe"
        } catch Error as err {
            MsgBox "Cant run Zoom app", err.Message
        }
    }
    if (key == 115)  ; z - Slack App
    {
        try {
            If WinExist("ahk_exe Slack.exe")
                WinActivate ; uses the last found window
            else
                Run "Slack.exe"
        } catch Error as err {
            MsgBox "Cant run Slack To-DO app", err.Message
        }
    }
    if (key == 114) ; r - Reminder App
    {
        try {
            If WinExist("iCloud Reminders")
                WinActivate ; uses the last found window
            else
                Run '"C:\Program Files\Google\Chrome\Application\chrome_proxy.exe"  --profile-directory=Default --app-id=nffepbmcpdbglihcidhnbefejbophemm"' ; from "target" in app properties
        } catch Error as err {
            MsgBox "Cant run Icloud Remider App", err.Message
        }
    }
    if (key == 110) ; n - Notes App
    {
        try {
            If WinExist("iCloud Notes")
                WinActivate ; uses the last found window
            else
                Run '"C:\Program Files\Google\Chrome\Application\chrome_proxy.exe"  --profile-directory=Default --app-id=hdbfcilmnlkoiempgdfpifdnhnjiigfh"' ; from "target" in app properties
        } catch Error as err {
            MsgBox "Cant run Icloud Remider App", err.Message
        }
    }

}

