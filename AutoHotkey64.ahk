#Requires AutoHotkey v2.0

; Define Hotkeys
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
    if WinExist("ahk_exe WindowsTerminal.exe")
        WinActivate
    else
        Run "wt"
}

; Visual Studio Code with Win+2
#2::
{
    if WinExist("ahk_exe Code.exe")
        WinActivate
    else
        Run "Code"
}

; Google Chrome with Win+3
#3::
{
    if WinExist("Google Chrome")
        WinActivate
    else
        Run "Chrome"
}

; Empty Hotkeys
#4::
#7::
#8::

; Firefox with Win+5
#5:: 
{
    if WinExist("ahk_class MozillaWindowClass")
        WinActivate
    else
        Run "Firefox"
}

; ChatGPT with Win+6
#6:: 
{
    if WinExist("ChatGPT")
        WinActivate
    else
        Run '"C:\Program Files\Google\Chrome\Application\chrome_proxy.exe" --profile-directory=Default --app-id=cadlkienfkclaiaibeoongdcgmdikeeg"'
}

; Display active window's ID with Win+9
#9::MsgBox "The active window's ID is " WinExist("A")

; File Explorer with Win+e
#e:: 
{
    if WinExist("ahk_class CabinetWClass") or WinExist("ahk_class ExploreWClass")
        WinActivate
    else
        Run "explorer"
}

; OneKeySequence Hotkey Setup
#a::OneKeySequence(ThisHotkey)

; Function Definitions
OneKeySequence(ThisHotkey)
{
    ih := InputHook("L1")
    ih.Start()
    ih.Wait()
    key := Ord(ih.Input)
    
    try {
        switch key {
            case 102:  ; f - Focus TO-DO app
                RunOrActivate("ahk_exe FocusToDo.exe", "C:\Program Files\WindowsApps\52299SuperElement.119436511DDC8_7.0.0.0_neutral__792yctbvabkar\FocusToDo\FocusToDo.exe")
            case 116:  ; t - Telegram App
                RunOrActivate("ahk_exe Telegram.exe", "C:\Users\dsgol\AppData\Roaming\Telegram Desktop\Telegram.exe")
            case 122:  ; z - Zoom App
                RunOrActivate("ahk_exe Zoom.exe", "C:\Users\dsgol\AppData\Roaming\Zoom\bin\Zoom.exe")
            case 115:  ; s - Slack App
                RunOrActivate("ahk_exe Slack.exe", "Slack.exe")
            case 114:  ; r - Reminder App
                RunOrActivate("iCloud Reminders", '"C:\Program Files\Google\Chrome\Application\chrome_proxy.exe" --profile-directory=Default --app-id=nffepbmcpdbglihcidhnbefejbophemm"')
            case 110:  ; n - Notes App
                RunOrActivate("iCloud Notes", '"C:\Program Files\Google\Chrome\Application\chrome_proxy.exe" --profile-directory=Default --app-id=hdbfcilmnlkoiempgdfpifdnhnjiigfh"')
            default:
                MsgBox "Not found any App matched the key", key
        }
    } catch Error as err {
        MsgBox "Can't run the application", err.Message
    }
}

RunOrActivate(winTitle, runCommand)
{
    if WinExist(winTitle)
        WinActivate
    else
        Run runCommand
}
