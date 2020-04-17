1 REM The program that follows is a reconstruction
2 REM of the Oregon Trail game written for HP time-shared
3 REM BASIC by Don Rawitsch and Bill Heinemann and Paul Dillenberger
4 REM in 1971. Its source is an updated version published in the
5 REM July-August 1978 issue of Creative Computing.
10 REM PROGRAM NAME - 0REGON        VERSION:01/01/78
20 REM ORIGINAL PROGRAMMING BY BILL HEINEMANN - 1971
30 REM SUPPORT RESEARCH AND MATERIALS BY DON RAVITSCH
40 REM MINNESOTA EDUCATIONAL COMPUTING CONSORTIUM STAFF
50 REM CDC CYBER 70/73-26 BASIC 3-1
60 REM DOCUMENTATION BOOKLET 'OREGON' AVAILABLE FROM
61 REM    MECC SUPPORT SERVICES
62 REM    2520 BROADWAY DRIVE
63 REM    ST. PAUL, MN  55113
80 REM
91 DIM S$(4)
92 DIM D$(4)
93  R1 = 0
100 REM  *FOR THE MEANING OF THE VARIABLES USED, LIST LINES 6470-6790*
110 REM
140 REM Function to return Modulo X of current random number
145 REM (GOSUB 7000 first!)
150 DEF FNM(X) = R1 - (INT(R1 / X) * X)
175 PRINT "Welcome to the Oregon Trail."
230 REM ***INSTRUCTIONS***
300 REM   The instructions have been moved out of the program source
499 REM   due to space considerations. Enter at the CMS command prompt;
510 REM
520 REM        HELP OREGON
670 PRINT
680 PRINT "Good luck!!!"
690 PRINT
700 PRINT
710 PRINT "How good a shot are you with your rifle?"
715 PRINT
720 PRINT "  (1) Ace Marksman,  (2) Good Shot,  (3) Fair To Middlin'"
730 PRINT "         (4) Need More Practice,  (5) Shaky Knees"
735 PRINT
740 PRINT "The better you claim you are, the faster you'll have to be"
742 PRINT "with your weapon to be successful. Enter one of the above";
690 D9 = 0
760 INPUT D9
770 IF D9 > 5 THEN 790
780 GOTO 810
790 D9 = 0
REM *** INITIAL PURCHASES***
810 X1 =  - 1
820 K8 = 0
821 S4 = 0
822 F1 = 0
823 F2 = 0
824 M = 0
825 M9 = 0
826 D3 = 0
830 PRINT
840 PRINT
850 PRINT "How much do you want to spend on your oxen team";
851 A = 0
860 INPUT A
870 IF A >= 200 THEN 900
880 PRINT A; "is not enough. You must spend $200 on oxen."
890 GOTO 850
900 IF A <= 300 THEN 930
910 PRINT A; "is too much; you can only spend $300 on oxen."
920 GOTO 850
930 PRINT "You have spent $";  A; "."
931 PRINT "How much do you want to spend on food";
932 F = 0
940 INPUT F
950 IF F >= 0 THEN 980
960 PRINT "Inconceivable! ";
970 GOTO 930
980 PRINT "You have spent $";  A + F ; "."
981 PRINT "How much do you want to spend on ammunition";
982 B = 0
990 INPUT B
1000 IF B >= 0 THEN 1030
1010 PRINT "Inconceivable! ";
1020 GOTO 980
1030 PRINT "You have spent $";  A + F + B;  "."
1031 PRINT "How much do you want to spend on clothing";
1032 C = 0
1040 INPUT C
1050 IF C >= 0 THEN 1080
1060 PRINT "Inconceivable! ";
1070 GOTO 1030
1080 PRINT "You have spent $";  A + F + B + C;  "."
1081 PRINT "How much do you want to spend on miscellaneous supplies";
1082 M1 = 0
1090 INPUT M1
1100 IF M1 >= 0 THEN 1130
1110 PRINT "Inconceivable! ";
1120 GOTO 1080
1130 T = 700 - A - F - B - C - M1
1140 IF T >= 0 THEN 1170
1150 PRINT "You overspent -- you only had $700 to spend. Buy again."
1160 GOTO 830
1170 B = 50 * B
1180 PRINT "After all your purchases, you now have "; T; " dollars left"
1190 PRINT
1200 PRINT "Monday, March 29 1847"
1210 PRINT
1220 GOTO 1750
1230 IF M >= 2040 THEN 5430
1240 REM ***SETTING DATE***
1250 D3 = D3 + 1
1260 PRINT
1270 PRINT "Monday, ";
1280 IF D3 > 10 THEN 1300
1290 GO TO 1310, 1330, 1350, 1370, 1390, 1410, 1430, 1450, 1470, 1490 ON D3
1300 GO TO 1510, 1530, 1550, 1570, 1590, 1610, 1630, 1650, 1670, 1690 ON D3 - 10
1310 PRINT "April 12 ";
1320 GOTO 1720
1330 PRINT "April 26 ";
1340 GOTO 1720
1350 PRINT "May 10 ";
1360 GOTO 1720
1370 PRINT "May 24 ";
1380 GOTO 1720
1390 PRINT "June 7 ";
1400 GOTO 1720
1410 PRINT "June 21 ";
1420 GOTO 1720
1430 PRINT "July 5 ";
1440 GOTO 1720
1450 PRINT "July 19 ";
1460 GOTO 1720
1470 PRINT "August 2 ";
1480 GOTO 1720
1490 PRINT "August 16 ";
1500 GOTO 1720
1510 PRINT "August 31 ";
1520 GOTO 1720
1530 PRINT "September 13 ";
1540 GOTO 1720
1550 PRINT "September 27 ";
1560 GOTO 1720
1570 PRINT "October 11 ";
1580 GOTO 1720
1590 PRINT "October 25 ";
1600 GOTO 1720
1610 PRINT "November 8 ";
1620 GOTO 1720
1630 PRINT "November 22 ";
1640 GOTO 1720
1650 PRINT "December 6 ";
1660 GOTO 1720
1670 PRINT "December 20 ";
1680 GOTO 1720
1690 PRINT "You have been on the trail too long  -- ---"
1700 PRINT "Your family dies in the first blizzard of winter."
1710 GOTO 5170
1720 PRINT "1847"
1730 PRINT
1740 REM ***BEGINNING EACH TURN***
1750 IF F >= 0 THEN 1770
1760 F = 0
1770 IF B >= 0 THEN 1790
1780 B = 0
1790 IF C >= 0 THEN 1810
1800 C = 0
1810 IF M1 >= 0 THEN 1830
1820 M1 = 0
1830 IF F >= 13 THEN 1850
1840 PRINT "You'd better do some hunting or buy food and soon!!!"
1850 F = INT(F)
1860 B = INT(B)
1870 C = INT(C)
1880 M1 = INT(M1)
1890 T = INT(T)
1900 M = INT(M)
1910 M2 = M
1920 IF S4=1 THEN 1950
1930 IF K8=1 THEN 1950
1940 GOTO 1990
1950 T = T - 20
1960 IF T < 0 THEN 5080
1970 PRINT "Doctor's bill is $20"
1980 K8 = 0
1981 S4 = 0
1990 IF M9=1 THEN 2020
2000 PRINT "Total mileage is "; M
2010 GOTO 2040
2020 PRINT "Total mileage is 950"
2030 M9 = 0
2040 PRINT "Food","Bullets","Clothing","Misc. Supp.","Cash"
2050 PRINT F,B,C,M1,T
2060 IF X1= - 1 THEN 2170
2070 X1 = X1 * (-1)
2080 PRINT "Do you want to (1) stop at the next Fort, (2) hunt, ";
2090 PRINT "or (3) continue?"
2091 X = 0
2100 INPUT X
2110 IF X > 2 THEN 2150
2120 IF X < 1 THEN 2150
2130 X = INT(X)
2140 GOTO 2270
2150 X = 3
2160 GOTO 2270
2170 PRINT "Do you want to (1) hunt, or (2) continue?"
2181 X = 0
2180 INPUT X
2190 IF X=1 THEN 2210
2200 X = 2
2210 X = X + 1
2220 IF X=3 THEN 2260
2230 IF B > 39 THEN 2260
2240 PRINT "Tough. You need more bullets to go hunting."
2250 GOTO 2170
2260 X1 = X1 * (-1)
2270 GO TO 2290,2540,2720 ON X
REM ***STOPPING AT FORT***
2290 PRINT "Enter what you wish to spend on the following:"
2300 PRINT "Food";
2310 GOSUB 2329
2320 GOTO 2410
2329 P = 0
2330 INPUT P
2340 IF P < 0 THEN 2400
2350 T = T - P
2360 IF T >= 0 THEN 2400
2370 PRINT "You don't have that much -- keep your spending down."
2375 PRINT "You miss your chance to spend on that item."
2380 T = T + P
2390 P = 0
2400 RETURN
2410 F = F + 2 / 3 * P
2420 PRINT "Ammunition";
2430 GOSUB 2330
2440 B = INT(B + 2 / 3 * P * 50)
2450 PRINT "Clothing";
2460 GOSUB 2330
2470 C = C + 2/3 * P
2480 PRINT "Miscellaneous supplies";
2490 GOSUB 2330
2500 M1 = M1 + 2 / 3 * P
2510 M = M - 45
2520 GOTO 2720
REM ***HUNTING***
2540 IF B > 39 THEN 2570
2550 PRINT "Tough -- you need more bullets to go hunting."
2560 GOTO 2080
2570 M = M - 45
2580 GOSUB 6140
2590 IF B1 <= 1 THEN 2660
2600 GOSUB 7000
2502 PRINT "Debug: random is "; FNM(100)
2605 IF FNM(100) < 13 * B1 THEN 2710
2610 F = F + 48 - 2 * B1
2620 PRINT "Nice shot -- right on target -- good eatin' tonight!!"
2630 B = B - 10 - 3 * B1
2640 GOTO 2720
REM **BELLS IN LINE 2660**
2660 PRINT "Right between the eyes -- you got a big one!!!"
2670 PRINT "Full bellies tonight!"
2680 GOSUB 7000
2685 F = F + 52 + FNM(6)
2690 GOSUB 7000
2695 B = B - 10 - FNM(4)
2700 GOTO 2720
2710 PRINT "You missed -- and your dinner got away....."
2720 IF F >= 13 THEN 2750
2730 GOTO 5060
REM ***EATING***
2750 PRINT "Do you want to eat (1) poorly (2) moderately or (3) well";
2770 E = 0
2771 INPUT E
2780 IF E > 3 THEN 2750
2790 IF E < 1 THEN 2750
2800 E = INT(E)
2810 F = F - 8 - 5 * E
2820 IF F >= 0 THEN 2860
2830 F = F + 8 + 5 * E
2840 PRINT "You can't eat that well."
2850 GOTO 2750
2860 GOSUB 7000
2865 M = M + 200 + (A - 220) / 5 + FNM(10)
2870 L1 = 0
2871 C1 = 0
REM ***RIDERS ATTACK***
2890 GOSUB 7000
2895 IF FNM(10) > ((M/100 - 4) ** 2 + 72)/((M/100 - 4) ** 2 + 12) - 1 THEN 3550
2900 REM Meet party of (perhaps hostile) riders
2905 GOSUB 7000
2910 S5 = 0
2900 PRINT "Riders ahead. They ";
2925 IF FNM(10) <  8 THEN 2950
2930 PRINT "don't ";
2940 S5 = 1
2950 PRINT "look hostile. Choose your tactics:"
2970 PRINT "(1) run  (2) attack  (3) continue  (4) circle wagons";
2980 GOSUB 7000
2985 IF FNM(10) > 2 THEN 3000
2990 S5 = 1 - S5
3000 T1 = 0
3001 INPUT T1
3010 IF T1 < 1 THEN 2970
3020 IF T1 > 4 THEN 2970
3030 T1 = INT(T1)
3040 IF S5=1 THEN 3330
3050 IF T1 > 1 THEN 3110
3060 M = M + 20
3070 M1 = M1 - 15
3080 B = B - 150
3090 A = A - 40
3100 GOTO 3470
3110 IF T1 > 2 THEN 3240
3120 GOSUB 6140
3130 B = B - B1 * 40 - 80
3140 IF B1 > 1 THEN 3170
3150 PRINT "Nice shooting -- you drove them off."
3160 GOTO 3470
3170 IF B1 <= 4 THEN 3220
3180 PRINT "Lousy shot -- you got knifed."
3190 K8 = 1
3200 PRINT "You have to see ol' doc blanchard."
3210 GOTO 3470
3220 PRINT "Kinda slow with your Mississippi rifle."
3230 GOTO 3470
3240 IF T1 > 3 THEN 3290
3250 GOSUB 7000
3255 IF FNM(10) > 8 THEN 3450
3260 B = B - 150
3270 M1 = M1 - 15
3280 GOTO 3470
3290 GOSUB 6140
3300 B = B - B1 * 30 - 80
3310 M = M - 25
3320 GOTO 3140
3330 IF T1 > 1 THEN 3370
3340 M = M + 15
3350 A = A - 10
3360 GOTO 3470
3370 IF T1 > 2 THEN 3410
3380 M = M - 5
3390 B = B - 100
3400 GOTO 3470
3410 IF T1 > 3 THEN 3430
3420 GOTO 3470
3430 M = M - 20
3440 GOTO 3470
3450 PRINT "They did not attack."
3460 GOTO 3550
3470 IF S5=0 THEN 3500
3480 PRINT "Riders were friendly, but check for possible losses."
3490 GOTO 3550
3500 PRINT "Riders were hostile -- check for losses."
3510 IF B >= 0 THEN 3550
3520 PRINT "You ran out of bullets and got massacred by the riders."
3530 GOTO 5170
REM ***SELECTION OF EVENTS***
3550 D1 = 0
3560 RESTORE
3570 GOSUB 7000
3580 D1 = D1 + 1
3590 IF D1=16 THEN 4670
3595 D = 0
3600 READ D
3610 IF FNM(100) > D THEN 3580
3620 DATA 6, 11, 13, 15, 17, 22, 32, 35, 37, 42, 44, 54, 64, 69, 95
3630 IF D1 > 10 THEN 3650
3640 GO TO 3660, 3700, 3740, 3790, 3820, 3850, 3880, 3960, 4130, 4190 ON D1
3650 GO TO 4220, 4290, 4340, 4560, 4610, 4670 ON D1 - 10
3660 PRINT "Wagon breaks down -- lose time and supplies fixing it."
3670 GOSUB 7000
3675 M = M - 15 - FNM(5)
3680 M1 = M1 - 8
3690 GOTO 4710
3700 PRINT "Ox injures leg -- slows you down rest of trip."
3710 M = M - 25
3720 A = A - 20
3730 GOTO 4710
3740 PRINT "Bad luck -- your daughter broke her arm."
3750 PRINT "you had to stop and use supplies to make a sling."
3760 GOSUB 7000
3765 M = M - 5 - FNM(4)
3770 GOSUB 7000
3775 M1 = M1 - 2 - FNM(3)
3780 GOTO 4710
3790 PRINT "Ox wanders off -- spend time looking for it."
3800 M = M - 17
3810 GOTO 4710
3820 PRINT "Your son gets lost -- spend half the day looking for him."
3830 M = M - 10
3840 GOTO 4710
3850 PRINT "Unsafe water -- lose time looking for clean spring."
3860 GOSUB 7000
3865 M = M - FNM(10) - 2
3870 GOTO 4710
3880 IF M > 950 THEN 4490
3890 PRINT "Heavy rains -- time and supplies lost."
3910 F = F - 10
3920 B = B - 500
3930 M1 = M1 - 15
3940 GOSUB 7000
3945 M = M - FNM(10) - 5
3950 GOTO 4710
3960 PRINT "Bandits attack."
3970 GOSUB 6140
3980 B = B - 20 * B1
3990 IF B >= 0 THEN 4030
4000 PRINT "You ran out of bullets -- they get lots of cash."
4010 T = T / 3
4020 GOTO 4040
4030 IF B1 <= 1 THEN 4100
4040 PRINT "You got shot in the leg and they took one of your oxen."
4050 K8 = 1
4060 PRINT "Better have a doc look at your wound."
4070 M1 = M1 - 5
4080 A = A - 20
4090 GOTO 4710
4100 PRINT "Quickest draw outside of Dodge City!!!"
4110 PRINT "You got 'em!"
4120 GOTO 4710
4130 PRINT "There was a fire in your wagon -- food and supplies damage!"
4140 F = F - 40
4150 B = B - 400
4160 GOSUB 7000
4165 M1 = M1 - FNM(8) - 3
4170 M = M - 15
4180 GOTO 4710
4190 PRINT "Lose your way in heavy fog -- time is lost."
4200 GOSUB 7000
4205 M = M - 10 - FNM(5)
4210 GOTO 4710
4220 PRINT "You killed a poisonous snake after it bit you."
4230 B = B - 10
4240 M1 = M1 - 5
4250 IF M1 >= 0 THEN 4280
4260 PRINT "You die of snakebite since you have no medicine."
4270 GOTO 5170
4280 GOTO 4710
4290 PRINT "Wagon gets swamped fording river -- lose food and clothes."
4300 F = F - 30
4310 C = C - 20
4320 GOSUB 7000
4325 M = M - 20 - FNM(20)
4330 GOTO 4710
4340 PRINT "Wild animals attack!"
4350 GOSUB 6140
4360 IF B > 39 THEN 4410
4370 PRINT "You were too low on bullets--"
4380 PRINT "the wolves overpowered you."
4390 K8 = 1
4400 GOTO 5120
4410 IF B1 > 2 THEN 4440
4420 PRINT "Nice shootin' pardner -- they didn't get much."
4430 GOTO 4450
4440 PRINT "Slow on the draw -- they got at your food and clothes."
4450 B = B - 20 * B1
4460 C = C - B1 * 4
4470 F = F - B1 * 8
4480 GOTO 4710
4490 PRINT "Cold weather -- brrrrrrr! -- You ";
4500 GOSUB 7000
4505 IF C > 22 + FNM(4) THEN 4530
4510 PRINT "don't ";
4520 C1 = 1
4530 PRINT "have enough clothing to keep you warm."
4540 IF C1=0 THEN 4710
4550 GOTO 6300
4560 PRINT "Hail storm -- supplies damaged."
4570 GOSUB 7000
4575 M = M - 5 - FNM(10)
4580 B = B - 200
4590 GOSUB 7000
4595 M1 = M1 - 4 - FNM(3)
4600 GOTO 4710
4610 IF E=1 THEN 6300
4620 IF E=3 THEN 4650
4630 GOSUB 7000
4635 IF FNM(100) > 25 THEN 6300
4640 GOTO 4710
4650 GOSUB 7000
4655 IF FNM(100) < 50 THEN 6300
4660 GOTO 4710
4670 PRINT "Helpful indians show you were to find more food."
4680 F = F + 14
4690 GOTO 4710
4700 REM ***MOUNTAINS***
4710 IF M <= 950 THEN 1230
4720 GOSUB 7000
4725 IF FNM(10) > 9 - ((M/100 - 15) ** 2 + 72)/((M/100 - 15) ** 2 + 12) THEN 4860
4730 PRINT "Rugged mountains"
4740 GOSUB 7000
4745 IF FNM(10) > 1 THEN 4780
4750 PRINT "You got lost -- lose valuable time trying to find trail!"
4760 M = M - 60
4770 GOTO 4860
4780 GOSUB 7000
4785 IF FNM(100) > 11 THEN 4840
4790 PRINT "Wagon damaged!-Lose time and supplies."
4800 M1 = M1 - 5
4810 B = B - 200
4820 GOSUB 7000
4825 M = M - 20 - FNM(30)
4830 GOTO 4860
4840 PRINT "The going gets slow."
4850 GOSUB 7000
4855 M = M - 45 - FNM(50)
4860 IF F1=1 THEN 4900
4870 F1 = 1
4880 GOSUB 7000
4885 IF FNM(10) < 8 THEN 4970
4890 PRINT "You made it safely through south pass -- no snow."
4900 IF M < 1700 THEN 4940
4910 IF F2=1 THEN 4940
4920 F2 = 1
4930 GOSUB 7000
4935 IF FNM(10) < 7 THEN 4970
4940 IF M > 950 THEN 1230
4950 M9 = 1
4960 GOTO 1230
4970 PRINT "Blizzard in mountain pass -- time and supplies lost."
4980 L1 = 1
4990 F = F - 25
5000 M1 = M1 - 10
5010 B = B - 300
5020 GOSUB 7000
5025 M = M - 30 - FNM(40)
5030 GOSUB 7000
5035 IF C < 18 + FNM(2) THEN 6300
5040 GOTO 4940
REM ***DYING***
5060 PRINT "You ran out of food and starved to death."
5070 GOTO 5170
5080 T = 0
5090 PRINT "You can't afford a doctor."
5100 GOTO 5120
5110 PRINT "You ran out of medical supplies."
5120 PRINT "You died of ";
5130 IF K8=1 THEN 5160
5140 D$(1) = "dysentery"
5142 D$(2) = "measles"
5143 D$(3) = "pneumonia"
5144 D$(4) = "smallpox"
5145 GOSUB 7000
5146 S6 = INT(FNM(4) + 1)
5147 PRINT D$(S6); "."
5150 GOTO 5170
5160 PRINT "injuries"
5170 PRINT
5180 PRINT "Due to your unfortunate demise, there are a few"
5190 PRINT "formalities we must go through."
5200 PRINT
5210 PRINT "Would you like a minister?"
5220 INPUT C$
5230 PRINT "Would you like a fancy funeral?"
5240 INPUT C$
5250 PRINT "Would you like us to inform your next of kin?"
5260 INPUT C$
5270 IF C$="Y" THEN 5310
5275 IF C$="y" THEN 5310
5280 PRINT "But your Aunt Kate in St. Louis is really worried about you!"
5290 PRINT
5300 GOTO 5330
5310 PRINT "That will be $4.50 for the telegraph charge."
5320 PRINT
5330 PRINT "We thank you for this information, and we are sorry you"
5340 PRINT "didn't make it to the great Territory of Oregon."
5345 PRINT
5350 PRINT "Better luck next time."
5360 PRINT
5370 PRINT
5380 PRINT "                             "; "Sincerely"
5390 PRINT
5400 PRINT "                "; "The Oregon City Chamber of Commerce"
5410 GOTO 9999
REM ***FINAL TURN***
5430 F9 = (2040 - M2) / (M - M2)
5440 F = F + (1 - F9) * (8 * 5 * E)
5450 PRINT
REM **BELLS IN LINES 5470, 5480**
5470 PRINT "You finally arrived at Oregon City"
5480 PRINT "after 2040 long miles -- hooray !!!"
5490 PRINT "A real pioneer!"
5500 PRINT
5510 F9 = INT(F9 * 14)
5520 D3 = D3 * 14 + F9
5530 F9 = F9 + 1
5540 IF F9 < 8 THEN 5560
5550 F9 = F9 - 7
5560 GO TO 5570,5590,5630,5650,5670,5690 ON F9
5570 PRINT "Monday, ";
5580 GOTO 5700
5590 PRINT "Tuesday ";
5600 GOTO 5700
5610 PRINT "Wednesday, ";
5620 GOTO 5700
5630 PRINT "Thursday, ";
5640 GOTO 5700
5650 PRINT "Friday, ";
5660 GOTO 5700
5670 PRINT "Saturday, ";
5680 GOTO 5700
5690 PRINT "Sunday, ";
5700 IF D3 > 124 THEN 5740
5710 D3 = D3 - 93
5720 PRINT "July "; D3; " 1847"
5730 GOTO 5920
5740 IF D3 > 155 THEN 5780
5750 D3 = D3 - 124
5760 PRINT "August "; D3; " 1847"
5770 GOTO 5920
5780 IF D3 > 155 THEN 5820
5790 D3 = D3 - 155
5800 PRINT "September "; D3; " 1847"
5810 GOTO 5920
5820 IF D3 > 216 THEN 5860
5830 D3 = D3 - 155
5840 PRINT "October "; D3; " 1847"
5850 GOTO 5920
5860 IF D3 > 246 THEN 5900
5870 D3 = D3 - 246
5880 PRINT "November "; D3; " 1847"
5890 GOTO 5920
5900 D3 = D3 - 246
5910 PRINT "December "; D3; " 1847"
5920 PRINT
5930 PRINT "Food","Bullets","Clothing","Misc. Supp.","Cash"
5940 IF B > 0 THEN 5960
5950 B = 0
5960 IF C > 0 THEN 5980
5970 C = 0
5980 IF M1 > 0 THEN 6000
5990 M1 = 0
6000 IF T > 0 THEN 6020
6010 T = 0
6020 IF F > 0 THEN 6040
6030 F = 0
6040 PRINT INT(F),INT(B),INT(C),INT(M1),INT(T)
6050 PRINT
6060 PRINT "          "; "President James K. Polk sends you his"
6070 PRINT "                "; "heartiest congratulations"
6080 PRINT
6090 PRINT "          "; "and wishes you a prosperous life ahead"
6100 PRINT
6110 PRINT "                     "; "at your new home."
6120 GOTO 9999
6130 REM ***SHOOTING SUB-ROUTINE***
6131 REM THE METHOD OF TIMING THE SHOOTING
6132 REM WILL VARY FROM SYSTEM TO SYSTEM.
6133 REM USERS WILL PROBABLY PREFER TO USE
6134 REM IF TIMING ON THE USER'S SYSTEM IS HIGHLY SUSCEPTIBLE
6135 REM TO SYSTEM RESPONSE TIME, THE FORMULA IN LINE 6240 CAN
6136 REM BE TAILORED TO ACCOMODATE THIS BY EITHER INCREASING
6137 REM OR DECREASING THE 'SHOOTING' TIME RECORDED BY THE SYSTEM.
6140 REM MOVED TO TOP OF PROGRAM DIM S$(5)
6140 PRINT
6141 PRINT "Ready. Aim. Fire!"
6145 REM   CALL/360 BASIC takes all alphabetic input in upper case.
6150 S$(1) = "BANG"
6160 S$(2) = "BLAM"
6170 S$(3) = "POW"
6180 S$(4) = "WHAM"
6185 GOSUB 7000
6190 S6 =  FNM(4) + 1
6200 PRINT "Enter (in upper or lower case); "; S$(S6)
6210 B3 = TIM(0)
6220 INPUT C$
6230 B1 = TIM(0)
6252 PRINT "Debug: times "; B1; " "; B3; " Elapsed = "; B1-B3 ;
6240 B1 = ((B1 - B3) * 2) - (D9 - 1)
6250 PRINT
6192 PRINT "Debug: S6 is"; S6; ", expect "; S$(S6); ", typed "; C$
6255 IF B1 > 0 THEN 6260
6257 B1 = 0
6260 IF C$=S$(S6) THEN 6280
6270 B1 = 9
6280 RETURN
6290 REM ***ILLNESS SUB-ROUTINE***
6300 GOSUB 7000
6301 IF FNM(100) < 10 + 35 * (E - 1) THEN 6370
6302 GOSUB 7000
6303 IF FNM(100) < 100 - (40 / 4 ** (E - 1)) THEN 6410
6311 GOSUB 7000
6320 PRINT "Serious illness!"
6330 PRINT "You must stop for medical attention."
6340 M1 = M1 - 10
6350 S4 = 1
6360 GOTO 6440
6370 PRINT "Mild illness -- medicine used."
6380 M = M - 5
6390 M1 = M1 - 2
6400 GOTO 6440
6410 PRINT "Bad illness -- medicine used."
6420 M = M - 5
6430 M1 = M1 - 5
6440 IF M1 < 0 THEN 5110
6450 IF L1=1 THEN 4940
6460 GOTO 4710
7000 REM RANDOM NUMBER GENERATOR BETWEEN 0 AND 2 ** 32
7010     PRINT "Debug random: old"; R1;
7020     REM (RE)INITIALIZE RANDOM NUMBER GENERATOR
7030     IF R1 > 0 GOTO 7100
7040     R1 = TIM(X) + DAT(X)
7100     R1 = 65541 * R1
7200     IF R1 <= (2 ** 32) THEN 7500
7200     PRINT "BIG"; R1;
7400     R1 = FNM(2**32)
7500     PRINT "new"; R1
7600     RETURN
8800 REM ***IDENTIFICATION OF VARIABLES IN THE PROGRAM***
8480 REM A = AMOUNT SPENT ON ANIMALS
8490 REM B = AMOUNT SPENT ON AMMUNITION
8500 REM B1 = ACTUAL RESPONSE TIME FOR INPUTTING "BANG"
8510 REM B3 = CLOCK TIME AT START OF INPUTTING "BANG"
8520 REM C = AMOUNT SPENT ON CLOTHING
8530 REM C1 = FLAG FOR INSUFFICIENT CLOTHING IN COLD WEATHER
8540 REM C$ = YES/NO RESPONSE TO QUESTIONS
8550 REM D1 = COUNTER IN GENERATING EVENTS
8560 REM D3 = TURN NUMBER FOR SETTING DATE
8570 REM D4 = CURRENT DATE
8580 REM D9 = CHOICE OF SHOOTING EXPERTISE LEVEL
8581 REM D$ = VARIATIONS OF FATAL DISEASES
8590 REM E = CHOICE OF EATING
8600 REM F = AMOUNT SPENT ON FOOD
8610 REM F1 = FLAG FOR CLEARING SOUTH PASS
8620 REM F2 = FLAG FOR CLEARING BLUE MOUNTAINS
8630 REM F9 = FRACTION OF 2 WEEKS TRAVELED ON FINAL TURN
8640 REM K8 = FLAG FOR INJURY
8650 REM L1 = FLAG FOR BLIZZARD
8660 REM M = TOTAL MILEAGE WHOLE TRIP
8670 REM M1 = AMOUNT SPENT ON MISCELLANEOUS SUPPLIES
8680 REM M2 = TOTAL MILEAGE UP THROUGH PREVIOUS TURN
8690 REM M9 = FLAG FOR CLEARING SOUTH PASS IN SETTING MILEAGE
8700 REM P = AMOUNT SPENT ON ITEMS AT FORT
5705 REM Q9 = SCRATCH VARIABLE FOR RANDOM NUMBER GENERATOR
8710 REM R1 = RANDOM NUMBER IN CHOOSING EVENTS
8720 REM S4 = FLAG FOR ILLNESS
8730 REM S5 = "HOSTILITY OF RIDERS" FACTOR
8740 REM S6 = SHOOTING/DISEASE WORD SELECTOR
8742 REM R1 = SEED / RESULT FOF RANDOM NUMBER GENERATOR
8750 REM S$ = VARIATIONS OF SHOOTING WORD
8760 REM T = CASH LEFT OVER AFTER INITIAL PURCHASES
8770 REM T1 = CHOICE OF TACTICS WHEN ATTACKED
8780 REM X = CHOICE OF ACTION FOR EACH TURN
8790 REM X1 = FLAG FOR FORT OPTION
9999 END
