(EXAMPLE TEST FOR TOOL BREAKAGE)
(5/24/2022 RMN V1.07)
(CNC GUY RYAN)
G00G17G40G80G90
G100G90G00G54X2.0Y3.0T1S2500
G43 Z.1 H1
//CODE TOOL PATH
//
//
//
///
//
///
//END OF CODE
G00G90Z1.0
G90
G91G28Z0M06
G90
G501 E.01(BREAKAGE PROGRAM)
(ALARM IF BROKEN)

G91G28Z0M05
G90
M01
N2(NEXT TOOL)
00G17G40G80G90
G100G90G00G54X2.0Y3.0T2S2500
G43 Z.1 H2
//CODE TOOL PATH
//
//
//
///
//
///
//END OF CODE
G00G90Z1.0
G90
G91G28Z0M06
G90
G501 E.2(BREAKAGE PROGRAM)
(ALARM IF BROKEN)
G91G28Z0M05
G90
M30