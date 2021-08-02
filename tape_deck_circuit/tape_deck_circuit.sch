EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
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
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 6105AC23
P 2200 3950
F 0 "A?" H 1900 5200 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 1900 5100 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 2200 3950 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2200 3950 50  0001 C CNN
	1    2200 3950
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 6105B4FD
P 5650 2500
F 0 "RV1" V 5550 2500 50  0000 C CNN
F 1 "10k" V 5650 2500 50  0000 C CNN
F 2 "" H 5650 2500 50  0001 C CNN
F 3 "~" H 5650 2500 50  0001 C CNN
	1    5650 2500
	0    -1   1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 6105BC26
P 9200 4500
F 0 "J?" H 9200 4850 50  0000 C CNN
F 1 "SPEED POT" H 9200 4750 50  0000 C CNN
F 2 "" H 9200 4500 50  0001 C CNN
F 3 "~" H 9200 4500 50  0001 C CNN
	1    9200 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 6105C0A4
P 6150 2500
F 0 "RV2" V 6050 2500 50  0000 C CNN
F 1 "10k" V 6150 2500 50  0000 C CNN
F 2 "" H 6150 2500 50  0001 C CNN
F 3 "~" H 6150 2500 50  0001 C CNN
	1    6150 2500
	0    -1   1    0   
$EndComp
Wire Wire Line
	6000 2500 5900 2500
Wire Wire Line
	6150 2650 6150 2750
Wire Wire Line
	6150 2750 5900 2750
Wire Wire Line
	5900 2750 5900 2500
Connection ~ 5900 2500
Wire Wire Line
	5900 2500 5800 2500
Wire Wire Line
	5650 2650 5650 2750
Text Notes 5500 2300 0    50   ~ 0
COARSE
Text Notes 6050 2300 0    50   ~ 0
FINE
$Comp
L midi_tape_deck:SW_4PDT SW?
U 1 1 610659E4
P 8300 4700
F 0 "SW?" H 8300 5585 50  0000 C CNN
F 1 "SW_4PDT" H 8300 5494 50  0000 C CNN
F 2 "" H 8300 5300 50  0001 C CNN
F 3 "~" H 8300 5300 50  0001 C CNN
	1    8300 4700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610686EB
P 9850 150
F 0 "#PWR?" H 9850 -100 50  0001 C CNN
F 1 "GND" H 9855 -23 50  0000 C CNN
F 2 "" H 9850 150 50  0001 C CNN
F 3 "" H 9850 150 50  0001 C CNN
	1    9850 150 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 610689AA
P 9900 1100
F 0 "#PWR?" H 9900 950 50  0001 C CNN
F 1 "+5V" H 9915 1273 50  0000 C CNN
F 2 "" H 9900 1100 50  0001 C CNN
F 3 "" H 9900 1100 50  0001 C CNN
	1    9900 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 61068D81
P 10250 700
F 0 "#PWR?" H 10250 550 50  0001 C CNN
F 1 "+15V" H 10265 873 50  0000 C CNN
F 2 "" H 10250 700 50  0001 C CNN
F 3 "" H 10250 700 50  0001 C CNN
	1    10250 700 
	1    0    0    -1  
$EndComp
$Comp
L midi_tape_deck:MCP41HVx1 U?
U 1 1 6108BB45
P 5850 4450
F 0 "U?" H 5500 5100 50  0000 C CNN
F 1 "MCP41HVx1" H 5500 5000 50  0000 C CNN
F 2 "" H 5650 4600 50  0001 C CNN
F 3 "" H 5650 4600 50  0001 C CNN
	1    5850 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6108CDDD
P 2000 2850
F 0 "#PWR?" H 2000 2700 50  0001 C CNN
F 1 "+5V" H 2015 3023 50  0000 C CNN
F 2 "" H 2000 2850 50  0001 C CNN
F 3 "" H 2000 2850 50  0001 C CNN
	1    2000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2850 2000 2950
$Comp
L power:GND #PWR?
U 1 1 6108D3AA
P 2200 5050
F 0 "#PWR?" H 2200 4800 50  0001 C CNN
F 1 "GND" H 2205 4877 50  0000 C CNN
F 2 "" H 2200 5050 50  0001 C CNN
F 3 "" H 2200 5050 50  0001 C CNN
	1    2200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4950 2200 4950
Wire Wire Line
	2200 4950 2200 5050
Connection ~ 2200 4950
NoConn ~ 2100 2950
NoConn ~ 2300 2950
NoConn ~ 1700 3350
NoConn ~ 1700 3450
NoConn ~ 1700 3750
NoConn ~ 1700 4550
NoConn ~ 1700 4650
Text Label 3200 4650 2    50   ~ 0
SCK
Wire Wire Line
	3200 4650 2700 4650
Text Label 3200 4550 2    50   ~ 0
MISO
Text Label 3200 4450 2    50   ~ 0
MOSI
Wire Wire Line
	3200 4550 2700 4550
Wire Wire Line
	3200 4450 2700 4450
Text Label 4700 4100 0    50   ~ 0
SCK
Text Label 4700 4200 0    50   ~ 0
MOSI
Text Label 4700 4300 0    50   ~ 0
MISO
Wire Wire Line
	4700 4100 5200 4100
Wire Wire Line
	5200 4200 4700 4200
Wire Wire Line
	4700 4300 5200 4300
$Comp
L power:GND #PWR?
U 1 1 61091954
P 5800 5100
F 0 "#PWR?" H 5800 4850 50  0001 C CNN
F 1 "GND" H 5805 4927 50  0000 C CNN
F 2 "" H 5800 5100 50  0001 C CNN
F 3 "" H 5800 5100 50  0001 C CNN
	1    5800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4700 5100 4700
Wire Wire Line
	5100 4700 5100 5000
Wire Wire Line
	5100 5000 5800 5000
Wire Wire Line
	5800 5100 5800 5000
Connection ~ 5800 5000
Wire Wire Line
	5200 4400 5100 4400
Wire Wire Line
	5100 4400 5100 4700
Connection ~ 5100 4700
$Comp
L power:+15V #PWR?
U 1 1 610932D2
P 6600 4100
F 0 "#PWR?" H 6600 3950 50  0001 C CNN
F 1 "+15V" H 6615 4273 50  0000 C CNN
F 2 "" H 6600 4100 50  0001 C CNN
F 3 "" H 6600 4100 50  0001 C CNN
	1    6600 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6109373F
P 6600 4200
F 0 "#PWR?" H 6600 3950 50  0001 C CNN
F 1 "GND" H 6605 4027 50  0000 C CNN
F 2 "" H 6600 4200 50  0001 C CNN
F 3 "" H 6600 4200 50  0001 C CNN
	1    6600 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 4100 6500 4100
Wire Wire Line
	6500 4200 6600 4200
$Comp
L power:+5V #PWR?
U 1 1 61095D7F
P 5850 3700
F 0 "#PWR?" H 5850 3550 50  0001 C CNN
F 1 "+5V" H 5865 3873 50  0000 C CNN
F 2 "" H 5850 3700 50  0001 C CNN
F 3 "" H 5850 3700 50  0001 C CNN
	1    5850 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3700 5850 3750
$Comp
L Device:C_Small C?
U 1 1 61096AE9
P 6150 3750
F 0 "C?" V 5921 3750 50  0000 C CNN
F 1 "0.1uF" V 6012 3750 50  0000 C CNN
F 2 "" H 6150 3750 50  0001 C CNN
F 3 "~" H 6150 3750 50  0001 C CNN
	1    6150 3750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610977EC
P 6350 3750
F 0 "#PWR?" H 6350 3500 50  0001 C CNN
F 1 "GND" H 6355 3577 50  0000 C CNN
F 2 "" H 6350 3750 50  0001 C CNN
F 3 "" H 6350 3750 50  0001 C CNN
	1    6350 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 3750 6250 3750
Wire Wire Line
	6050 3750 5850 3750
Connection ~ 5850 3750
Wire Wire Line
	5850 3750 5850 3800
Text Label 3200 3550 2    50   ~ 0
INT0
Text Label 3200 3650 2    50   ~ 0
LEARN
Wire Wire Line
	3200 3550 2700 3550
Wire Wire Line
	3200 3650 2700 3650
Text Label 3700 1350 2    50   ~ 0
MIDI_IN
Wire Wire Line
	3200 3350 2700 3350
Text Label 3200 3450 2    50   ~ 0
MIDI_OUT
Wire Wire Line
	3200 3450 2700 3450
NoConn ~ 2700 4350
Text Label 3200 4150 2    50   ~ 0
~LATCH
Wire Wire Line
	2700 4150 3200 4150
Text Label 4700 4600 0    50   ~ 0
~LATCH
Wire Wire Line
	4700 4600 5200 4600
Text Label 1200 3950 0    50   ~ 0
PLAY
Text Label 1200 4050 0    50   ~ 0
STOP
$Comp
L Connector:DIN-5_180degree J?
U 1 1 610A8DF9
P 50 1050
F 0 "J?" H 50  683 50  0000 C CNN
F 1 "DIN-5_180degree" H 50  774 50  0000 C CNN
F 2 "" H 50  1050 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 50  1050 50  0001 C CNN
	1    50   1050
	-1   0    0    1   
$EndComp
NoConn ~ -250 1050
NoConn ~ 350  1050
$Comp
L Isolator:6N138 U?
U 1 1 610AAE64
P 2900 1250
F 0 "U?" H 2900 1717 50  0000 C CNN
F 1 "6N138" H 2900 1626 50  0000 C CNN
F 2 "" H 3190 950 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/HCPL2731-D.pdf" H 3190 950 50  0001 C CNN
	1    2900 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D?
U 1 1 610ABF83
P 2250 1250
F 0 "D?" V 2204 1320 50  0000 L CNN
F 1 "1N914" V 2295 1320 50  0000 L CNN
F 2 "" V 2250 1250 50  0001 C CNN
F 3 "~" V 2250 1250 50  0001 C CNN
	1    2250 1250
	0    1    1    0   
$EndComp
NoConn ~ 3200 1150
$Comp
L power:GND #PWR?
U 1 1 610AE617
P 3300 1450
F 0 "#PWR?" H 3300 1200 50  0001 C CNN
F 1 "GND" H 3305 1277 50  0000 C CNN
F 2 "" H 3300 1450 50  0001 C CNN
F 3 "" H 3300 1450 50  0001 C CNN
	1    3300 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 610AEAAD
P 3300 1050
F 0 "#PWR?" H 3300 900 50  0001 C CNN
F 1 "+5V" H 3315 1223 50  0000 C CNN
F 2 "" H 3300 1050 50  0001 C CNN
F 3 "" H 3300 1050 50  0001 C CNN
	1    3300 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1450 3300 1450
Wire Wire Line
	3300 1050 3200 1050
Wire Wire Line
	3700 1350 3200 1350
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 610B3218
P 1100 1250
F 0 "J?" H 1018 1567 50  0000 C CNN
F 1 "MIDI IN" H 1018 1476 50  0000 C CNN
F 2 "" H 1100 1250 50  0001 C CNN
F 3 "~" H 1100 1250 50  0001 C CNN
	1    1100 1250
	-1   0    0    -1  
$EndComp
Text Label 1400 1150 0    50   ~ 0
PIN4
Text Label 1400 1250 0    50   ~ 0
PIN5
Text Label 1400 1350 0    50   ~ 0
PIN2
Text Label 1400 1450 0    50   ~ 0
SHELL
$Comp
L Device:R R?
U 1 1 610B477F
P 1950 1150
F 0 "R?" V 1850 1150 50  0000 C CNN
F 1 "220" V 1950 1150 50  0000 C CNN
F 2 "" V 1880 1150 50  0001 C CNN
F 3 "~" H 1950 1150 50  0001 C CNN
	1    1950 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 1150 1800 1150
Wire Wire Line
	2100 1150 2250 1150
Connection ~ 2250 1150
Wire Wire Line
	2250 1150 2600 1150
Wire Wire Line
	2600 1350 2250 1350
$Comp
L Device:C_Small C?
U 1 1 610B9DD2
P 1650 1650
F 0 "C?" H 1559 1604 50  0000 R CNN
F 1 "0.1uF" H 1559 1695 50  0000 R CNN
F 2 "" H 1650 1650 50  0001 C CNN
F 3 "~" H 1650 1650 50  0001 C CNN
	1    1650 1650
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 610BA1D9
P 1850 1650
F 0 "C?" H 1758 1604 50  0000 R CNN
F 1 "0.1uF" H 1758 1695 50  0000 R CNN
F 2 "" H 1850 1650 50  0001 C CNN
F 3 "~" H 1850 1650 50  0001 C CNN
	1    1850 1650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610D6607
P 1750 1850
F 0 "#PWR?" H 1750 1600 50  0001 C CNN
F 1 "GND" H 1755 1677 50  0000 C CNN
F 2 "" H 1750 1850 50  0001 C CNN
F 3 "" H 1750 1850 50  0001 C CNN
	1    1750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1350 1850 1350
Wire Wire Line
	1850 1350 1850 1550
Wire Wire Line
	1650 1450 1650 1550
Wire Wire Line
	1300 1250 2050 1250
Wire Wire Line
	2050 1250 2050 1350
Wire Wire Line
	2050 1350 2250 1350
Connection ~ 2250 1350
Wire Wire Line
	1850 1850 1750 1850
Connection ~ 1750 1850
Wire Wire Line
	1750 1850 1650 1850
Wire Wire Line
	1300 1450 1650 1450
Wire Wire Line
	1850 1750 1850 1850
Wire Wire Line
	1650 1750 1650 1850
Text Label 3200 3350 2    50   ~ 0
MIDI_IN
Wire Wire Line
	8500 4500 9000 4500
Wire Wire Line
	9000 4400 8750 4400
Wire Wire Line
	8750 4400 8750 4100
Wire Wire Line
	8750 4100 8500 4100
Wire Wire Line
	9000 4600 8750 4600
Wire Wire Line
	8750 4600 8750 4900
Wire Wire Line
	8750 4900 8500 4900
Text Label 7000 4400 2    50   ~ 0
DPOT_A
Text Label 7000 4550 2    50   ~ 0
DPOT_W
Text Label 7000 4700 2    50   ~ 0
DPOT_B
Wire Wire Line
	7000 4700 6500 4700
Wire Wire Line
	6500 4550 7000 4550
Wire Wire Line
	7000 4400 6500 4400
Text Label 7600 4000 0    50   ~ 0
DPOT_A
Text Label 7600 4400 0    50   ~ 0
DPOT_W
Text Label 7600 4800 0    50   ~ 0
DPOT_B
Wire Wire Line
	7600 4000 8100 4000
Wire Wire Line
	8100 4400 7600 4400
Wire Wire Line
	7600 4800 8100 4800
Text Label 5000 2500 0    50   ~ 0
MPOT_A
Text Label 5000 2750 0    50   ~ 0
MPOT_W
Text Label 6800 2500 2    50   ~ 0
MPOT_B
Wire Wire Line
	5000 2500 5500 2500
Wire Wire Line
	6300 2500 6800 2500
Wire Wire Line
	5000 2750 5650 2750
Text Label 7600 4200 0    50   ~ 0
MPOT_A
Text Label 7600 4600 0    50   ~ 0
MPOT_W
Text Label 7600 5000 0    50   ~ 0
MPOT_B
Wire Wire Line
	7600 5000 8100 5000
Wire Wire Line
	8100 4600 7600 4600
Wire Wire Line
	7600 4200 8100 4200
Text Label 3200 4250 2    50   ~ 0
LED
Wire Wire Line
	3200 4250 2700 4250
$Comp
L Device:LED D?
U 1 1 610C8651
P 8800 2550
F 0 "D?" H 8793 2295 50  0000 C CNN
F 1 "LED" H 8793 2386 50  0000 C CNN
F 2 "" H 8800 2550 50  0001 C CNN
F 3 "~" H 8800 2550 50  0001 C CNN
	1    8800 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 610C8A6E
P 8400 2550
F 0 "R?" V 8300 2550 50  0000 C CNN
F 1 "1k" V 8400 2550 50  0000 C CNN
F 2 "" V 8330 2550 50  0001 C CNN
F 3 "~" H 8400 2550 50  0001 C CNN
	1    8400 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610C9390
P 9150 2550
F 0 "#PWR?" H 9150 2300 50  0001 C CNN
F 1 "GND" H 9155 2377 50  0000 C CNN
F 2 "" H 9150 2550 50  0001 C CNN
F 3 "" H 9150 2550 50  0001 C CNN
	1    9150 2550
	1    0    0    -1  
$EndComp
Text Label 7950 2550 0    50   ~ 0
LED
Wire Wire Line
	7950 2550 8250 2550
Wire Wire Line
	8550 2550 8650 2550
Wire Wire Line
	9150 2550 8950 2550
$Comp
L Device:Q_NPN_EBC Q?
U 1 1 610D9A76
P 2050 6150
F 0 "Q?" H 2240 6196 50  0000 L CNN
F 1 "2N3904" H 2240 6105 50  0000 L CNN
F 2 "" H 2250 6250 50  0001 C CNN
F 3 "~" H 2050 6150 50  0001 C CNN
	1    2050 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3950 1700 3950
Wire Wire Line
	1700 4050 1200 4050
Text Label 1100 6150 0    50   ~ 0
PLAY
$Comp
L power:GND #PWR?
U 1 1 610DF24B
P 2150 6450
F 0 "#PWR?" H 2150 6200 50  0001 C CNN
F 1 "GND" H 2155 6277 50  0000 C CNN
F 2 "" H 2150 6450 50  0001 C CNN
F 3 "" H 2150 6450 50  0001 C CNN
	1    2150 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6350 2150 6450
Text Label 2550 5850 2    50   ~ 0
~PLAY_BUF
Wire Wire Line
	2550 5850 2150 5850
Wire Wire Line
	2150 5850 2150 5950
Wire Wire Line
	1100 6150 1450 6150
$Comp
L Device:Q_NPN_EBC Q?
U 1 1 610E9A81
P 3800 6150
F 0 "Q?" H 3990 6196 50  0000 L CNN
F 1 "2N3904" H 3990 6105 50  0000 L CNN
F 2 "" H 4000 6250 50  0001 C CNN
F 3 "~" H 3800 6150 50  0001 C CNN
	1    3800 6150
	1    0    0    -1  
$EndComp
Text Label 2850 6150 0    50   ~ 0
STOP
$Comp
L power:GND #PWR?
U 1 1 610E9A88
P 3900 6450
F 0 "#PWR?" H 3900 6200 50  0001 C CNN
F 1 "GND" H 3905 6277 50  0000 C CNN
F 2 "" H 3900 6450 50  0001 C CNN
F 3 "" H 3900 6450 50  0001 C CNN
	1    3900 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6350 3900 6450
Text Label 4300 5850 2    50   ~ 0
~STOP_BUF
Wire Wire Line
	4300 5850 3900 5850
Wire Wire Line
	3900 5850 3900 5950
Wire Wire Line
	2850 6150 3200 6150
$Comp
L Device:R R?
U 1 1 610EE82A
P 1600 6150
F 0 "R?" V 1500 6150 50  0000 C CNN
F 1 "1k" V 1600 6150 50  0000 C CNN
F 2 "" V 1530 6150 50  0001 C CNN
F 3 "~" H 1600 6150 50  0001 C CNN
	1    1600 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 6150 1850 6150
$Comp
L Device:R R?
U 1 1 610FA12F
P 3350 6150
F 0 "R?" V 3250 6150 50  0000 C CNN
F 1 "1k" V 3350 6150 50  0000 C CNN
F 2 "" V 3280 6150 50  0001 C CNN
F 3 "~" H 3350 6150 50  0001 C CNN
	1    3350 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 6150 3600 6150
$Comp
L Switch:SW_Push SW?
U 1 1 6111364F
P 2950 7200
F 0 "SW?" H 2950 7485 50  0000 C CNN
F 1 "LEARN" H 2950 7394 50  0000 C CNN
F 2 "" H 2950 7400 50  0001 C CNN
F 3 "~" H 2950 7400 50  0001 C CNN
	1    2950 7200
	1    0    0    -1  
$EndComp
Text Label 2400 7200 0    50   ~ 0
LEARN
$Comp
L power:GND #PWR?
U 1 1 61113E31
P 3350 7200
F 0 "#PWR?" H 3350 6950 50  0001 C CNN
F 1 "GND" H 3355 7027 50  0000 C CNN
F 2 "" H 3350 7200 50  0001 C CNN
F 3 "" H 3350 7200 50  0001 C CNN
	1    3350 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 7200 3150 7200
Wire Wire Line
	2750 7200 2400 7200
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 6111D547
P 5200 6200
F 0 "J?" H 5280 6192 50  0000 L CNN
F 1 "Conn_01x02" H 5280 6101 50  0000 L CNN
F 2 "" H 5200 6200 50  0001 C CNN
F 3 "~" H 5200 6200 50  0001 C CNN
	1    5200 6200
	1    0    0    -1  
$EndComp
Text Label 4500 6200 0    50   ~ 0
~PLAY_BUF
Text Label 4500 6300 0    50   ~ 0
~STOP_BUF
Wire Wire Line
	4500 6200 5000 6200
Wire Wire Line
	5000 6300 4500 6300
Text Label 3200 3750 2    50   ~ 0
GATE
Wire Wire Line
	2700 3750 3200 3750
$EndSCHEMATC
