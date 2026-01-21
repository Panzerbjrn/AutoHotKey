WinGet, wowid, List, World of Warcraft

^+#!r::Reload
numpad0:: Click, Right

; SUSPEND KEYS
; These keys will suspend the use of all other hotkeys in this script
~Pause::
Suspend, Toggle
Return

^!#+F1::
WinGetClass, class, A
Clipboard = ahk_class %class%
MsgBox, Class of current window is "%class%".
return

; *******************
; *** Other Keys  ***
; *******************

#IfWinExist, World of Warcraft
^F11::
	ControlSend,,{CTRL Down}{F11 Down}{CTRL Up}{F11 Up}, ahk_id %wowid1%
	ControlSend,,{CTRL Down}{F11 Down}{CTRL Up}{F11 Up}, ahk_id %wowid2%
	ControlSend,,{CTRL Down}{F11 Down}{CTRL Up}{F11 Up}, ahk_id %wowid3%
	ControlSend,,{CTRL Down}{F11 Down}{CTRL Up}{F11 Up}, ahk_id %wowid4%
	ControlSend,,{CTRL Down}{F11 Down}{CTRL Up}{F11 Up}, ahk_id %wowid5%
return

#IfWinExist, World of Warcraft
^F12::
	ControlSend,,{CTRL Down}{F12 Down}{CTRL Up}{F12 Up}, ahk_id %wowid1%
	ControlSend,,{CTRL Down}{F12 Down}{CTRL Up}{F12 Up}, ahk_id %wowid2%
	ControlSend,,{CTRL Down}{F12 Down}{CTRL Up}{F12 Up}, ahk_id %wowid3%
	ControlSend,,{CTRL Down}{F12 Down}{CTRL Up}{F12 Up}, ahk_id %wowid4%
	ControlSend,,{CTRL Down}{F12 Down}{CTRL Up}{F12 Up}, ahk_id %wowid5%
return

#IfWinActive, World of Warcraft
~^1::
	KeyWait, 1, D
	ControlSend,,{CTRL Down}{1 Down}{CTRL Up}{1 Up}, ahk_id %wowid1%
	ControlSend,,{CTRL Down}{1 Down}{CTRL Up}{1 Up}, ahk_id %wowid2%
	ControlSend,,{CTRL Down}{1 Down}{CTRL Up}{1 Up}, ahk_id %wowid3%
	ControlSend,,{CTRL Down}{1 Down}{CTRL Up}{1 Up}, ahk_id %wowid4%
	ControlSend,,{CTRL Down}{1 Down}{CTRL Up}{1 Up}, ahk_id %wowid5%
return

#IfWinActive, World of Warcraft
~!1::
	KeyWait, 1, D
	ControlSend,,{! Down}{1 Down}{! Up}{1 Up}, ahk_id %wowid1%
	ControlSend,,{! Down}{1 Down}{! Up}{1 Up}, ahk_id %wowid2%
	ControlSend,,{! Down}{1 Down}{! Up}{1 Up}, ahk_id %wowid3%
	ControlSend,,{! Down}{1 Down}{! Up}{1 Up}, ahk_id %wowid4%
	ControlSend,,{! Down}{1 Down}{! Up}{1 Up}, ahk_id %wowid5%
return

#IfWinActive, World of Warcraft
~B::
	ControlSend,,{B down}{B up}, ahk_id %wowid1%
	ControlSend,,{B down}{B up}, ahk_id %wowid2%
	ControlSend,,{B down}{B up}, ahk_id %wowid3%
	ControlSend,,{B down}{B up}, ahk_id %wowid4%
	ControlSend,,{B down}{B up}, ahk_id %wowid5%
return

#IfWinActive, World of Warcraft
~L::
	ControlSend,,{L Down}{L Up}, ahk_id %wowid1%
	ControlSend,,{L Down}{L Up}, ahk_id %wowid2%
	ControlSend,,{L Down}{L Up}, ahk_id %wowid3%
	ControlSend,,{L Down}{L Up}, ahk_id %wowid4%
	ControlSend,,{L Down}{L Up}, ahk_id %wowid5%
return

#IfWinActive, World of Warcraft
Space::  ; jump
	KeyWait, Space, D
	ControlSend,, {Space} , ahk_id %wowid1%
	ControlSend,, {Space} , ahk_id %wowid2%
	ControlSend,, {Space} , ahk_id %wowid3%
	ControlSend,, {Space} , ahk_id %wowid4%
	ControlSend,, {Space} , ahk_id %wowid5%
Return

; *******************
; *** NUMPAD Keys***
; *******************

#IfWinActive, World of Warcraft
numpad1::
	ControlSend,, {numpad1} , ahk_id %wowid1%
	ControlSend,, {numpad1} , ahk_id %wowid2%
	ControlSend,, {numpad1} , ahk_id %wowid3%
	ControlSend,, {numpad1} , ahk_id %wowid4%
	ControlSend,, {numpad1} , ahk_id %wowid5%
Return

#IfWinActive, World of Warcraft
^numpad1::
	KeyWait, 1, D
    ControlSend,,{CTRL}{numpad1}, ahk_id %wowid1%
    ControlSend,,{CTRL}{numpad1}, ahk_id %wowid2%
    ControlSend,,{CTRL}{numpad1}, ahk_id %wowid3%
    ControlSend,,{CTRL}{numpad1}, ahk_id %wowid4%
    ControlSend,,{CTRL}{numpad1}, ahk_id %wowid5%
Return

#IfWinActive, World of Warcraft
numpad2::
	ControlSend,, {numpad2} , ahk_id %wowid1%
	ControlSend,, {numpad2} , ahk_id %wowid2%
	ControlSend,, {numpad2} , ahk_id %wowid3%
	ControlSend,, {numpad2} , ahk_id %wowid4%
	ControlSend,, {numpad2} , ahk_id %wowid5%
Return

#IfWinActive, World of Warcraft
numpad3::
	ControlSend,, {numpad3} , ahk_id %wowid1%
	ControlSend,, {numpad3} , ahk_id %wowid2%
	ControlSend,, {numpad3} , ahk_id %wowid3%
	ControlSend,, {numpad3} , ahk_id %wowid4%
	ControlSend,, {numpad3} , ahk_id %wowid5%
Return

#IfWinActive, World of Warcraft
numpad4::
	ControlSend,, {numpad4} , ahk_id %wowid1%
	ControlSend,, {numpad4} , ahk_id %wowid2%
	ControlSend,, {numpad4} , ahk_id %wowid3%
	ControlSend,, {numpad4} , ahk_id %wowid4%
	ControlSend,, {numpad4} , ahk_id %wowid5%
Return

#IfWinActive, World of Warcraft
numpad5::
	ControlSend,, {numpad5} , ahk_id %wowid1%
	ControlSend,, {numpad5} , ahk_id %wowid2%
	ControlSend,, {numpad5} , ahk_id %wowid3%
	ControlSend,, {numpad5} , ahk_id %wowid4%
	ControlSend,, {numpad5} , ahk_id %wowid5%
Return

#IfWinActive, World of Warcraft
numpad6::
	ControlSend,, {numpad6} , ahk_id %wowid1%
	ControlSend,, {numpad6} , ahk_id %wowid2%
	ControlSend,, {numpad6} , ahk_id %wowid3%
	ControlSend,, {numpad6} , ahk_id %wowid4%
	ControlSend,, {numpad6} , ahk_id %wowid5%
Return

#IfWinActive, World of Warcraft
numpad7::
	ControlSend,, {numpad7} , ahk_id %wowid1%
	ControlSend,, {numpad7} , ahk_id %wowid2%
	ControlSend,, {numpad7} , ahk_id %wowid3%
	ControlSend,, {numpad7} , ahk_id %wowid4%
	ControlSend,, {numpad7} , ahk_id %wowid5%
Return

#IfWinActive, World of Warcraft
numpad8::
	ControlSend,, {numpad8} , ahk_id %wowid1%
	ControlSend,, {numpad8} , ahk_id %wowid2%
	ControlSend,, {numpad8} , ahk_id %wowid3%
	ControlSend,, {numpad8} , ahk_id %wowid4%
	ControlSend,, {numpad8} , ahk_id %wowid5%
Return

#IfWinActive, World of Warcraft
numpad9::
	ControlSend,, {numpad9} , ahk_id %wowid1%
	ControlSend,, {numpad9} , ahk_id %wowid2%
	ControlSend,, {numpad9} , ahk_id %wowid3%
	ControlSend,, {numpad9} , ahk_id %wowid4%
	ControlSend,, {numpad9} , ahk_id %wowid5%
Return
