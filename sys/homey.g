; homey.g
; called to home the Y axis
;
G91               ; relative positioning
G1 H2 Z5 F6000    ; lift Z relative to current position
G1 H1 Y-305 F12000 ; move quickly to Y axis endstop and stop there (first pass)
G1 Y5 F12000       ; go back a few mm
G1 H1 Y-305 F360  ; move slowly to Y axis endstop once more (second pass)
G1 H2 Z-5 F6000   ; lower Z again
G90               ; absolute positioning
