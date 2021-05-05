#NoEnv 

; Parameters
right_default_value_top := 0xFFFFFF3D                                 ; My personnal right top screen pos
left_default_value_top := 0xFFFFFF35                                  ; My personnal left top screen pos
; In my case, the difference is 399px :  
pixel_offset_top_to_bottom := 399                                     ; My personnal offset
   
; right_default_value_bottom := 0xFFFFFDAE                            ; What I want
; left_default_value_bottom := 0xFFFFFDA6                             ; What I want
right_offset := right_default_value_top - pixel_offset_top_to_bottom  ; right offset
left_offset := left_default_value_top - pixel_offset_top_to_bottom    ; left offset
right_default_value_bottom := int2hex(right_offset)                   ; convert into hex
left_default_value_bottom := int2hex(left_offset)                     ; convert into hex

; Uncomment those lines to set constants values.
; RegWrite, REG_DWORD, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Configuration\AUS24B1#ASNUrOZpntPd_27_07E0_4D+IVM560C11005M1A00939_29_07DB_AB+VSCBB3116843009_23_07E0_0F^270E278CAA0F044117752A8D9E892BD5\01, Position.cy, %right_default_value_bottom%
; RegWrite, REG_DWORD, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Configuration\AUS24B1#ASNUrOZpntPd_27_07E0_4D+IVM560C11005M1A00939_29_07DB_AB+VSCBB3116843009_23_07E0_0F^270E278CAA0F044117752A8D9E892BD5\02, Position.cy, %left_default_value_bottom%


;Comment those lines when setting constants.
RegRead, current_pos_monitor_left, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Configuration\AUS24B1#ASNUrOZpntPd_27_07E0_4D+IVM560C11005M1A00939_29_07DB_AB+VSCBB3116843009_23_07E0_0F^270E278CAA0F044117752A8D9E892BD5\02, Position.cy
if (current_pos_monitor_left = left_default_value_top)
{
    RegWrite, REG_DWORD, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Configuration\AUS24B1#ASNUrOZpntPd_27_07E0_4D+IVM560C11005M1A00939_29_07DB_AB+VSCBB3116843009_23_07E0_0F^270E278CAA0F044117752A8D9E892BD5\01, Position.cy, %right_default_value_bottom%
    RegWrite, REG_DWORD, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Configuration\AUS24B1#ASNUrOZpntPd_27_07E0_4D+IVM560C11005M1A00939_29_07DB_AB+VSCBB3116843009_23_07E0_0F^270E278CAA0F044117752A8D9E892BD5\02, Position.cy, %left_default_value_bottom%
    MsgBox,, Monitors Switch Pos => BOTTOM, Relaunch one screen to apply!
}
Else
{
    RegWrite, REG_DWORD, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Configuration\AUS24B1#ASNUrOZpntPd_27_07E0_4D+IVM560C11005M1A00939_29_07DB_AB+VSCBB3116843009_23_07E0_0F^270E278CAA0F044117752A8D9E892BD5\01, Position.cy, %right_default_value_top%
    RegWrite, REG_DWORD, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Configuration\AUS24B1#ASNUrOZpntPd_27_07E0_4D+IVM560C11005M1A00939_29_07DB_AB+VSCBB3116843009_23_07E0_0F^270E278CAA0F044117752A8D9E892BD5\02, Position.cy, %left_default_value_top%
    MsgBox,, Monitors Switch Pos => TOP, Relaunch one screen to apply!
}

int2hex(int)
{
    ; Code from jNizM
    ; to convert int to hex
    HEX_INT := 8
    while (HEX_INT--)
    {
        n := (int >> (HEX_INT * 4)) & 0xf
        h .= n > 9 ? chr(0x37 + n) : n
        if (HEX_INT == 0 && HEX_INT//2 == 0)
            h .= " "
    }
    return "0x" h
}
