; homez.g
; called to home the Z axis
;
; generated by RepRapFirmware Configuration Tool v3.2.2 on Fri Feb 05 2021 16:05:05 GMT-0600 (Central Standard Time)
G91               ; relative positioning
G1 H2 Z5 F6000    ; lift Z relative to current position
G90               ; absolute positioning
G1 X150 Y150 F6000
G30               ; home Z by probing the bed
G91              ; relative positioning
G1 Z1 F1200       ; lift Z relative to current position
G90              ; absolute positioning
