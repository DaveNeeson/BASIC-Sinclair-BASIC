Check 59341BD9
Auto 8224

# Run-time Variables

Var a: Num = 0
Var g: Num = 4
Var d: Num = 45
Var r: Num = 3
Var t: Num = 35
Var s: Num = 50
Var m: Num = 3
Var f$: Str = "y"
Var u$: Str = "n"

# End Run-time Variables

  10 REM *** Bombs Away ***
  20 BORDER 1: PAPER 7: INK 0: CLS
  30 PRINT TAB 8;"Bombs Away"
  40 PRINT TAB 5;"Creative Computing.": PRINT
  50 PRINT "You are a bomber pilot in WW-II.": PRINT
  60 PRINT TAB 4;"What side are you on?": PRINT TAB 5;"Italy-1, Allies-2": PRINT TAB 5;"Japan-3, Germany-4"
  70 INPUT "Choose (1-4) ";A
  80 REM *** Ask player to choose a side, variable A ***
  90 IF A>0 AND A<5 THEN GO TO 120
 100 PRINT : PRINT "Try again please": GO TO 70
 110 REM *** Ensure that the player picks a valid choice for A ***
 120 IF A=1 THEN GO TO 180
 130 IF A=2 THEN GO TO 360
 140 IF A=3 THEN GO TO 560
 150 IF A=4 THEN GO TO 640
 160 REM *** Depending on the value of A, goto the correct choice ***
 170 REM *** Italy (A=1) ***
 180 CLS
 190 PRINT TAB 4;"Okay you chose Italy": PRINT
 200 PRINT TAB 4;"What is your target?": PRINT TAB 4;"Albania-1, Greece-2,": PRINT TAB 4;"North Africa-3"
 210 INPUT "Choose (1-3) ";B
 220 IF B>0 AND B<4 THEN GO TO 240
 230 PRINT : PRINT "Try again please": GO TO 180
 240 PRINT : IF B=1 THEN GO TO 280
 250 IF B=2 THEN GO TO 310
 260 IF B=3 THEN GO TO 330
 270 REM *** Target is the value of variable B ***
 280 CLS
 290 PRINT TAB 8;"This should be easy!": PRINT "You're flying a German aircraft."
 300 GO TO 790
 310 CLS
 320 PRINT "Greece? Be careful!": GO TO 790
 330 CLS
 340 PRINT "You're going for the oil, then?": GO TO 790
 350 REM *** Allies (A=2) ***
 360 CLS
 370 PRINT "What is your preferred aircraft?": PRINT TAB 5;"Liberator-1, B-29 -2": PRINT TAB 5;"B-17 -3, Lancaster-4"
 380 INPUT "Choose (1-4) ";G
 390 IF G>0 AND G<5 THEN GO TO 410
 400 PRINT "Try again please": GO TO 360
 410 PRINT : IF G=1 THEN GO TO 460
 420 IF G=2 THEN GO TO 480
 430 IF G=3 THEN GO TO 500
 440 IF G=4 THEN GO TO 520
 450 REM *** Plane choice is the value of variable G ***
 460 CLS
 470 PRINT "You're going to bomb Ploesti, Romania.": GO TO 790
 480 CLS
 490 PRINT "You're dumping the A-bomb on Hiroshima.": GO TO 790
 500 CLS
 510 PRINT "You're chasing the Bismark": PRINT "in the North Sea.": GO TO 790
 520 CLS
 530 PRINT "You're busting a heavy water": PRINT "plant in the Ruhr."
 540 GO TO 790
 550 REM *** Japan (A=3) ***
 560 CLS
 570 PRINT "You're on a Kamikaze mision": PRINT "over the USS Lexington."
 580 INPUT "Is this your first Kamikaze Mission? (y/n) ";F$
 590 IF F$="N" THEN LET S=0: GO TO 1030
 600 IF F$="n" THEN LET S=0: GO TO 1030
 610 PRINT : IF RND>.65 THEN GO TO 910
 620 GO TO 1070
 630 REM *** Germany (A=4) ***
 640 CLS
 650 PRINT "Where is your mission?": PRINT "Russia-1, England-2": PRINT "France-3"
 660 INPUT "Choose (1-3) ";M: IF M>0 AND M<4 THEN GO TO 680
 670 PRINT "Try again please.": GO TO 640
 680 PRINT : IF M=1 THEN GO TO 720
 690 IF M=2 THEN GO TO 740
 700 IF M=3 THEN GO TO 760
 710 REM *** Mission choice is the value of variable M ***
 720 CLS
 730 PRINT "You're nearing Stalingrad.": GO TO 790
 740 CLS
 750 PRINT "You're nearing London.": PRINT "Watch out, they've got RADAR.": GO TO 790
 760 CLS
 770 PRINT "Nearing Versailles.": PRINT "They're nearly defenceless."
 780 REM *** main mission run ***
 790 PRINT
 800 INPUT "How many missions have you flown? ";D
 810 IF D<160 THEN GO TO 860
 820 CLS
 830 PRINT "Missions, not miles..."
 840 PRINT "150 missions is VERY high."
 850 GO TO 800
 860 PRINT : IF D<100 THEN GO TO 890
 870 CLS
 880 PRINT "That's pushing the odds!": GO TO 900
 890 IF D<25 THEN CLS : PRINT "Fresh out of training!": PRINT "Good luck..."
 900 PRINT : IF D<160*RND THEN GO TO 930
 910 PRINT : PRINT "DIRECT HIT!!!! ";INT (200*RND);" KILLED."
 920 PRINT "MISSION SUCCESSFUL.": GO TO 1120
 930 PRINT "MISSED TARGET BY ";INT (2+30*RND);" MILES!"
 940 PRINT : PRINT "NOW YOU'RE REALLY IN FOR IT !!": PRINT
 950 PRINT "Does the enemy have : ": PRINT : PRINT "GUNS-1, MISSILES-2, OR BOTH-3 "
 960 INPUT "Choose (1-3) ";R
 970 IF R>0 AND R<4 THEN GO TO 990
 980 PRINT "Try again.": GO TO 950
 990 CLS : LET T=0: IF R=2 THEN GO TO 1040
1000 PRINT "What's the enemy's hit rate?": INPUT "(10% TO 50%)";S
1010 IF S<10 THEN CLS : PRINT "Wishful thinking...": PRINT : GO TO 1070
1020 IF S>50 THEN CLS : PRINT "An impossible mission then? ": PRINT : GO TO 1070
1030 PRINT
1040 PRINT : IF R>1 THEN LET T=35
1050 IF S+T>100*RND THEN GO TO 1070
1060 PRINT "YOU MADE IT THROUGH": PRINT "TREMENDOUS FLAK!!": GO TO 1120
1070 PRINT : PRINT TAB 5;"* * * * BOOM * * * *"
1080 PRINT "YOU HAVE BEEN SHOT DOWN.....": PRINT
1090 PRINT "Dearly beloved,": PRINT "We are gathered here today to"
1100 PRINT "pay our last tribute..."
1110 REM *** Ask if player would like another go ***
1120 PRINT : PRINT : PRINT : INPUT "Another mission? (Y/N)";U$
1130 IF U$="Y" THEN GO TO 20
1140 IF U$="y" THEN GO TO 20
1150 CLS : PRINT "You are dismissed. For now.": PRINT
1160 STOP
