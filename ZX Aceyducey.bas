Check 0FBD62A1
Auto 8224

# Run-time Variables

Var q: Num = 0
Var a: Num = 11
Var b: Num = 12
Var m: Num = 40
Var c: Num = 6
Var z$: Str = "y"
Var w$: Str = "y"
Var l$: Str = "y"

# End Run-time Variables

  10 REM *** From the Book Basic Computer Games - Creative Computing - David H Ahl
  20 REM *** Conversion from Microsoft Basic to Sinclair Basic and ZX Spectrum screen resolution Dave Neeson
  30 BORDER 1: PAPER 6: INK 0
  40 CLS
  50 PRINT TAB 5;"ACEY DUCEY CARD GAME"
  60 PRINT
  70 REM *** lines 30-60 sets the screem colour and prints the game header ***
  80 PRINT "How Acey Ducey is played :"
  90 PRINT "You are dealt two cards face Up."
 100 PRINT "You have an option to bet or not": PRINT "depending on whether you feel": PRINT "the next card will have a value": PRINT "between the first two."
 110 PRINT
 120 PRINT "If you do not want to bet, type a bet value of 0"
 130 REM *** Lines 80-120 print the game rules ***
 140 LET Q=100
 150 REM *** set the initial funds available - variable Q ***
 160 INPUT "Ready to continue?(y/n) ";z$
 170 IF z$="y" THEN GO TO 210
 180 IF z$="Y" THEN GO TO 210
 190 GO TO 960
 200 REM *** Lines 160-190 look for a y or Y key input to move on to line 210 else goto line 960 (end game) ***
 210 CLS
 220 PRINT TAB 5;"ACEY DUCEY CARD GAME"
 230 PRINT
 240 PRINT "You now have ";Q;" Dollars.": PRINT
 250 REM *** Lines 210 t0 240 clear screen and advise the new funds balance, Q. ****
 260 PRINT "Here are your next two cards: ": PRINT
 270 LET A=INT (2+RND*14)
 280 IF A<2 THEN GO TO 270
 290 IF A>14 THEN GO TO 270
 300 REM *** Lines 270 to 290 calculate the first card value, A ***
 310 LET B=INT (2+RND*14)
 320 IF B<2 THEN GO TO 310
 330 IF B>14 THEN GO TO 310
 340 REM *** Lines 310 to 330 calculate the second card value, B ***
 350 IF A>=B THEN GO TO 270
 360 REM *** If value A is greater or equal to B, then recalculate both cards ***
 370 IF A<11 THEN PRINT "Card 1 is : ";A: GO TO 430
 380 IF A=11 THEN PRINT "Card 1 is : Jack": GO TO 430
 390 IF A=12 THEN PRINT "Card 1 is : Queen": GO TO 430
 400 IF A=13 THEN PRINT "Card 1 is : King": GO TO 430
 410 IF A=14 THEN PRINT "Card 1 is : Ace"
 420 REM *** lines 370-410 interpret value A and peresent as a card value ***
 430 IF B<11 THEN PRINT "Card 2 is : ";B: GO TO 490
 440 IF B=11 THEN PRINT "Card 2 is : Jack": GO TO 490
 450 IF B=12 THEN PRINT "Card 2 is : Queen": GO TO 490
 460 IF B=13 THEN PRINT "Card 2 is : King": GO TO 490
 470 IF B=14 THEN PRINT "Card 2 is : Ace"
 480 REM *** lines 430-470 interpret value B and peresent as a card value ***
 490 PRINT
 500 PRINT
 510 INPUT "What is your bet? ";M
 520 PRINT "Your bet is ";M;" Dollars."
 530 IF M<>0 THEN GO TO 610
 540 REM *** Take bet value M and confirm value on screen. Ensure value is not 0 ***
 550 PRINT : PRINT "No bet huh?"
 560 INPUT "Try again?(y/n) ";t$
 570 IF t$="y" THEN GO TO 210
 580 IF t$="Y" THEN GO TO 210
 590 GO TO 960
 600 REM *** Ensure player wishes to continue. If not, goto line 960 (end game) ***
 610 IF M<=Q THEN GO TO 670
 620 REM *** check bet M is less than or equal to funds value Q ***
 630 PRINT "Sorry, you have bet too much."
 640 PRINT "You have only ";Q;" Dollars left."
 650 GO TO 490
 660 REM *** Advise player on remaining funds and loop back to bet again ***
 670 LET C=INT (2+RND*14)
 680 IF C<2 THEN GO TO 670
 690 IF C>14 THEN GO TO 670
 700 IF C<11 THEN PRINT "Your Card is : ";C: GO TO 760
 710 IF C=11 THEN PRINT "Your Card is : Jack": GO TO 760
 720 IF C=12 THEN PRINT "Your Card is : Queen": GO TO 760
 730 IF C=13 THEN PRINT "Your Card is : King": GO TO 760
 740 IF C=14 THEN PRINT "Your Card is : Ace"
 750 REM *** Calculate and advise value of next card, C ***
 760 IF C>A THEN GO TO 790
 770 GO TO 880
 780 REM *** Check if card C is less than Card A, if so, LOSE ***
 790 IF C>=B THEN GO TO 880
 800 REM *** Check if Card C is larger than or equal to Card B, else WIN ***
 810 PRINT "YOU WIN!!!"
 820 PRINT : LET Q=Q+M
 830 INPUT "Try again?(y/n) ";w$
 840 IF w$="y" THEN GO TO 210
 850 IF w$="Y" THEN GO TO 210
 860 GO TO 960
 870 REM *** Show win and add winnings to fund. Ask if player wishes to bet again, if no, goto line 960 (end game) ****
 880 PRINT "SORRY, YOU LOSE": LET Q=Q-M
 890 IF Q=0 THEN GO TO 950
 900 INPUT "Try again?(y/n) ";l$
 910 IF l$="y" THEN GO TO 210
 920 IF l$="Y" THEN GO TO 210
 930 GO TO 960
 940 REM *** Show loss and deduct losses from fund. Ask if player wishes to bet again, if no, exit program ****
 950 PRINT : PRINT "Sorry, you are out of funds."
 960 PRINT : PRINT "Bye, hope you had fun!"
 970 STOP
 980 REM *** program exit ***
