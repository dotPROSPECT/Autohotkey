; Author: .THORNE

#Persistent
SetCapsLockState, AlwaysOff


F1::
   Suspend Permit

   If A_IsSuspended

      SoundPlay %UTILITIES%\AutoHotkey\Hotkey sounds\buttonclickrelease.wav

   Else

      SoundPlay %UTILITIES%\AutoHotkey\Hotkey sounds\buttonrollover.wav

   Suspend

Return


; ==================<<<••••>>>==================


          ; [ Custom keyboard layout ]


; LAlt::LCtrl
; LCtrl::LAlt
RAlt::CapsLock

; Switch [ with { and ] with }

:*?:[::
    SendInput, {Shift Down}`[{Shift up}
    return

:*?:]::
    SendInput, {Shift Down}`]{Shift Up}
    return

:*?:{::
    SendInput, `[
    return

:*?:}::
    SendInput, `]
    return


; ==================<<<••••>>>==================


              ; [ Layer setup ]


; Navigation

CapsLock & i::Send {Blind}{up}

CapsLock & j::Send {Blind}{left}

CapsLock & k::Send {Blind}{down}

CapsLock & l::Send {Blind}{right}

CapsLock & h::Send {Home}

CapsLock & n::Send {End}

; CapsLock & u::Send {PgUp}

; CapsLock & o::Send {PgDn}

CapsLock & BS::Send {Del}

; CapsLock & z::Send {XButton1} ; the 'back' button on a mouse

; CapsLock & c::Send {XButton2} ; the 'forward' button on a mouse

;-------------------------------------

; Close and reload application

CapsLock & x::Send !{F4}

CapsLock & r::Send ^{F5}

;-------------------------------------

; Rename

CapsLock & 2:: Send {F2}

;-------------------------------------

; Maps Ctrl+Win+Left & Right to Ctrl+y & Ctrl+x


CapsLock & 1::Send {LCtrl down}{LWin down}{Left down}{LCtrl up}{LWin up}{Left up}

CapsLock & 3::Send {LCtrl down}{LWin down}{Right down}{LCtrl up}{LWin up}{Right up}

;-------------------------------------

; Flux brightness up and down

CapsLock & e::Send !{PgUp}

CapsLock & q::Send !{PgDn}

;-------------------------------------

; Media Controls

CapsLock & f::Send {Media_Play_Pause}

CapsLock & w::Send {Volume_Up}

CapsLock & a::Send {Media_Prev}

CapsLock & s::Send {Volume_Down}

CapsLock & d::Send {Media_Next}

;-------------------------------------

; Context menu

CapsLock & g::Send {AppsKey}

;-------------------------------------

; Simple AltTab

CapsLock & v::AltTab
CapsLock & b::ShiftAltTab

;-------------------------------------

; Mouse move

CapsLock & 0::
While (GetKeyState("0", "P"))
{
    MouseMove, 0, -80, 2, R
	sleep 0
}
Return

CapsLock & p::
While (GetKeyState("p", "P"))
{
    MouseMove, 0, 80, 2, R
	sleep 0
}
Return

CapsLock & 9::
While (GetKeyState("9", "P"))
{
    MouseMove, -80, 0, 2, R
	sleep 0
}
Return

CapsLock & -::
While (GetKeyState("-", "P"))
{
    MouseMove, 80, 0, 2, R
	sleep 0
}
Return

;-------------------------------------

; Mouse click

CapsLock & o::
    Send {LButton}
Return

CapsLock & \::
    Send {RButton}
Return

;-------------------------------------

; Mouse scroll

CapsLock & {::
While (GetKeyState("{", "P"))
{
	send {WheelUp}
	;send ^{Up}
	sleep 21
}
Return

CapsLock & }::
While (GetKeyState("}", "P"))
{
	send {WheelDown}
	;send ^{Down}
	sleep 21
}
Return

;-------------------------------------

; Arctic Terminal

CapsLock & c::
if WinExist("ahk_exe WindowsTerminal.exe") {
    WinGetTitle, WinTitle, ahk_pid %NewPID%
    WinGet MX, MinMax, %WinTitle%
    if (MX = -1) {
        ; WinActivate, ahk_exe WindowsTerminal.exe
        WinRestore %WinTitle%
    } else if (MX = 0) {
        WinMinimize %WinTitle%
    }
} else Run wt.exe, %USERPROFILE%
return

RShift & c::

global windowName
global X
global Y
global begWidth
global begHeight

WinGetTitle, windowName, A

WinGetPos, X, Y, begWidth, begHeight, %windowName%

CenterWindow(windowTitleVariable)
{
    WinGetPos,,, Width, Height, %windowTitleVariable%
    WinMove, %windowTitleVariable%,, (A_ScreenWidth/2)-(1155/2), (A_ScreenHeight/2)-(650/2), 1155, 650
}

CenterWindow(windowName)

return


RShift & b::

WinMove, %windowName%,, X, Y, begWidth, begHeight

return