(TOOL SETTER QUICK CALIBRATION)
(BLUM/METORL)
(5/24/2022 RMN V1.07)
(CNC GUY RYAN)
G90
G10 L20 P47  X#701 Y#702 Z#704 (WORKOFFSET CENTER OF TOUCH PROBE)
G100 G90 G54.1 P47 T98 M6 X0.0 Y0.0(CAL TOOL )
#794=#11098 (TOOL LENGHT SAVE)
#143=-1.5(MAXIMUM TOOL LENGTH)
#142=98
#3004=0
G91G28Z0
N500
T#142
M6
M19
G53G0G90X#701Y#702
IF[#4EQ#0]GOTO1
G91G0X#4
N1IF[#5EQ#0]GOTO2
G91G0Y#5
N2
#140=11000+#142
G91G0Z#143
G91G31Z#700F#713
G91G0Z#703
G4P.1
G91G31Z-.175F1.5
G4P.4
#[#140]=#5023-#704
#3004=0
G91G28Z0
G90
(MATH)

IF[#794GT#11098]GOTO100
IF[#794LT#11098]GOTO200
IF[#794EQ#11098]GOTO300

N100(GREATER THAN)
#795=#11098-#794
#704=[#704+#795]
GOTO500

N200(LESS THAN)
#795=#794-#11098
#704=[#704-#795]
GOTO500

N300
M30
