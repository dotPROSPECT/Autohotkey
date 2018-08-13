Lalt::
   Suspend Permit

   If A_IsSuspended

      SoundPlay C:\Users\.PROSPEKT\GeekZone\Gaming\Hotkey sounds\buttonclickrelease.wav

   Else

      SoundPlay C:\Users\.PROSPEKT\GeekZone\Gaming\Hotkey sounds\buttonrollover.wav

   Suspend

Return

LButton::
Loop
{
SetMouseDelay 12
Click
If (GetKeyState("LButton","P")=0)
Break
}