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
    CleanKey := RegExReplace(HotkeyName, "[~\*]")
    WaitKey := RegExReplace(CleanKey, "[\^!#+]")
    KeyWait(WaitKey)
    for id in WowIDs {
        ControlSend("{Blind}{" CleanKey "}", , "ahk_id " id)
    }
}