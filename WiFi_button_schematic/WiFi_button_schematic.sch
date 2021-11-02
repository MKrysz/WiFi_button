EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "web_button"
Date "2021-10-07"
Rev "v03"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP-12E U2
U 1 1 6158A0EA
P 5900 2500
F 0 "U2" H 6350 3250 50  0000 C CNN
F 1 "ESP-12E" H 6250 1850 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 5900 2500 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 5550 2600 50  0001 C CNN
	1    5900 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 6158B3CB
P 2450 3450
F 0 "D1" V 2489 3332 50  0000 R CNN
F 1 "Red" V 2398 3332 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2450 3450 50  0001 C CNN
F 3 "~" H 2450 3450 50  0001 C CNN
	1    2450 3450
	0    -1   1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 6158B9BE
P 2850 3450
F 0 "D2" V 2889 3332 50  0000 R CNN
F 1 "Blue" V 2798 3332 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2850 3450 50  0001 C CNN
F 3 "~" H 2850 3450 50  0001 C CNN
	1    2850 3450
	0    -1   1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 6158BB69
P 2450 3800
F 0 "R3" H 2520 3846 50  0000 L CNN
F 1 "1K" H 2520 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2380 3800 50  0001 C CNN
F 3 "~" H 2450 3800 50  0001 C CNN
	1    2450 3800
	1    0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 6158BE0F
P 2850 3800
F 0 "R4" H 2920 3846 50  0000 L CNN
F 1 "1K" H 2920 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2780 3800 50  0001 C CNN
F 3 "~" H 2850 3800 50  0001 C CNN
	1    2850 3800
	1    0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 6158C9E5
P 1450 1550
F 0 "C1" H 1565 1596 50  0000 L CNN
F 1 "10uF" H 1565 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1488 1400 50  0001 C CNN
F 3 "~" H 1450 1550 50  0001 C CNN
	1    1450 1550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:HT75xx-1-SOT89 U1
U 1 1 6158E791
P 2150 1450
F 0 "U1" H 2150 1817 50  0000 C CNN
F 1 "HT75xx-1-SOT89" H 2150 1726 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 2150 1775 50  0001 C CIN
F 3 "https://www.holtek.com/documents/10179/116711/HT75xx-1v250.pdf" H 2150 1550 50  0001 C CNN
	1    2150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1350 2750 1350
Wire Wire Line
	2750 1350 2750 1400
Wire Wire Line
	2750 1750 2150 1750
Wire Wire Line
	1450 1700 1450 1750
Wire Wire Line
	1450 1400 1450 1350
Wire Wire Line
	1450 1350 1850 1350
Wire Wire Line
	2150 1650 2150 1750
Connection ~ 2150 1750
$Comp
L power:GND #PWR04
U 1 1 61591C35
P 2150 1800
F 0 "#PWR04" H 2150 1550 50  0001 C CNN
F 1 "GND" H 2155 1627 50  0000 C CNN
F 2 "" H 2150 1800 50  0001 C CNN
F 3 "" H 2150 1800 50  0001 C CNN
	1    2150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1800 2150 1750
$Comp
L power:+3V3 #PWR07
U 1 1 61593A21
P 2750 1300
F 0 "#PWR07" H 2750 1150 50  0001 C CNN
F 1 "+3V3" H 2765 1473 50  0000 C CNN
F 2 "" H 2750 1300 50  0001 C CNN
F 3 "" H 2750 1300 50  0001 C CNN
	1    2750 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3650 2450 3600
Wire Wire Line
	2850 3650 2850 3600
Wire Wire Line
	2450 3300 2450 3200
Wire Wire Line
	2850 3300 2850 3200
$Comp
L power:+3V3 #PWR011
U 1 1 61599410
P 5900 1600
F 0 "#PWR011" H 5900 1450 50  0001 C CNN
F 1 "+3V3" H 5915 1773 50  0000 C CNN
F 2 "" H 5900 1600 50  0001 C CNN
F 3 "" H 5900 1600 50  0001 C CNN
	1    5900 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 6159A446
P 5900 3250
F 0 "#PWR012" H 5900 3000 50  0001 C CNN
F 1 "GND" H 5905 3077 50  0000 C CNN
F 2 "" H 5900 3250 50  0001 C CNN
F 3 "" H 5900 3250 50  0001 C CNN
	1    5900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3250 5900 3200
Text Label 4900 2300 0    50   ~ 0
BAT_VOL
Wire Wire Line
	4900 2300 5300 2300
Text Label 2650 4000 2    50   ~ 0
rLed
Text Label 3050 4000 2    50   ~ 0
bLed
Wire Wire Line
	2450 3950 2450 4000
Wire Wire Line
	2450 4000 2650 4000
Wire Wire Line
	2850 3950 2850 4000
Wire Wire Line
	2850 4000 3050 4000
Text Label 6900 1900 2    50   ~ 0
boot_sel
Wire Wire Line
	6900 1900 6500 1900
Text Label 6900 2000 2    50   ~ 0
TX
Text Label 6900 2200 2    50   ~ 0
RX
Wire Wire Line
	6900 2000 6500 2000
Wire Wire Line
	6900 2200 6500 2200
Text Notes 900  4000 0    50   Italic 0
Gnd\n
Text Notes 900  3700 0    50   Italic 0
TX
Text Notes 900  3600 0    50   Italic 0
RX
Text Label 6900 2500 2    50   ~ 0
bLed
Text Label 6900 2300 2    50   ~ 0
rLed
Wire Wire Line
	6500 2300 6900 2300
Wire Wire Line
	6500 2500 6900 2500
$Comp
L power:GND #PWR03
U 1 1 615BEE18
P 1350 4050
F 0 "#PWR03" H 1350 3800 50  0001 C CNN
F 1 "GND" H 1355 3877 50  0000 C CNN
F 2 "" H 1350 4050 50  0001 C CNN
F 3 "" H 1350 4050 50  0001 C CNN
	1    1350 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR02
U 1 1 615BFC9D
P 1650 3750
F 0 "#PWR02" H 1650 3600 50  0001 C CNN
F 1 "+3V3" H 1665 3923 50  0000 C CNN
F 2 "" H 1650 3750 50  0001 C CNN
F 3 "" H 1650 3750 50  0001 C CNN
	1    1650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3750 1650 3800
Wire Wire Line
	1300 4000 1350 4000
Wire Wire Line
	1350 4000 1350 4050
Text Label 1500 3600 2    50   ~ 0
TX
Text Label 1500 3700 2    50   ~ 0
RX
Wire Wire Line
	2750 1700 2750 1750
$Comp
L Device:C C2
U 1 1 6158CDAF
P 2750 1550
F 0 "C2" H 2865 1596 50  0000 L CNN
F 1 "10uF" H 2865 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2788 1400 50  0001 C CNN
F 3 "~" H 2750 1550 50  0001 C CNN
	1    2750 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 615D2D35
P 8100 2150
F 0 "C3" H 8215 2196 50  0000 L CNN
F 1 "100nF" H 8215 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8138 2000 50  0001 C CNN
F 3 "~" H 8100 2150 50  0001 C CNN
	1    8100 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0103
U 1 1 615D3F71
P 8100 1950
F 0 "#PWR0103" H 8100 1800 50  0001 C CNN
F 1 "+3V3" H 8115 2123 50  0000 C CNN
F 2 "" H 8100 1950 50  0001 C CNN
F 3 "" H 8100 1950 50  0001 C CNN
	1    8100 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 615D5216
P 8100 2350
F 0 "#PWR0104" H 8100 2100 50  0001 C CNN
F 1 "GND" H 8105 2177 50  0000 C CNN
F 2 "" H 8100 2350 50  0001 C CNN
F 3 "" H 8100 2350 50  0001 C CNN
	1    8100 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2350 8100 2300
Wire Wire Line
	8100 2000 8100 1950
Text Notes 7750 1650 0    50   Italic 0
Decoupling capacitor
Wire Wire Line
	2750 1300 2750 1350
$Comp
L power:GND #PWR?
U 1 1 616065E6
P 850 1800
F 0 "#PWR?" H 850 1550 50  0001 C CNN
F 1 "GND" H 855 1627 50  0000 C CNN
F 2 "" H 850 1800 50  0001 C CNN
F 3 "" H 850 1800 50  0001 C CNN
	1    850  1800
	1    0    0    -1  
$EndComp
Connection ~ 2750 1350
Connection ~ 1450 1350
Wire Wire Line
	1450 1750 2150 1750
Text Notes 1850 950  0    50   Italic 0
Voltage regulator
Text Notes 850  3150 0    50   Italic 0
Programming Port\n
Text Notes 2650 2900 0    50   Italic 0
Debug LEDs\n
Text Notes 5750 1300 0    50   Italic 0
Main MCU
$Comp
L Device:LED D?
U 1 1 616C2103
P 3250 3450
F 0 "D?" V 3289 3332 50  0000 R CNN
F 1 "Blue" V 3198 3332 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3250 3450 50  0001 C CNN
F 3 "~" H 3250 3450 50  0001 C CNN
	1    3250 3450
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 616C2109
P 3250 3800
F 0 "R?" H 3320 3846 50  0000 L CNN
F 1 "1K" H 3320 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3180 3800 50  0001 C CNN
F 3 "~" H 3250 3800 50  0001 C CNN
	1    3250 3800
	1    0    0    1   
$EndComp
Wire Wire Line
	3250 3650 3250 3600
Wire Wire Line
	3250 3300 3250 3200
Text Label 3450 4000 2    50   ~ 0
gLed
Wire Wire Line
	3250 3950 3250 4000
Wire Wire Line
	3250 4000 3450 4000
Connection ~ 2850 3200
Wire Wire Line
	2450 3200 2850 3200
Wire Wire Line
	2850 3200 3250 3200
Text Label 6900 2400 2    50   ~ 0
gLed
Wire Wire Line
	6500 2400 6900 2400
$Comp
L Device:Battery_Cell BT1
U 1 1 6158D264
P 850 1600
F 0 "BT1" H 968 1696 50  0000 L CNN
F 1 "3.7V" H 968 1605 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 850 1660 50  0001 C CNN
F 3 "~" V 850 1660 50  0001 C CNN
	1    850  1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1400 850  1350
Wire Wire Line
	850  1350 1450 1350
Wire Wire Line
	850  1700 850  1800
$Comp
L power:+3.3V #PWR?
U 1 1 6183491B
P 2850 3150
F 0 "#PWR?" H 2850 3000 50  0001 C CNN
F 1 "+3.3V" H 2865 3323 50  0000 C CNN
F 2 "" H 2850 3150 50  0001 C CNN
F 3 "" H 2850 3150 50  0001 C CNN
	1    2850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3150 2850 3200
$Comp
L Connector:Conn_01x06_Female J?
U 1 1 61837E79
P 1100 3800
F 0 "J?" H 992 3275 50  0000 C CNN
F 1 "Conn_01x06_Female" H 992 3366 50  0000 C CNN
F 2 "" H 1100 3800 50  0001 C CNN
F 3 "~" H 1100 3800 50  0001 C CNN
	1    1100 3800
	-1   0    0    1   
$EndComp
Text Notes 900  3500 0    50   Italic 0
DTR
Text Notes 900  3800 0    50   Italic 0
VCC
Text Notes 900  3900 0    50   Italic 0
CTS
Wire Wire Line
	1300 3600 1500 3600
Wire Wire Line
	1300 3700 1500 3700
Wire Wire Line
	1300 3800 1650 3800
Text Notes 1550 4500 0    50   Italic 0
FLASH
Wire Wire Line
	5900 1600 5900 1650
Text Label 5050 1900 0    50   Italic 0
~RST
Wire Wire Line
	5050 1900 5300 1900
$Comp
L power:+3V3 #PWR?
U 1 1 6184C1F5
P 4800 1950
F 0 "#PWR?" H 4800 1800 50  0001 C CNN
F 1 "+3V3" H 4815 2123 50  0000 C CNN
F 2 "" H 4800 1950 50  0001 C CNN
F 3 "" H 4800 1950 50  0001 C CNN
	1    4800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1950 4800 2100
Wire Wire Line
	4800 2100 5300 2100
$Comp
L Device:R R?
U 1 1 6184E517
P 950 4950
F 0 "R?" H 1020 4996 50  0000 L CNN
F 1 "10K" H 1020 4905 50  0000 L CNN
F 2 "" V 880 4950 50  0001 C CNN
F 3 "~" H 950 4950 50  0001 C CNN
	1    950  4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5150 950  5100
$Comp
L power:+3.3V #PWR?
U 1 1 6185013C
P 950 4750
F 0 "#PWR?" H 950 4600 50  0001 C CNN
F 1 "+3.3V" H 965 4923 50  0000 C CNN
F 2 "" H 950 4750 50  0001 C CNN
F 3 "" H 950 4750 50  0001 C CNN
	1    950  4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4750 950  4800
$Comp
L power:GND #PWR?
U 1 1 618511AE
P 950 5550
F 0 "#PWR?" H 950 5300 50  0001 C CNN
F 1 "GND" H 955 5377 50  0000 C CNN
F 2 "" H 950 5550 50  0001 C CNN
F 3 "" H 950 5550 50  0001 C CNN
	1    950  5550
	1    0    0    -1  
$EndComp
Text Label 1250 5150 2    50   Italic 0
~RST
Wire Wire Line
	1250 5150 950  5150
$Comp
L Device:R R?
U 1 1 6185664F
P 1700 5350
F 0 "R?" H 1770 5396 50  0000 L CNN
F 1 "10K" H 1770 5305 50  0000 L CNN
F 2 "" V 1630 5350 50  0001 C CNN
F 3 "~" H 1700 5350 50  0001 C CNN
	1    1700 5350
	1    0    0    1   
$EndComp
Wire Wire Line
	1700 5150 1700 5200
$Comp
L power:+3.3V #PWR?
U 1 1 61856657
P 1700 4750
F 0 "#PWR?" H 1700 4600 50  0001 C CNN
F 1 "+3.3V" H 1715 4923 50  0000 C CNN
F 2 "" H 1700 4750 50  0001 C CNN
F 3 "" H 1700 4750 50  0001 C CNN
	1    1700 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1700 5550 1700 5500
Text Label 2100 5150 2    50   Italic 0
boot_sel
$Comp
L power:GND #PWR?
U 1 1 61857871
P 1700 5550
F 0 "#PWR?" H 1700 5300 50  0001 C CNN
F 1 "GND" H 1705 5377 50  0000 C CNN
F 2 "" H 1700 5550 50  0001 C CNN
F 3 "" H 1700 5550 50  0001 C CNN
	1    1700 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6185AF6D
P 7100 1950
F 0 "R?" H 7170 1996 50  0000 L CNN
F 1 "10K" H 7170 1905 50  0000 L CNN
F 2 "" V 7030 1950 50  0001 C CNN
F 3 "~" H 7100 1950 50  0001 C CNN
	1    7100 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2100 6500 2100
Wire Wire Line
	7100 1650 7100 1800
Wire Wire Line
	5900 1650 7100 1650
Connection ~ 5900 1650
Wire Wire Line
	5900 1650 5900 1700
$Comp
L Switch:SW_Push SW?
U 1 1 6186E11D
P 950 5350
F 0 "SW?" V 996 5302 50  0000 R CNN
F 1 "SW_Push" V 905 5302 50  0000 R CNN
F 2 "" H 950 5550 50  0001 C CNN
F 3 "~" H 950 5550 50  0001 C CNN
	1    950  5350
	0    -1   -1   0   
$EndComp
Connection ~ 950  5150
Text Notes 900  4500 0    50   Italic 0
RST
$Comp
L Switch:SW_Push SW?
U 1 1 61873BE2
P 1700 4950
F 0 "SW?" V 1746 4902 50  0000 R CNN
F 1 "SW_Push" V 1655 4902 50  0000 R CNN
F 2 "" H 1700 5150 50  0001 C CNN
F 3 "~" H 1700 5150 50  0001 C CNN
	1    1700 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 5150 2100 5150
Connection ~ 1700 5150
$EndSCHEMATC
