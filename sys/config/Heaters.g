; 加热器设置
M308 S0 P"temp0" Y"thermistor" T100000 B3950            ; 配置传感器 0 as thermistor on pin temp0
M950 H0 C"out1" T0                                      ; 创建 bed 加热器输出开启 out1 并将其映射到传感器 0
M307 H0 B1 S1.00                                        ; enable 热床加热器的bang-bang模式并设置PWM限制
M140 H0                                                 ; map heated bed to heater将热床映射到加热器 0
M143 H0 S120                                            ; 设置加热器0 至 120C的温度限制
M308 S1 P"121.temp0" Y"thermistor" T100000 B3950 ; 配置传感器 1 as thermistor on pin 121.temp0
M950 H1 C"121.out0" T1                           ; 创建 nozzle 加热器输出开启 121.out0 并将其映射到传感器 1
M307 H1 B0 R3.168 C219.8:154.6 D7.86 S1.00 V22.7                                 ; 禁用加热器的bang bang模式  并设置PWM限制
M143 H1 S280                                     ; 设置加热器1 至 280C的温度限制