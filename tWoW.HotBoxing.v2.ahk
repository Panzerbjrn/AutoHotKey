#Requires AutoHotkey 2.0
#SingleInstance

SendMode("Event")
SetKeyDelay(10, 10)

^+#!r:: Reload
F10:: ExitApp
Numpad0:: Click('R')
~Pause:: Suspend(-1)

KeysToBroadcast := [
    "Numpad1",
    "^Numpad1",
    "Numpad2",
    "Numpad3",
    "Numpad4",
    "Numpad5",
    "Numpad6",
    "Numpad7",
    "^Numpad7",
    "Numpad8",
    "Numpad9",
    "b",
    "l",
    "Space",
    "^F11",
    "^F12"
]
WowIDs := WinGetList("World of Warcraft")
for k in KeysToBroadcast {
    Hotkey("~*" k, (hk) => GenericBroadcast(hk))
}
GenericBroadcast(HotkeyName) {
    ; Get the actual modifiers pressed at this moment
    actualMods := ""
    if GetKeyState("Control", "P")
        actualMods .= "^"
    if GetKeyState("Alt", "P")
        actualMods .= "!"
    if GetKeyState("Shift", "P")
        actualMods .= "+"
    if GetKeyState("LWin", "P") || GetKeyState("RWin", "P")
        actualMods .= "#"

    ; Extract the base key (without prefixes and modifiers)
    CleanKey := RegExReplace(HotkeyName, "[~\*]")
    WaitKey := RegExReplace(CleanKey, "[\^!#+]")

    ; Wait for the main key to be released
    KeyWait(WaitKey)

    ; Wait for all modifier keys to be released
    if InStr(actualMods, "^")
        KeyWait("Control")
    if InStr(actualMods, "!")
        KeyWait("Alt")
    if InStr(actualMods, "+")
        KeyWait("Shift")
    if InStr(actualMods, "#")
        KeyWait("LWin")

    ; Send the actual key combo that was pressed
    ; Build the key sequence with explicit modifier down/up
    keySequence := ""
    if InStr(actualMods, "^")
        keySequence .= "{Control down}"
    if InStr(actualMods, "!")
        keySequence .= "{Alt down}"
    if InStr(actualMods, "+")
        keySequence .= "{Shift down}"
    if InStr(actualMods, "#")
        keySequence .= "{LWin down}"

    keySequence .= "{" WaitKey "}"

    if InStr(actualMods, "#")
        keySequence .= "{LWin up}"
    if InStr(actualMods, "+")
        keySequence .= "{Shift up}"
    if InStr(actualMods, "!")
        keySequence .= "{Alt up}"
    if InStr(actualMods, "^")
        keySequence .= "{Control up}"

    for id in WowIDs {
        ControlSend(keySequence, , "ahk_id " id)
    }
}