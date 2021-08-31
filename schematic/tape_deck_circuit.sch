EESchema Schematic File Version 4
LIBS:tape_deck_circuit-cache
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
L tape_deck_circuit-rescue:Arduino_Nano_v3.x-MCU_Module A1
U 1 1 6105AC23
P 3400 2900
F 0 "A1" H 3100 4150 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 3100 4050 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 3400 2900 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 3400 2900 50  0001 C CNN
	1    3400 2900
	-1   0    0    -1  
$EndComp
$Comp
L midi_tape_deck:MCP41HVx1 U2
U 1 1 6108BB45
P 7650 3000
F 0 "U2" H 7300 3650 50  0000 C CNN
F 1 "MCP41HVx1" H 7300 3550 50  0000 C CNN
F 2 "midi_tape_deck:TSSOP_Breakout" H 7450 3150 50  0001 C CNN
F 3 "" H 7450 3150 50  0001 C CNN
	1    7650 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 6108CDDD
P 3200 1800
F 0 "#PWR0101" H 3200 1650 50  0001 C CNN
F 1 "+5V" H 3215 1973 50  0000 C CNN
F 2 "" H 3200 1800 50  0001 C CNN
F 3 "" H 3200 1800 50  0001 C CNN
	1    3200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1800 3200 1900
$Comp
L power:GND #PWR0102
U 1 1 6108D3AA
P 3400 4000
F 0 "#PWR0102" H 3400 3750 50  0001 C CNN
F 1 "GND" H 3405 3827 50  0000 C CNN
F 2 "" H 3400 4000 50  0001 C CNN
F 3 "" H 3400 4000 50  0001 C CNN
	1    3400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3900 3400 3900
Wire Wire Line
	3400 3900 3400 4000
Connection ~ 3400 3900
NoConn ~ 3300 1900
NoConn ~ 3500 1900
NoConn ~ 2900 2300
NoConn ~ 2900 2400
NoConn ~ 2900 2700
NoConn ~ 2900 3500
NoConn ~ 2900 3600
Text Label 4400 3600 2    50   ~ 0
SCK
Wire Wire Line
	4400 3600 3900 3600
Text Label 4400 3500 2    50   ~ 0
MISO
Text Label 4400 3400 2    50   ~ 0
MOSI
Wire Wire Line
	4400 3400 3900 3400
$Comp
L power:GND #PWR0103
U 1 1 61091954
P 7600 3650
F 0 "#PWR0103" H 7600 3400 50  0001 C CNN
F 1 "GND" H 7605 3477 50  0000 C CNN
F 2 "" H 7600 3650 50  0001 C CNN
F 3 "" H 7600 3650 50  0001 C CNN
	1    7600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3550 7600 3550
Wire Wire Line
	7600 3650 7600 3550
Connection ~ 7600 3550
$Comp
L power:+15V #PWR0104
U 1 1 610932D2
P 8400 2650
F 0 "#PWR0104" H 8400 2500 50  0001 C CNN
F 1 "+15V" H 8415 2823 50  0000 C CNN
F 2 "" H 8400 2650 50  0001 C CNN
F 3 "" H 8400 2650 50  0001 C CNN
	1    8400 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6109373F
P 8400 2750
F 0 "#PWR0105" H 8400 2500 50  0001 C CNN
F 1 "GND" H 8405 2577 50  0000 C CNN
F 2 "" H 8400 2750 50  0001 C CNN
F 3 "" H 8400 2750 50  0001 C CNN
	1    8400 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 2650 8300 2650
Wire Wire Line
	8300 2750 8400 2750
$Comp
L power:+5V #PWR0106
U 1 1 61095D7F
P 7650 2250
F 0 "#PWR0106" H 7650 2100 50  0001 C CNN
F 1 "+5V" H 7665 2423 50  0000 C CNN
F 2 "" H 7650 2250 50  0001 C CNN
F 3 "" H 7650 2250 50  0001 C CNN
	1    7650 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 61096AE9
P 7950 2300
F 0 "C4" V 7721 2300 50  0000 C CNN
F 1 "0.1uF" V 7812 2300 50  0000 C CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7950 2300 50  0001 C CNN
F 3 "~" H 7950 2300 50  0001 C CNN
	1    7950 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 610977EC
P 8150 2300
F 0 "#PWR0107" H 8150 2050 50  0001 C CNN
F 1 "GND" H 8155 2127 50  0000 C CNN
F 2 "" H 8150 2300 50  0001 C CNN
F 3 "" H 8150 2300 50  0001 C CNN
	1    8150 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 2300 8050 2300
Wire Wire Line
	7850 2300 7650 2300
Text Label 4400 2600 2    50   ~ 0
INT1
Text Label 4400 2500 2    50   ~ 0
LEARN
Wire Wire Line
	4400 2500 3900 2500
Wire Wire Line
	4400 2600 3900 2600
Text Label 4700 5750 2    50   ~ 0
MIDI_IN
Wire Wire Line
	4400 2300 3900 2300
Text Label 4400 2400 2    50   ~ 0
MIDI_OUT
Wire Wire Line
	4400 2400 3900 2400
NoConn ~ 3900 3300
Wire Wire Line
	2900 3300 2400 3300
$Comp
L Isolator:6N138 U1
U 1 1 610AAE64
P 3900 5650
F 0 "U1" H 3900 6117 50  0000 C CNN
F 1 "6N138" H 3900 6026 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 4190 5350 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/HCPL2731-D.pdf" H 4190 5350 50  0001 C CNN
	1    3900 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D1
U 1 1 610ABF83
P 3250 5650
F 0 "D1" V 3204 5720 50  0000 L CNN
F 1 "1N914" V 3295 5720 50  0000 L CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" V 3250 5650 50  0001 C CNN
F 3 "~" V 3250 5650 50  0001 C CNN
	1    3250 5650
	0    1    1    0   
$EndComp
NoConn ~ 4200 5550
$Comp
L power:GND #PWR0108
U 1 1 610AE617
P 4300 5850
F 0 "#PWR0108" H 4300 5600 50  0001 C CNN
F 1 "GND" H 4305 5677 50  0000 C CNN
F 2 "" H 4300 5850 50  0001 C CNN
F 3 "" H 4300 5850 50  0001 C CNN
	1    4300 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 610AEAAD
P 4300 5450
F 0 "#PWR0109" H 4300 5300 50  0001 C CNN
F 1 "+5V" H 4315 5623 50  0000 C CNN
F 2 "" H 4300 5450 50  0001 C CNN
F 3 "" H 4300 5450 50  0001 C CNN
	1    4300 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5850 4300 5850
Wire Wire Line
	4300 5450 4200 5450
Wire Wire Line
	4700 5750 4200 5750
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 610B3218
P 2100 5650
F 0 "J1" H 2018 5967 50  0000 C CNN
F 1 "MIDI IN" H 2018 5876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2100 5650 50  0001 C CNN
F 3 "~" H 2100 5650 50  0001 C CNN
	1    2100 5650
	-1   0    0    -1  
$EndComp
Text Label 2400 5550 0    50   ~ 0
PIN4
Text Label 2400 5650 0    50   ~ 0
PIN5
Text Label 2400 5750 0    50   ~ 0
PIN2
Text Label 2400 5850 0    50   ~ 0
SHELL
$Comp
L Device:R R1
U 1 1 610B477F
P 2950 5550
F 0 "R1" V 2850 5550 50  0000 C CNN
F 1 "220" V 2950 5550 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2880 5550 50  0001 C CNN
F 3 "~" H 2950 5550 50  0001 C CNN
	1    2950 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 5550 2800 5550
Wire Wire Line
	3100 5550 3250 5550
Connection ~ 3250 5550
Wire Wire Line
	3250 5550 3600 5550
Wire Wire Line
	3600 5750 3250 5750
$Comp
L Device:C_Small C1
U 1 1 610B9DD2
P 2650 6050
F 0 "C1" H 2559 6004 50  0000 R CNN
F 1 "0.1uF" H 2559 6095 50  0000 R CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2650 6050 50  0001 C CNN
F 3 "~" H 2650 6050 50  0001 C CNN
	1    2650 6050
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 610BA1D9
P 2850 6050
F 0 "C2" H 2758 6004 50  0000 R CNN
F 1 "0.1uF" H 2758 6095 50  0000 R CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2850 6050 50  0001 C CNN
F 3 "~" H 2850 6050 50  0001 C CNN
	1    2850 6050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 610D6607
P 2750 6250
F 0 "#PWR0110" H 2750 6000 50  0001 C CNN
F 1 "GND" H 2755 6077 50  0000 C CNN
F 2 "" H 2750 6250 50  0001 C CNN
F 3 "" H 2750 6250 50  0001 C CNN
	1    2750 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5750 2850 5750
Wire Wire Line
	2850 5750 2850 5950
Wire Wire Line
	2650 5850 2650 5950
Wire Wire Line
	2300 5650 3050 5650
Wire Wire Line
	3050 5650 3050 5750
Wire Wire Line
	3050 5750 3250 5750
Connection ~ 3250 5750
Wire Wire Line
	2850 6250 2750 6250
Connection ~ 2750 6250
Wire Wire Line
	2750 6250 2650 6250
Wire Wire Line
	2300 5850 2650 5850
Wire Wire Line
	2850 6150 2850 6250
Wire Wire Line
	2650 6150 2650 6250
Text Label 4400 2300 2    50   ~ 0
MIDI_IN
Text Label 9200 3250 2    50   ~ 0
DPOT_A
Text Label 9200 3100 2    50   ~ 0
DPOT_W
Text Label 9200 4950 2    50   ~ 0
DPOT_B
Wire Wire Line
	9200 3250 8300 3250
Wire Wire Line
	8300 3100 9200 3100
Text Label 4400 2900 2    50   ~ 0
LED
Wire Wire Line
	4400 2900 3900 2900
$Comp
L Device:LED D2
U 1 1 610C8651
P 6250 1250
F 0 "D2" H 6243 995 50  0000 C CNN
F 1 "LED" H 6243 1086 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6250 1250 50  0001 C CNN
F 3 "~" H 6250 1250 50  0001 C CNN
	1    6250 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 610C8A6E
P 5850 1250
F 0 "R2" V 5750 1250 50  0000 C CNN
F 1 "1k" V 5850 1250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5780 1250 50  0001 C CNN
F 3 "~" H 5850 1250 50  0001 C CNN
	1    5850 1250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 610C9390
P 6600 1250
F 0 "#PWR0111" H 6600 1000 50  0001 C CNN
F 1 "GND" H 6605 1077 50  0000 C CNN
F 2 "" H 6600 1250 50  0001 C CNN
F 3 "" H 6600 1250 50  0001 C CNN
	1    6600 1250
	1    0    0    -1  
$EndComp
Text Label 5400 1250 0    50   ~ 0
LED
Wire Wire Line
	5400 1250 5700 1250
Wire Wire Line
	6000 1250 6100 1250
Wire Wire Line
	6600 1250 6400 1250
Text Label 2400 2900 0    50   ~ 0
GATE
Wire Wire Line
	2900 2900 2400 2900
Wire Wire Line
	7000 3150 6900 3150
Wire Wire Line
	6900 3150 6900 3550
$Comp
L power:+5V #PWR0112
U 1 1 610A8E36
P 6700 3250
F 0 "#PWR0112" H 6700 3100 50  0001 C CNN
F 1 "+5V" H 6715 3423 50  0000 C CNN
F 2 "" H 6700 3250 50  0001 C CNN
F 3 "" H 6700 3250 50  0001 C CNN
	1    6700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3250 7000 3250
Wire Wire Line
	6500 2850 7000 2850
Wire Wire Line
	7000 2750 6500 2750
Wire Wire Line
	6500 2650 7000 2650
Text Label 6500 2850 0    50   ~ 0
MISO
Text Label 6500 2750 0    50   ~ 0
MOSI
Text Label 6500 2650 0    50   ~ 0
SCK
$Comp
L midi_tape_deck:MCP41HVx1 U3
U 1 1 61291371
P 7600 5000
F 0 "U3" H 7250 5650 50  0000 C CNN
F 1 "MCP41HVx1" H 7250 5550 50  0000 C CNN
F 2 "midi_tape_deck:TSSOP_Breakout" H 7400 5150 50  0001 C CNN
F 3 "" H 7400 5150 50  0001 C CNN
	1    7600 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 61291377
P 7550 5650
F 0 "#PWR0113" H 7550 5400 50  0001 C CNN
F 1 "GND" H 7555 5477 50  0000 C CNN
F 2 "" H 7550 5650 50  0001 C CNN
F 3 "" H 7550 5650 50  0001 C CNN
	1    7550 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5550 7550 5550
Wire Wire Line
	7550 5650 7550 5550
Connection ~ 7550 5550
$Comp
L power:+15V #PWR0114
U 1 1 61291380
P 8350 4650
F 0 "#PWR0114" H 8350 4500 50  0001 C CNN
F 1 "+15V" H 8365 4823 50  0000 C CNN
F 2 "" H 8350 4650 50  0001 C CNN
F 3 "" H 8350 4650 50  0001 C CNN
	1    8350 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 61291386
P 8350 4750
F 0 "#PWR0115" H 8350 4500 50  0001 C CNN
F 1 "GND" H 8355 4577 50  0000 C CNN
F 2 "" H 8350 4750 50  0001 C CNN
F 3 "" H 8350 4750 50  0001 C CNN
	1    8350 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 4650 8250 4650
Wire Wire Line
	8250 4750 8350 4750
$Comp
L power:+5V #PWR0116
U 1 1 6129138E
P 7600 4250
F 0 "#PWR0116" H 7600 4100 50  0001 C CNN
F 1 "+5V" H 7615 4423 50  0000 C CNN
F 2 "" H 7600 4250 50  0001 C CNN
F 3 "" H 7600 4250 50  0001 C CNN
	1    7600 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 61291395
P 7900 4300
F 0 "C3" V 7671 4300 50  0000 C CNN
F 1 "0.1uF" V 7762 4300 50  0000 C CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7900 4300 50  0001 C CNN
F 3 "~" H 7900 4300 50  0001 C CNN
	1    7900 4300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 6129139B
P 8100 4300
F 0 "#PWR0117" H 8100 4050 50  0001 C CNN
F 1 "GND" H 8105 4127 50  0000 C CNN
F 2 "" H 8100 4300 50  0001 C CNN
F 3 "" H 8100 4300 50  0001 C CNN
	1    8100 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 4300 8000 4300
Wire Wire Line
	7800 4300 7600 4300
Wire Wire Line
	9200 4950 8250 4950
Wire Wire Line
	6950 5150 6850 5150
Wire Wire Line
	6850 5150 6850 5550
$Comp
L power:+5V #PWR0118
U 1 1 612913AD
P 6650 5250
F 0 "#PWR0118" H 6650 5100 50  0001 C CNN
F 1 "+5V" H 6665 5423 50  0000 C CNN
F 2 "" H 6650 5250 50  0001 C CNN
F 3 "" H 6650 5250 50  0001 C CNN
	1    6650 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5250 6950 5250
Wire Wire Line
	6450 4850 6950 4850
Wire Wire Line
	6950 4750 6450 4750
Wire Wire Line
	6450 4650 6950 4650
Text Label 6450 4850 0    50   ~ 0
MISO
Text Label 6450 4750 0    50   ~ 0
MOSI
Text Label 6450 4650 0    50   ~ 0
SCK
Wire Wire Line
	8650 2950 8650 5100
Wire Wire Line
	8300 2950 8650 2950
Wire Wire Line
	8250 5100 8650 5100
Wire Wire Line
	8650 5100 8650 5250
Wire Wire Line
	8250 5250 8650 5250
Connection ~ 8650 5100
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 6105BC26
P 10200 4000
F 0 "J2" H 10200 4350 50  0000 C CNN
F 1 "SPEED POT" H 10200 4250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10200 4000 50  0001 C CNN
F 3 "~" H 10200 4000 50  0001 C CNN
	1    10200 4000
	1    0    0    -1  
$EndComp
Text Label 6450 4950 0    50   ~ 0
CS2
Wire Wire Line
	6450 4950 6950 4950
Text Label 6500 2950 0    50   ~ 0
CS1
Wire Wire Line
	6500 2950 7000 2950
Wire Wire Line
	7650 2250 7650 2300
Wire Wire Line
	7600 4250 7600 4300
Text Label 9500 3900 0    50   ~ 0
DPOT_A
Text Label 9500 4100 0    50   ~ 0
DPOT_B
Wire Wire Line
	9500 3900 10000 3900
Wire Wire Line
	9500 4100 10000 4100
Text Label 9500 4000 0    50   ~ 0
DPOT_W
Wire Wire Line
	9500 4000 10000 4000
Connection ~ 7600 4300
Wire Wire Line
	7600 4300 7600 4350
Connection ~ 7650 2300
Wire Wire Line
	7650 2300 7650 2350
Text Label 2400 3300 0    50   ~ 0
CS1
Text Label 2400 3400 0    50   ~ 0
CS2
Wire Wire Line
	2400 3400 2900 3400
Text Label 8300 5250 0    50   ~ 0
POT_COM
Wire Wire Line
	4400 3500 3900 3500
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 6139A277
P 1700 2000
F 0 "J3" H 1700 2350 50  0000 C CNN
F 1 "POWER" H 1700 2250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1700 2000 50  0001 C CNN
F 3 "~" H 1700 2000 50  0001 C CNN
	1    1700 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 6139C45A
P 1000 1750
F 0 "#PWR0119" H 1000 1600 50  0001 C CNN
F 1 "+5V" H 1015 1923 50  0000 C CNN
F 2 "" H 1000 1750 50  0001 C CNN
F 3 "" H 1000 1750 50  0001 C CNN
	1    1000 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0120
U 1 1 6139C6F8
P 1000 2500
F 0 "#PWR0120" H 1000 2350 50  0001 C CNN
F 1 "+15V" H 1015 2673 50  0000 C CNN
F 2 "" H 1000 2500 50  0001 C CNN
F 3 "" H 1000 2500 50  0001 C CNN
	1    1000 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 6139D73C
P 1000 2000
F 0 "#PWR0121" H 1000 1750 50  0001 C CNN
F 1 "GND" H 1005 1827 50  0000 C CNN
F 2 "" H 1000 2000 50  0001 C CNN
F 3 "" H 1000 2000 50  0001 C CNN
	1    1000 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2000 1500 2000
Wire Wire Line
	1000 1750 1000 1900
Wire Wire Line
	1000 1900 1500 1900
Wire Wire Line
	1500 2100 1500 2500
Wire Wire Line
	1500 2500 1000 2500
$EndSCHEMATC
