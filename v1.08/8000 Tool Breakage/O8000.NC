(TOOL BREAKAGE DETECTION SUB PROGRAM)
(6/01/2022 RMN V1.08)
(CNC GUY RYAN)
#712=#8 (TOOL BREAKAGE CHECK  TOLERANCE)
#705=#3700 (CURRENT TOOL)
#706=#[11000+#705] (LENGTH OFFSET)
#707=#[10000+#705] (LENGTH WEAR OFFSET)
#708=[#707+#706] (LENGTH PLUS WEAR)


G49G0G53Z18.8976H00
G53G0G90X#701Y#702
G0G53Z[#704+#708+1.]
G91G31Z-.900F400.
G91G31Z-.150F8.0

#709=#5023
#710=[#709-#704]

IF[#710GT#708]GOTO100
IF[#710LT#708]GOTO101

N100
#711=[#710-#708]
IF[#711GT#712]GOTO3000
GOTO102

N101
#711=[#708-#710]
IF[#711GT#712]GOTO3001
GOTO102


N102
G0 Z.5

G90G53G0Z18.8976
M99


N3000
#3000=1 (TOOL PULL OUT)


N3001
#3000=1 (TOOL BROKEN)
