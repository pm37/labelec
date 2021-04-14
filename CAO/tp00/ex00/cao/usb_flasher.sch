EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L cao:Conn_01x06 J?
U 1 1 5FBF1B7B
P 1208 1313
AR Path="/5FBF1B7B" Ref="J?"  Part="1" 
AR Path="/5FC07496/5FBF1B7B" Ref="J1"  Part="1" 
AR Path="/5FC3E6C9/5FBF1B7B" Ref="J1"  Part="1" 
F 0 "J1" H 1208 1673 50  0000 C CNN
F 1 "Conn_01x06" H 848 1353 50  0000 C CNN
F 2 "cao:PinHeaderMale2.54mm1x6" H 1203 1673 50  0001 C CNN
F 3 "" H 1203 1673 50  0001 C CNN
	1    1208 1313
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5FBF3605
P 1368 1063
F 0 "#PWR0112" H 1368 913 50  0001 C CNN
F 1 "+5V" H 1383 1236 50  0000 C CNN
F 2 "" H 1368 1063 50  0001 C CNN
F 3 "" H 1368 1063 50  0001 C CNN
	1    1368 1063
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5FBF3981
P 1368 1163
F 0 "#PWR0113" H 1368 913 50  0001 C CNN
F 1 "GND" V 1373 1035 50  0000 R CNN
F 2 "" H 1368 1163 50  0001 C CNN
F 3 "" H 1368 1163 50  0001 C CNN
	1    1368 1163
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1368 1263 1628 1263
NoConn ~ 1368 1563
Text HLabel 1628 1263 2    50   Input ~ 0
tx
Text HLabel 1628 1363 2    50   Input ~ 0
rx
Text HLabel 1518 1463 2    50   Input ~ 0
reset
$Comp
L cao:Condensateur C3
U 1 1 5FC96D7B
P 1418 1463
F 0 "C3" V 1540 1577 50  0000 C CNN
F 1 "100nF" V 1537 1791 50  0000 C CNN
F 2 "cao:C" H 1218 1463 50  0001 C CNN
F 3 "" H 1218 1463 50  0001 C CNN
	1    1418 1463
	0    1    1    0   
$EndComp
Wire Wire Line
	1368 1363 1368 1319
Wire Wire Line
	1628 1363 1594 1363
Wire Wire Line
	1368 1319 1594 1319
Wire Wire Line
	1594 1319 1594 1363
$EndSCHEMATC
