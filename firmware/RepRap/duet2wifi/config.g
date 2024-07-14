; Configuration file for Duet WiFi (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.1.3 on Sat Jun 27 2020 17:12:55 GMT+0200 (South Africa Standard Time)

; General preferences
G90                                            ; send absolute coordinates...
M83                                            ; ...but relative extruder moves
M550 P"SKGo"                                   ; set printer name

M667 S1                                        ; select CoreXY mode


; Network
M552 S1                                        ; enable network
M586 P0 S1                                     ; enable HTTP
M586 P1 S0                                     ; disable FTP
M586 P2 S0                                     ; disable Telnet

; Drives
M569 P0 S1                                     ; physical drive 0 goes forwards
M569 P1 S1                                     ; physical drive 1 goes forwards
M569 P2 S0                                     ; physical drive 2 goes backwards
M569 P3 S0                                     ; physical drive 3 goes backwards
M584 X0 Y1 Z2 E3                               ; set drive mapping
M350 X16 Y16 Z16 E16 I1                        ; configure microstepping with interpolation
M92 X100.00 Y100.00 Z400.00 E430               ; set steps per mm
M566 X600.00 Y600.00 Z18 E3000.00            ; set maximum instantaneous speed changes (mm/min)
M203 X6000.00 Y6000.00 Z600.00 E1200.00      ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z20.00 E3000.00        ; set accelerations (mm/s^2)
M906 X800 Y800 Z800 E800 I30                   ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                        ; Set idle timeout

; Axis Limits
M208 X0 Y-10 Z-1 S1                               ; set axis minima
M208 X300 Y300 Z350 S0                         ; set axis maxima

; Endstops
M574 X1 Y1 S3                                     ; configure sensorless endstop for low end on X and Y
M574 Z1 S2
M591 P2 C"e0_stop" S1  ; filament monitor connected to E0_stop

; Z-Probe
; M558 P9 C"^zprobe.in" H6 F240 T6000
; M950 S0 C"exp.heater3"
; G31 X5.1 Y59.3 Z3.73 P25

; Z offset. Increase to LOWER, decrease to RAISE
M558 P5 C"!zprobe.in" H6 F160 T6000 A3
G31 X-8 Y75 Z4.6 P25

M557 X20:280 Y80:280 P5                       ; define mesh grid

;Bed Screws
;https://duet3d.dozuki.com/Wiki/Using_the_manual_bed_levelling_assistant
M671 X-10:310:170 Y-310:-310:5 P0.5 ; point1 (-10,-310), point2 (310,-310), point3 (170,5)

; Heaters
M308 S0 P"bedtemp" Y"thermistor" T100000 B4138 ; configure sensor 0 as thermistor on pin bedtemp
M950 H0 C"bedheat" T0                          ; create bed heater output on bedheat and map it to sensor 0
M307 H0 B1 S1.00                               ; enable bang-bang mode for the bed heater and set PWM limit
M140 H0                                        ; map heated bed to heater 0
M143 H0 S90                                   ; set temperature limit for heater 0 to 90C, this should prevent damage to the magnetics
M308 S1 P"e0temp" Y"thermistor" T100000 B4138  ; configure sensor 1 as thermistor on pin e0temp
M950 H1 C"e0heat" T1                           ; create nozzle heater output on e0heat and map it to sensor 1
M307 H1 B0 S1.00                               ; disable bang-bang mode for heater  and set PWM limit


; Fans
M950 F0 C"fan0" Q500                           ; create fan 0 on pin fan0 and set its frequency
M106 P0 S0 H-1                                 ; set fan 0 value. Thermostatic control is turned off

M950 F1 C"fan1" Q500                           ; hotend fan
M106 P1 T45 H1

; Pressure advance
;M572 D0 S0.05

; Tools
M563 P0 D0 H1 F0                               ; define tool 0
G10 P0 X0 Y0 Z0                                ; set tool 0 axis offsets
G10 P0 R0 S0                                   ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined

M501

T0