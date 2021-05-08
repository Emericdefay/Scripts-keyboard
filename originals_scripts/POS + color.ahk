MouseGetPos, xpos, ypos 
MsgBox, The cursor is at X%xpos% Y%ypos%. 

; This example allows you to move the mouse around to see
; the title of the window currently under the cursor:
#Persistent
SetTimer, WatchCursor, 100
return

WatchCursor:
MouseGetPos, , , id, control
MouseGetPos, xpos, ypos 

PixelGetColor, color, xpos, ypos
ToolTip, %xpos% %ypos% color : %color%
return