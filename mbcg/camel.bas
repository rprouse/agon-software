10 PRINT TAB(26);"CAMEL"
20 PRINT TAB(20);"CREATIVE COMPUTING"
30 PRINT TAB(18);"MORRISTOWN, NEW JERSEY"
35 PRINT:PRINT:PRINT
110 PRINT "WOULD YOU LIKE INSTRUCTIONS";
120 INPUT D$
130 IF LEFT$(D$,1)="N" THEN 320
140 PRINT:PRINT "   WELCOME TO CAMEL.  THE QBJEST IS TO TRAVEL"
150 PRINT "200 MILES ACROSS THE GREAT GOBI DESERT."
160 PRINT "A TRIBE OF KNOCKED KNEED PIGMIES WILL BE CHASING YOU."
170 PRINT "YOU WILL BE ASKED FOR COMMANDS EVERY SO OFTEN."
180 PRINT
190 PRINT
200 PRINT
210 PRINT "C O M M A N D S :"
220 PRINT "#1 DRINK FROM YOUR CANTEEN"
230 PRINT "#2 AHEAD MODERATE SPEED"
240 PRINT "#3 AHEAD FULL SPEED"
250 PRINT "#4 STOP FOR THE NIGHT"
260 PRINT "#5 STATUS CHECK"
270 PRINT "#6 HOPE FOR HELP"
275 PRINT
276 PRINT
277 PRINT
278 PRINT
279 PRINT
280 PRINT "YOU HAVE ONE QUART OF WATER WHICH WILL LAST YOU SIX DRINKS."
290 PRINT "YOU MAVE RENEW YOUR WATER SUPPLY COMPLETELY AT AN OASES."
300 PRINT "YOU GET A HALF A QUART IF FOUND BY HELP."
310 PRINT "IF HELP DOES NOT FIND YOU AFTER COMMAND SIX, YOU LOSE."
320 PRINT "GOOD LUCK AND GOOD CAMELING !!"
330 PRINT "YOU ARE IN THE MIDDLE OF THE DESERT AT AN OASIS."
335 GOSUB 2000
340 IF C>199 THEN 1210
350 Z=Z-1
355 IF Z=1 THEN PRINT "----------W A R N I N G---------- GET A DRINK"
360 IF Z<0 THEN 1630
370 P=P+1
380 X2=INT(10*RND(1)+2.5)
390 IF Q>0 THEN 940
400 IF P<4 THEN 470
410 C1=C1+X2
420 IF C1<C THEN 460
430 PRINT "THE PYGMIES HAVE CAPTURED YOU.  CAMEL AND PEOPLE SOUP IS"
440 PRINT "THEIR FAVORITE DISH !!!!!"
450 GOTO 1560
460 PRINT "THE PYGMIES ARE "C-C1;" MILES BEHIND YOU."
470 PRINT "YOU HAVE TRAVELLED ";C;" MILES ALTOGETHER."
480 PRINT "WHAT IS YOUR COMMAND";
490 INPUT Y
500 ON Y GOTO 830,610,680,760,790
550 T=INT(10*RND(1))
560 IF T<>1 THEN 1200
570 PRINT "HELP HAS FOUND YOU IN A STATE OF UNCONSCIOUSNESS."
580 S=3
590 Z=4
600 GOTO 340
610 F=F+1
620 IF F=8 THEN 1190
630 GOSUB 880
640 X1=INT(10*RND(1))
650 C=C+X1
660 PRINT "YOUR CAMEL LIKES THIS PACE."
670 GOTO 340
680 F=F+3
690 IF F>7 THEN 1190
700 GOSUB 880
710 X1=2*INT(10*RND(1))
720 C=C+X1
730 PRINT "YOUR CAMEL IS BURNING ACROSS THE DESERT SANDS."
740 PRINT
750 GOTO 340
760 PRINT "YOUR CAMEL THANKS YOU!"
770 F=0
780 GOTO 350
790 PRINT "YOUR CAMEL HAS ";7-F;" GOOD DAYS LEFT."
800 PRINT "YOU HAVE ";S;" DRINKS LEFT IN YOUR CANTEEN."
810 PRINT "YOU CAN GO ";Z;" COMMANDS WITHOUT DRINKING."
830 S=S-1
840 IF S<0 THEN 1200
850 PRINT "BETTER WATCH FOR AN OASES !"
860 Z=4
870 GOTO 480
880 A=INT(100*RND(1))
890 IF A>5 THEN 1120
900 PRINT "WILD BERBERS HIDDEN IN THE SAND HAVE CAPTURED YOU."
910 PRINT "LUCKILY THE LOCAL SHEIK HAS AGREED TO THEIR RANSOM-"
920 PRINT "DEMANDS.......BUT........WATCH FOR THE PYGMIES !!!"
930 PRINT "YOU HAVE A NEW CHOICE OF SUB-COMMANDS:"
940 PRINT "#7 ATTEMPT AN ESCAPE"
950 PRINT "#8 WAIT FOR PAYMENT"
960 PRINT "YOUR SUB-COMMAND ";
970 INPUT X
980 IF X=8 THEN 1060
990 X1 = INT(10 * RND(1))
1000 IF X1<5 THEN 1040
1010 PRINT "CONGRADULATIONS, YOU SUCCESSFULLY ESCAPED !!!!"
1020 Q=0
1030 GOTO 340
1040 PRINT "YOU WERE MORTALLY WOUNDED BY A PIG STABBER WHILE ESCAPING."
1050 GOTO 1410
1060 X1=INT(100*RND(1))
1070 REM
1080 IF X1>24 THEN 1100
1090 PRINT "YOUR RANSOM HAS BEEN PAID AND YOU ARE FREE TO GO."
1095 Q=0
1096 GOTO 340
1100 PRINT "THE LOCAL SULTAN IS COLLECTING......JUST WAIT......."
1110 GOTO 340
1120 A=INT(10*RND(1))
1130 IF A>2 THEN 1240
1140 PRINT "YOU HAVE ARRIVED AT AN OASES--------YOUR CAMEL IS"
1150 PRINT "FILLING YOUR CANTEEN AND EATING FIGS."
1160 Z=4
1170 S=6
1180 RETURN
1190 PRINT "YOU DIRTY RAPSCALLION! YOU RAN YOUR POOR CAMEL TO DEATH !!"
1200 GOTO 1410
1210 PRINT "YOU WIN, A PARTY IS BEING GIVEN IN YOUR HONOR......."
1220 PRINT ".......THE PYGMIES ARE PLANNING TO ATTEND......."
1230 GOTO 1560
1240 X1=INT(100*RND(1))
1250 IF X1>5 THEN 1350
1260 PRINT "YOU HAVE BEEN CAUGHT IN A SANDSTORM.....GOOD LUCK!"
1270 X5=INT(10*RND(1))
1280 X6=INT(10*RND(1))
1290 IF X6<5 THEN 1320
1300 C=C+X5
1310 GOTO 1330
1320 C=C-X5
1330 PRINT "YOUR NEW POSITION IS ";C;" MILES SO FAR!"
1340 RETURN
1350 X1=INT(100*RND(1))
1360 IF X1>5 THEN RETURN
1370 C1=C1+1
1380 PRINT "YOUR CAMEL HURT HIS HUMP."
1390 PRINT "LUCKILY THE PYGMIES WERE FOOTWEARY !!!"
1400 RETURN
1410 U=INT(10*RND(1))
1420 PRINT "YOU DIED IN THE DESERT."
1430 IF U>1 THEN 1460
1440 PRINT "THE NATIONAL CAMEL'S UNION IS NOT ATTENDING YOUR FUNERAL!!!"
1450 GOTO 1560
1460 IF U>3 THEN 1490
1470 PRINT "YOUR BODY WAS EATEN BY VULTURES AND IMPORTED CANNINBALS !!!"
1480 GOTO 1560
1490 IF U>5 THEN 1520
1500 PRINT "THE LOCAL SHEIK NOW USES YOUR SKULL FOR A CHANGE PURSE !!!"
1510 GOTO 1560
1520 IF U>7 THEN 1550
1530 PRINT "PEOPLE WITH LITTLE INTELLIGENCE SHOULD STAY OUT OF THE DESERT!!!"
1540 GOTO 1560
1550 PRINT "TURKEYS SHOULD FLY, NOT RIDE CAMELS !!!!!!!"
1560 PRINT
1570 PRINT
1580 PRINT "WANT A NEW CAMEL AND A NEW GAME ";
1590 INPUT D$
1600 IF LEFT$(D$,1)="Y" THEN 320
1620 GOTO 1650
1630 PRINT "YOU RAN OUT OF WATER......SORRY CHUM!!!"
1640 GOTO 1410
1650 PRINT "------------------"
1655 PRINT "     CHICKEN"
1657 PRINT "------------------"
1660 END
2000 Z=4
2010 S=6
2020 C=0
2030 C1=0
2040 Q=0
2050 F=0
2060 P=0
2070 RETURN