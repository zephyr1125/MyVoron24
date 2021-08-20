; homeall.g
; called to home all axes
M561    ;取消床网补偿
G91                     ; relative positioning
G1 H2 Z15 F6000          ; lift Z relative to current position
G1 H1 X-305 F12000            ; home X axis
G1 H1 Y-305             ; home Y axis
G1 X5 Y5 F12000          ; go back a few mm
G1 H1 X-305 F360        ; move slowly to X axis endstop once more (second pass)
G1 H1 Y-305             ; then move slowly to Y axis endstop
G90                     ; absolute positioning
M98 P"/sys/config/Z_homing_sensor_coordinates.g"
G91
G1 H1 Z-300 F400
G1 Z3.5 F400
G1 H1 Z-10 F150
M98 P"/sys/config/Z_offset_homez.g"                    ; home Z by probing the bed
G90
G0 X0 Y0 Z15 F12000
; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 Z5 F100             ; lift Z relative to current position
;G90                    ; absolute positioning


