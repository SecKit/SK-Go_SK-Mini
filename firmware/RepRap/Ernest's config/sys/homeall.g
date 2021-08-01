; homeall.g
; called to home all axes
;
M400
M569 P0 S1 D3 V38		; switch to StealthChop (D3) and set speed threshold about 100mm/s (V40)
M569 P1 S1 D3 V38		; switch to StealthChop (D3) and set speed threshold about 100mm/s (V40)
M913 X50 Y50			; drop motor current to 70%
M400 G91				; relative positioning
G1 H2 Z10 F1200			; lift Z relative to current position
;-------------------------------------------
; Home X
;-------------------------------------------
G1 H1 X-350 F5400		; move quickly to X axis endstop and stop there (first pass)
G1 H2 X5 F5400			; go back a few mm
G1 H1 X-350 F3000		; move slowly to X axis endstop once more (second pass)
;-------------------------------------------
; Home Y
;-------------------------------------------
G1 H1 Y-350 F5400		; move quickly to X axis endstop and stop there (first pass)
G1 H2 Y5 F5400			; go back a few mm
G1 H1 Y-350 F3000		; move slowly to X axis endstop once more (second pass)
;-------------------------------------------
G1 H2 Z-1 F600			; lower Z again
G90						; absolute positioning
M400
M913 X100 Y100			; return current to 100%
M569 P0 S1 D2			; restore back to SpreadCycle (D2)
M569 P1 S1 D2			; restore back to SpreadCycle (D2)
M400
