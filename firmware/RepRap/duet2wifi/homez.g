; homez.g
; called to home the Z axis
;
G90               ; relative positioning
G1 H2 Z15 F9000    ; lift Z relative to current position
G1 X150 Y150       ;move head in bed so that probe can detect it
G30               ; use z probe
;G1 H1 Z-355 F1800 ; move Z down until the endstop is triggered
;G92 Z0            ; set Z position to axis minimum (you may want to adjust this)

; Uncomment the following lines to lift Z after probing
;G91              ; relative positioning
;G1 Z5 F150       ; lift Z relative to current position
;G90              ; absolute positioning
