; homey.g
; called to home the Y axis
;
M400
M569 P0 S1 D3 V38		; switch to StealthChop (D3) and set speed threshold about 100mm/s (V40)
M569 P1 S1 D3 V38		; switch to StealthChop (D3) and set speed threshold about 100mm/s (V40)
M913 X70 Y70			; drop motor current to 70%
M400 G91				; relative positioning
G1 H2 Z10 F1200			; lift Z relative to current position
G1 H1 Y-350 F3600		; move quickly to X axis endstop and stop there (first pass)
G1 H2 Y5 F3600			; go back a few mm
G1 H1 Y-350 F3600		; move slowly to X axis endstop once more (second pass)
G1 H2 Z-10 F600			; lower Z again
G90						; absolute positioning
M400
M913 X100 Y100			; return current to 100%
M569 P0 S1 D2			; restore back to SpreadCycle (D2)
M569 P1 S1 D2			; restore back to SpreadCycle (D2)
M400
