10 PRINT TAB(27);"ROADRACE"
20 PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN NEW JERSEY"
30 PRINT
40 PRINT
50 PRINT
100 PRINT "       THIS IS THE PITTSFIELD-ALBANY ROAD RALLY"
120 PRINT
130 PRINT "WELCOME TO THE FIRST ANNUAL PITTSFIELD-ALBANY ROAD RALLY."
140 PRINT "YOU'LL BE DRIVING RT. 20. TRYING TO WIN THE RACE AND"
150 PRINT "STAY ALIVE IN THE BARGIN. GOOD LUCK!!"
160 PRINT
170 PRINT "YOY HAVE YOUR CHOICE OF: (1) A VW; (2) 283 NOVA;"
180 PRINT "(3) Z-28; OR (4) FERRARI"
190 PRINT
200 PRINT "CHOOSE THE CAR YOU WANT BY THE NUMBER IN FRONT OF IT."
210 PRINT "REMEMBER, THE BETTER THE CAR, THE MORE GAS IT USES."
220 PRINT "WHICH CAR";
230 INPUT C1
240 LET C1=INT(C1)
250 IF C1 > 4 THEN 280
260 IF C1 < 1 THEN 280
270 GOTO 300
280 PRINT "INVALID CAR NUMBER. NEW CAR ";
290 GOTO 230
300 PRINT
310 IF N2=1 THEN 345
320 PRINT "NOW YOU CHOOSE WHICH COURSE YOU WANT TO RACE ON."
330 PRINT "THE EASIEST COURSE IS NUMBER 1, AND IS THE STRAIGHTEST"
340 PRINT "ROUTE. NUMBER 5 CONSISTS MOSTLY OF TURNS AND TWISTS."
345 PRINT "WHICH ROUTE DO YOU WANT";
350 INPUT C2
360 LET C2=INT(C2)
380 IF C2 < 1 THEN 410
390 IF C2 > 5 THEN 410
400 GOTO 430
410 PRINT "INVALID COURSE NUMBER. NEW CHOICE ";
420 GOTO 350
430 IF N2=1 THEN 490
435 PRINT
440 PRINT "YOU WILL NEED TO TRAVEL 5 MILES WITH .5 GALLONS OF GAS."
450 PRINT "YOUR STATUS WILL BE SHOWN EACH 10 SECONDS. AFTER EACH "
460 PRINT "STATUS CHECK YOU WILL BE ASKED FOR A NEW RATE OF GAS. "
470 PRINT "A RATE OF +10 IS HARD ACCELERATION, AND -10 IS HARD BRAKING"
480 PRINT "ANY NUMBER IN BETWEEN IS ALLOWABLE."
490 FOR I=1 TO C1
500 READ B,M,S
510 LET B=B/10
520 NEXT I
530 LET A1=.5
540 LET M1=0
550 LET C1=C1/2
560 LET V=0
570 PRINT
580 LET R1=0
590 LET T=0
600 LET D=0
610 LET Q1=0
620 PRINT "PRESENT VELOCITY =";V;" NO. OF GALLONS =";A1
630 PRINT "NO. OF MILES =";M1;" TIME PASSED =";T;"SECONDS"
640 IF M1>= 5 THEN 1460
650 PRINT "WHAT IS YOUR NEW RATE OF GAS ";
660 INPUT G
670 IF G < -10 THEN 700
680 IF G > 10 THEN 700
690 GOTO 720
700 PRINT "NOT VALID. NEW RATE ";
710 GOTO 660
720 IF G < 9 THEN 780
730 LET Z=Z+1
740 IF Z> 4 THEN 760
750 GOTO 790
760 PRINT "YOUR ENGINE BLEW. YOU GOT HIT BY A PISTON."
770 GOTO 1270
780 LET Z=0
790 LET V=INT(B*G-M*V+V)
800 LET T=T+10
810 PRINT
820 PRINT "ROAD CONDITIONS:";
830 IF V > 0 THEN 850
840 LET V=0
850 LET M1=M1+V/460
860 IF G<0 THEN 890
870 LET A1=A1-(G*S)/5000
880 IF A1< 0 THEN 1380
890 IF R1=1 THEN 1050
900 IF Q1=1 THEN 980
910 LET Q=INT((C2+1)*RND(1))
920 LET R=INT((3.75-C2)*RND(1))
930 IF R > 0 THEN 1290
940 IF Q > 0 THEN 1340
950 PRINT "CLEAR AN STRAIGHT"
960 PRINT
970 GOTO 620
980 LET H=INT(15+35*RND(1))
990 LET H=H+5*C1
1000 IF V>H THEN 1500
1010 PRINT "THROUGH CURVE"
1020 PRINT
1030 LET Q1=0
1040 GOTO 620
1050 LET E=E-(V-D)*3
1060 IF E < 0 THEN 1100
1070 PRINT "VECHICLE ";E;" FEET AHEAD"
1080 PRINT
1090 GOTO 620
1100 IF V-D < 5 THEN 1180
1110 PRINT "VECHICLE PASSED BY ";
1120 LET D=V-D
1130 PRINT D;
1140 PRINT "MPH"
1150 PRINT
1160 LET R1=0
1170 GOTO 620
1180 PRINT "VECHICLE BEING PASSED "
1190 LET D=INT(25+40*RND(1))
1200 PRINT "GREYHOUND BUS IN OTHER LANE ";
1210 PRINT "DOING ";
1220 PRINT D;
1230 PRINT " MPH ";
1240 LET D=V+D
1250 PRINT "CRASH VELOCITY = ";D
1270 PRINT "WHERE IS YOUR FUNERAL BEING HELD ?"
1280 GOTO 1560
1290 PRINT "VECHICLE AHEAD 1000 FEET"
1300 PRINT
1310 LET D=INT(25+35*RND(1))
1320 LET R1=1
1330 GOTO 620
1340 PRINT " WARNING: CURVE AHEAD "
1350 LET Q1=1
1360 PRINT
1370 GOTO 620
1380 PRINT "EXCELLENT BUT WAIT!"
1390 PRINT
1400 PRINT "YOU RAN OUT OF GAS"
1410 GOTO 1550
1420 PRINT "BUT SOME HOW YOU MADE IT"
1430 PRINT
1440 LET R1=0
1450 GOTO 620
1460 PRINT
1470 PRINT
1480 PRINT "YOU MADE IT (LUCKY) !!!!!!!"
1490 GOTO 1560
1500 PRINT "ARE TERRIBLE"
1510 LET H=H-5*C1
1520 PRINT H;" WAS THE SPEED THROUGH THE CURVE"
1530 PRINT V;" WAS YOUR SPEED, BY THE WAY ";
1540 GOTO 1270
1550 PRINT "YOU LEAD FOOTED $%&''%$&$&&((&$&$'$($(($&'%#%##%%%"
1560 PRINT "YOU WANT TO TRY AGAIN, RIGHT !!!!"
1570 PRINT "1-YES, 2-NO";
1580 INPUT V
1590 IF V=2 THEN 1620
1600 N2=1
1610 GOTO 1640
1620 PRINT "CHICKEN"
1630 GOTO 1700
1640 RESTORE
1650 GOTO 220
1660 DATA 45,.53,10
1665 DATA 60,.5,13
1670 DATA 70,.41,15
1680 DATA 80,.39,18
1700 END
