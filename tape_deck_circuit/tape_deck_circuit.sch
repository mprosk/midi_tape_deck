EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
P 2700 3150
F 0 "A?" H 2700 2061 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2700 1970 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 2700 3150 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2700 3150 50  0001 C CNN
	1    2700 3150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 6105B4FD
P 6850 3600
F 0 "RV1" H 6780 3554 50  0000 R CNN
F 1 "10k" H 6780 3645 50  0000 R CNN
F 2 "" H 6850 3600 50  0001 C CNN
F 3 "~" H 6850 3600 50  0001 C CNN
	1    6850 3600
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 6105BC26
P 7700 3350
F 0 "J?" H 7618 3025 50  0000 C CNN
F 1 "SPEED POT" H 7618 3116 50  0000 C CNN
F 2 "" H 7700 3350 50  0001 C CNN
F 3 "~" H 7700 3350 50  0001 C CNN
	1    7700 3350
	1    0    0    1   
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 6105C0A4
P 6850 3100
F 0 "RV2" H 6780 3054 50  0000 R CNN
F 1 "10k" H 6780 3145 50  0000 R CNN
F 2 "" H 6850 3100 50  0001 C CNN
F 3 "~" H 6850 3100 50  0001 C CNN
	1    6850 3100
	1    0    0    1   
$EndComp
Wire Wire Line
	6850 3250 6850 3350
Wire Wire Line
	7000 3100 7100 3100
Wire Wire Line
	7100 3100 7100 3350
Wire Wire Line
	7100 3350 6850 3350
Connection ~ 6850 3350
Wire Wire Line
	6850 3350 6850 3450
Wire Wire Line
	6850 2950 6850 2850
Wire Wire Line
	7400 2850 7400 3250
Wire Wire Line
	7400 3250 7500 3250
Wire Wire Line
	7500 3450 7400 3450
Wire Wire Line
	7400 3450 7400 3850
Wire Wire Line
	6850 3850 6850 3750
Wire Wire Line
	7300 3600 7300 3350
Wire Wire Line
	7300 3350 7500 3350
Wire Wire Line
	7000 3600 7300 3600
Wire Wire Line
	6850 3850 7400 3850
Wire Wire Line
	6850 2850 7400 2850
Text Notes 6400 3850 0    50   ~ 0
COARSE
Text Notes 6500 3300 0    50   ~ 0
FINE
$Comp
L midi_tape_deck:SW_4PDT SW?
U 1 1 610659E4
P 8450 4700
F 0 "SW?" H 8450 5585 50  0000 C CNN
F 1 "SW_4PDT" H 8450 5494 50  0000 C CNN
F 2 "" H 8450 5300 50  0001 C CNN
F 3 "~" H 8450 5300 50  0001 C CNN
	1    8450 4700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610686EB
P 4950 2300
F 0 "#PWR?" H 4950 2050 50  0001 C CNN
F 1 "GND" H 4955 2127 50  0000 C CNN
F 2 "" H 4950 2300 50  0001 C CNN
F 3 "" H 4950 2300 50  0001 C CNN
	1    4950 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 610689AA
P 5000 3250
F 0 "#PWR?" H 5000 3100 50  0001 C CNN
F 1 "+5V" H 5015 3423 50  0000 C CNN
F 2 "" H 5000 3250 50  0001 C CNN
F 3 "" H 5000 3250 50  0001 C CNN
	1    5000 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 61068D81
P 5350 2850
F 0 "#PWR?" H 5350 2700 50  0001 C CNN
F 1 "+15V" H 5365 3023 50  0000 C CNN
F 2 "" H 5350 2850 50  0001 C CNN
F 3 "" H 5350 2850 50  0001 C CNN
	1    5350 2850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
