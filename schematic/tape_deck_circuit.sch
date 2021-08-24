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
L tape_deck_circuit-rescue:Arduino_Nano_v3.x-MCU_Module A?
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
P 5450 1150
F 0 "RV1" V 5350 1150 50  0000 C CNN
F 1 "10k" V 5450 1150 50  0000 C CNN
F 2 "" H 5450 1150 50  0001 C CNN
F 3 "~" H 5450 1150 50  0001 C CNN
	1    5450 1150
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
P 5950 1150
F 0 "RV2" V 5850 1150 50  0000 C CNN
F 1 "10k" V 5950 1150 50  0000 C CNN
F 2 "" H 5950 1150 50  0001 C CNN
F 3 "~" H 5950 1150 50  0001 C CNN
	1    5950 1150
	0    -1   1    0   
$EndComp
Wire Wire Line
	5800 1150 5700 1150
Wire Wire Line
	5950 1300 5950 1400
Wire Wire Line
	5950 1400 5700 1400
Wire Wire Line
	5700 1400 5700 1150
Connection ~ 5700 1150
Wire Wire Line
	5700 1150 5600 1150
Wire Wire Line
	5450 1300 5450 1400
Text Notes 5300 950  0    50   ~ 0
COARSE
Text Notes 5850 950  0    50   ~ 0
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
P 5450 3100
F 0 "U?" H 5100 3750 50  0000 C CNN
F 1 "MCP41HVx1" H 5100 3650 50  0000 C CNN
F 2 "" H 5250 3250 50  0001 C CNN
F 3 "" H 5250 3250 50  0001 C CNN
	1    5450 3100
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
$Comp
L power:GND #PWR?
U 1 1 61091954
P 5400 3750
F 0 "#PWR?" H 5400 3500 50  0001 C CNN
F 1 "GND" H 5405 3577 50  0000 C CNN
F 2 "" H 5400 3750 50  0001 C CNN
F 3 "" H 5400 3750 50  0001 C CNN
	1    5400 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3650 5400 3650
Wire Wire Line
	5400 3750 5400 3650
Connection ~ 5400 3650
$Comp
L power:+15V #PWR?
U 1 1 610932D2
P 6200 2750
F 0 "#PWR?" H 6200 2600 50  0001 C CNN
F 1 "+15V" H 6215 2923 50  0000 C CNN
F 2 "" H 6200 2750 50  0001 C CNN
F 3 "" H 6200 2750 50  0001 C CNN
	1    6200 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6109373F
P 6200 2850
F 0 "#PWR?" H 6200 2600 50  0001 C CNN
F 1 "GND" H 6205 2677 50  0000 C CNN
F 2 "" H 6200 2850 50  0001 C CNN
F 3 "" H 6200 2850 50  0001 C CNN
	1    6200 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 2750 6100 2750
Wire Wire Line
	6100 2850 6200 2850
$Comp
L power:+5V #PWR?
U 1 1 61095D7F
P 5450 2350
F 0 "#PWR?" H 5450 2200 50  0001 C CNN
F 1 "+5V" H 5465 2523 50  0000 C CNN
F 2 "" H 5450 2350 50  0001 C CNN
F 3 "" H 5450 2350 50  0001 C CNN
	1    5450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2350 5450 2400
$Comp
L Device:C_Small C?
U 1 1 61096AE9
P 5750 2400
F 0 "C?" V 5521 2400 50  0000 C CNN
F 1 "0.1uF" V 5612 2400 50  0000 C CNN
F 2 "" H 5750 2400 50  0001 C CNN
F 3 "~" H 5750 2400 50  0001 C CNN
	1    5750 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610977EC
P 5950 2400
F 0 "#PWR?" H 5950 2150 50  0001 C CNN
F 1 "GND" H 5955 2227 50  0000 C CNN
F 2 "" H 5950 2400 50  0001 C CNN
F 3 "" H 5950 2400 50  0001 C CNN
	1    5950 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 2400 5850 2400
Wire Wire Line
	5650 2400 5450 2400
Connection ~ 5450 2400
Wire Wire Line
	5450 2400 5450 2450
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
Text Label 6600 3350 2    50   ~ 0
DPOT_A
Text Label 6600 3200 2    50   ~ 0
DPOT_W
Text Label 6550 5050 2    50   ~ 0
DPOT_B
Wire Wire Line
	6600 3350 6100 3350
Wire Wire Line
	6100 3200 6600 3200
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
Text Label 4800 1150 0    50   ~ 0
MPOT_A
Text Label 4800 1400 0    50   ~ 0
MPOT_W
Text Label 6600 1150 2    50   ~ 0
MPOT_B
Wire Wire Line
	4800 1150 5300 1150
Wire Wire Line
	6100 1150 6600 1150
Wire Wire Line
	4800 1400 5450 1400
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
P 9150 1650
F 0 "D?" H 9143 1395 50  0000 C CNN
F 1 "LED" H 9143 1486 50  0000 C CNN
F 2 "" H 9150 1650 50  0001 C CNN
F 3 "~" H 9150 1650 50  0001 C CNN
	1    9150 1650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 610C8A6E
P 8750 1650
F 0 "R?" V 8650 1650 50  0000 C CNN
F 1 "1k" V 8750 1650 50  0000 C CNN
F 2 "" V 8680 1650 50  0001 C CNN
F 3 "~" H 8750 1650 50  0001 C CNN
	1    8750 1650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610C9390
P 9500 1650
F 0 "#PWR?" H 9500 1400 50  0001 C CNN
F 1 "GND" H 9505 1477 50  0000 C CNN
F 2 "" H 9500 1650 50  0001 C CNN
F 3 "" H 9500 1650 50  0001 C CNN
	1    9500 1650
	1    0    0    -1  
$EndComp
Text Label 8300 1650 0    50   ~ 0
LED
Wire Wire Line
	8300 1650 8600 1650
Wire Wire Line
	8900 1650 9000 1650
Wire Wire Line
	9500 1650 9300 1650
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
Wire Wire Line
	4800 3250 4700 3250
Wire Wire Line
	4700 3250 4700 3650
$Comp
L power:+5V #PWR?
U 1 1 610A8E36
P 4500 3350
F 0 "#PWR?" H 4500 3200 50  0001 C CNN
F 1 "+5V" H 4515 3523 50  0000 C CNN
F 2 "" H 4500 3350 50  0001 C CNN
F 3 "" H 4500 3350 50  0001 C CNN
	1    4500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3350 4800 3350
Connection ~ 4700 3250
Wire Wire Line
	4700 3050 4700 3250
Wire Wire Line
	4800 3050 4700 3050
Wire Wire Line
	4300 2950 4800 2950
Wire Wire Line
	4800 2850 4300 2850
Wire Wire Line
	4300 2750 4800 2750
Text Label 4300 2950 0    50   ~ 0
MISO
Text Label 4300 2850 0    50   ~ 0
MOSI
Text Label 4300 2750 0    50   ~ 0
SCK
$Comp
L Device:R_POT RV?
U 1 1 6124D354
P 7250 1050
F 0 "RV?" H 7100 1050 50  0000 C CNN
F 1 "10k" V 7250 1050 50  0000 C CNN
F 2 "" H 7250 1050 50  0001 C CNN
F 3 "~" H 7250 1050 50  0001 C CNN
	1    7250 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 6124D35A
P 7250 1550
F 0 "RV?" H 7100 1550 50  0000 C CNN
F 1 "10k" V 7250 1550 50  0000 C CNN
F 2 "" H 7250 1550 50  0001 C CNN
F 3 "~" H 7250 1550 50  0001 C CNN
	1    7250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1400 7250 1300
Wire Wire Line
	7500 1550 7400 1550
Wire Wire Line
	7500 1550 7500 1300
Wire Wire Line
	7250 1300 7500 1300
Connection ~ 7250 1300
Wire Wire Line
	7250 1300 7250 1200
Wire Wire Line
	7500 1050 7400 1050
Text Notes 7400 1200 0    50   ~ 0
COARSE
Text Notes 7400 1700 0    50   ~ 0
FINE
Text Label 6950 800  0    50   ~ 0
MPOT_A
Text Label 7800 800  2    50   ~ 0
MPOT_W
Text Label 7600 1850 2    50   ~ 0
MPOT_B
Wire Wire Line
	7250 1700 7250 1850
Wire Wire Line
	6950 800  7250 800 
Wire Wire Line
	7250 800  7250 900 
Wire Wire Line
	7800 800  7500 800 
Wire Wire Line
	7500 800  7500 1050
Wire Wire Line
	7600 1850 7250 1850
$Comp
L midi_tape_deck:MCP41HVx1 U?
U 1 1 61291371
P 5400 5100
F 0 "U?" H 5050 5750 50  0000 C CNN
F 1 "MCP41HVx1" H 5050 5650 50  0000 C CNN
F 2 "" H 5200 5250 50  0001 C CNN
F 3 "" H 5200 5250 50  0001 C CNN
	1    5400 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61291377
P 5350 5750
F 0 "#PWR?" H 5350 5500 50  0001 C CNN
F 1 "GND" H 5355 5577 50  0000 C CNN
F 2 "" H 5350 5750 50  0001 C CNN
F 3 "" H 5350 5750 50  0001 C CNN
	1    5350 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5650 5350 5650
Wire Wire Line
	5350 5750 5350 5650
Connection ~ 5350 5650
$Comp
L power:+15V #PWR?
U 1 1 61291380
P 6150 4750
F 0 "#PWR?" H 6150 4600 50  0001 C CNN
F 1 "+15V" H 6165 4923 50  0000 C CNN
F 2 "" H 6150 4750 50  0001 C CNN
F 3 "" H 6150 4750 50  0001 C CNN
	1    6150 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61291386
P 6150 4850
F 0 "#PWR?" H 6150 4600 50  0001 C CNN
F 1 "GND" H 6155 4677 50  0000 C CNN
F 2 "" H 6150 4850 50  0001 C CNN
F 3 "" H 6150 4850 50  0001 C CNN
	1    6150 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 4750 6050 4750
Wire Wire Line
	6050 4850 6150 4850
$Comp
L power:+5V #PWR?
U 1 1 6129138E
P 5400 4350
F 0 "#PWR?" H 5400 4200 50  0001 C CNN
F 1 "+5V" H 5415 4523 50  0000 C CNN
F 2 "" H 5400 4350 50  0001 C CNN
F 3 "" H 5400 4350 50  0001 C CNN
	1    5400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4350 5400 4400
$Comp
L Device:C_Small C?
U 1 1 61291395
P 5700 4400
F 0 "C?" V 5471 4400 50  0000 C CNN
F 1 "0.1uF" V 5562 4400 50  0000 C CNN
F 2 "" H 5700 4400 50  0001 C CNN
F 3 "~" H 5700 4400 50  0001 C CNN
	1    5700 4400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6129139B
P 5900 4400
F 0 "#PWR?" H 5900 4150 50  0001 C CNN
F 1 "GND" H 5905 4227 50  0000 C CNN
F 2 "" H 5900 4400 50  0001 C CNN
F 3 "" H 5900 4400 50  0001 C CNN
	1    5900 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 4400 5800 4400
Wire Wire Line
	5600 4400 5400 4400
Connection ~ 5400 4400
Wire Wire Line
	5400 4400 5400 4450
Wire Wire Line
	6550 5050 6050 5050
Wire Wire Line
	4750 5250 4650 5250
Wire Wire Line
	4650 5250 4650 5650
$Comp
L power:+5V #PWR?
U 1 1 612913AD
P 4450 5350
F 0 "#PWR?" H 4450 5200 50  0001 C CNN
F 1 "+5V" H 4465 5523 50  0000 C CNN
F 2 "" H 4450 5350 50  0001 C CNN
F 3 "" H 4450 5350 50  0001 C CNN
	1    4450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5350 4750 5350
Connection ~ 4650 5250
Wire Wire Line
	4650 5050 4650 5250
Wire Wire Line
	4750 5050 4650 5050
Wire Wire Line
	4250 4950 4750 4950
Wire Wire Line
	4750 4850 4250 4850
Wire Wire Line
	4250 4750 4750 4750
Text Label 4250 4950 0    50   ~ 0
MISO
Text Label 4250 4850 0    50   ~ 0
MOSI
Text Label 4250 4750 0    50   ~ 0
SCK
Wire Wire Line
	6700 3050 6700 5200
Wire Wire Line
	6100 3050 6700 3050
Wire Wire Line
	6050 5200 6700 5200
Wire Wire Line
	6700 5200 6700 5350
Wire Wire Line
	6050 5350 6700 5350
Connection ~ 6700 5200
$EndSCHEMATC
