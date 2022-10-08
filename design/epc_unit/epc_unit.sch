EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:eSim_SKY130
LIBS:eSim_SKY130_Subckts
EELAYER 25 0
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
L sky130_fd_pr__nfet_01v8 SC3
U 1 1 63416721
P 5550 3450
F 0 "SC3" H 5600 3750 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 5850 3537 50  0000 R CNN
F 2 "" H 5550 1950 50  0001 C CNN
F 3 "" H 5550 3450 50  0001 C CNN
	1    5550 3450
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8 SC4
U 1 1 634167A0
P 5550 4550
F 0 "SC4" H 5600 4850 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 5850 4637 50  0000 R CNN
F 2 "" H 5550 3050 50  0001 C CNN
F 3 "" H 5550 4550 50  0001 C CNN
	1    5550 4550
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__pfet_01v8 SC1
U 1 1 63416833
P 5550 1650
F 0 "SC1" H 5600 1950 50  0000 C CNN
F 1 "sky130_fd_pr__pfet_01v8" H 5850 1737 50  0000 R CNN
F 2 "" H 5550 150 50  0001 C CNN
F 3 "" H 5550 1650 50  0001 C CNN
	1    5550 1650
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__pfet_01v8 SC2
U 1 1 63416896
P 5550 2600
F 0 "SC2" H 5600 2900 50  0000 C CNN
F 1 "sky130_fd_pr__pfet_01v8" H 5850 2687 50  0000 R CNN
F 2 "" H 5550 1100 50  0001 C CNN
F 3 "" H 5550 2600 50  0001 C CNN
	1    5550 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2300 5750 1950
Wire Wire Line
	5750 4250 5750 3750
Wire Wire Line
	5750 3150 5750 2900
Wire Wire Line
	5250 2600 4750 2600
Wire Wire Line
	4750 2600 4750 3450
Wire Wire Line
	4750 3450 5250 3450
$Comp
L PORT U1
U 2 1 63416B1C
P 4100 3000
F 0 "U1" H 4150 3100 30  0000 C CNN
F 1 "PORT" H 4100 3000 30  0000 C CNN
F 2 "" H 4100 3000 60  0000 C CNN
F 3 "" H 4100 3000 60  0000 C CNN
	2    4100 3000
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 1 1 63416BD6
P 4100 1650
F 0 "U1" H 4150 1750 30  0000 C CNN
F 1 "PORT" H 4100 1650 30  0000 C CNN
F 2 "" H 4100 1650 60  0000 C CNN
F 3 "" H 4100 1650 60  0000 C CNN
	1    4100 1650
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 3 1 63416C87
P 4150 4550
F 0 "U1" H 4200 4650 30  0000 C CNN
F 1 "PORT" H 4150 4550 30  0000 C CNN
F 2 "" H 4150 4550 60  0000 C CNN
F 3 "" H 4150 4550 60  0000 C CNN
	3    4150 4550
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 6 1 63416D20
P 6600 3000
F 0 "U1" H 6650 3100 30  0000 C CNN
F 1 "PORT" H 6600 3000 30  0000 C CNN
F 2 "" H 6600 3000 60  0000 C CNN
F 3 "" H 6600 3000 60  0000 C CNN
	6    6600 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 3000 5750 3000
Connection ~ 5750 3000
Wire Wire Line
	4350 3000 4750 3000
Connection ~ 4750 3000
Wire Wire Line
	4400 4550 5250 4550
Wire Wire Line
	4350 1650 5250 1650
$Comp
L PORT U1
U 5 1 63417012
P 5450 950
F 0 "U1" H 5500 1050 30  0000 C CNN
F 1 "PORT" H 5450 950 30  0000 C CNN
F 2 "" H 5450 950 60  0000 C CNN
F 3 "" H 5450 950 60  0000 C CNN
	5    5450 950 
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 4 1 63417083
P 5400 5150
F 0 "U1" H 5450 5250 30  0000 C CNN
F 1 "PORT" H 5400 5150 30  0000 C CNN
F 2 "" H 5400 5150 60  0000 C CNN
F 3 "" H 5400 5150 60  0000 C CNN
	4    5400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4850 5750 5150
Wire Wire Line
	5650 5150 6000 5150
Wire Wire Line
	5700 950  5750 950 
Wire Wire Line
	5750 950  5750 1350
Wire Wire Line
	5650 1650 5950 1650
Wire Wire Line
	5950 1150 5950 2600
Wire Wire Line
	5950 1150 5750 1150
Connection ~ 5750 1150
Wire Wire Line
	5950 2600 5650 2600
Connection ~ 5950 1650
Wire Wire Line
	5650 3450 6000 3450
Wire Wire Line
	6000 3450 6000 5150
Connection ~ 5750 5150
Wire Wire Line
	5650 4550 6000 4550
Connection ~ 6000 4550
$EndSCHEMATC
