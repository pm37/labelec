EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1400 1400 0    50   Input ~ 0
input
$Comp
L cao:Resistor R6
U 1 1 5FBEA2CB
P 2210 1400
AR Path="/5FC062DE/5FBEA2CB" Ref="R6"  Part="1" 
AR Path="/5FC06789/5FBEA2CB" Ref="R5"  Part="1" 
AR Path="/5FC06B3D/5FBEA2CB" Ref="R4"  Part="1" 
AR Path="/5FC06B3F/5FBEA2CB" Ref="R3"  Part="1" 
AR Path="/5FBEA2CB" Ref="R6"  Part="1" 
AR Path="/5FC3E0B6/5FBEA2CB" Ref="R6"  Part="1" 
AR Path="/5FC632E9/5FBEA2CB" Ref="R3"  Part="1" 
AR Path="/5FC634C5/5FBEA2CB" Ref="R4"  Part="1" 
AR Path="/5FC6671E/5FBEA2CB" Ref="R5"  Part="1" 
F 0 "R3" H 2210 1595 50  0000 C CNN
F 1 "330R" H 2210 1504 50  0000 C CNN
F 2 "cao:R_0603" H 2210 1550 50  0001 C CNN
F 3 "" H 2210 1550 50  0001 C CNN
	1    2210 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2330 1400 2430 1400
$Comp
L cao:LED D4
U 1 1 5FBE8C5B
P 1680 1400
AR Path="/5FC062DE/5FBE8C5B" Ref="D4"  Part="1" 
AR Path="/5FC06789/5FBE8C5B" Ref="D3"  Part="1" 
AR Path="/5FC06B3D/5FBE8C5B" Ref="D2"  Part="1" 
AR Path="/5FC06B3F/5FBE8C5B" Ref="D1"  Part="1" 
AR Path="/5FBE8C5B" Ref="D4"  Part="1" 
AR Path="/5FC3E0B6/5FBE8C5B" Ref="D4"  Part="1" 
AR Path="/5FC632E9/5FBE8C5B" Ref="D1"  Part="1" 
AR Path="/5FC634C5/5FBE8C5B" Ref="D2"  Part="1" 
AR Path="/5FC6671E/5FBE8C5B" Ref="D3"  Part="1" 
F 0 "D1" H 1640 1510 50  0000 L CNN
F 1 "led" H 1848 1353 50  0001 L CNN
F 2 "cao:LED" H 1675 1521 50  0001 C CNN
F 3 "" H 1675 1521 50  0001 C CNN
	1    1680 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 1400 2090 1400
Wire Wire Line
	2430 1400 2430 1500
$Comp
L power:GND #PWR0112
U 1 1 5FBEB5CB
P 2430 1500
AR Path="/5FC062DE/5FBEB5CB" Ref="#PWR0112"  Part="1" 
AR Path="/5FC06789/5FBEB5CB" Ref="#PWR0113"  Part="1" 
AR Path="/5FC06B3D/5FBEB5CB" Ref="#PWR0114"  Part="1" 
AR Path="/5FC06B3F/5FBEB5CB" Ref="#PWR0121"  Part="1" 
AR Path="/5FC3E0B6/5FBEB5CB" Ref="#PWR0111"  Part="1" 
AR Path="/5FC632E9/5FBEB5CB" Ref="#PWR0118"  Part="1" 
AR Path="/5FC634C5/5FBEB5CB" Ref="#PWR0119"  Part="1" 
AR Path="/5FC6671E/5FBEB5CB" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0118" H 2430 1250 50  0001 C CNN
F 1 "GND" H 2435 1327 50  0000 C CNN
F 2 "" H 2430 1500 50  0001 C CNN
F 3 "" H 2430 1500 50  0001 C CNN
	1    2430 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1400 1575 1400
$EndSCHEMATC
