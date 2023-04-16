100 PRINT TAB(21);"DEALER'S CHOICE"
110 PRINT TAB(20);"CREATIVE COMPUTING"
120 PRINT TAB(18);"MORRISTOWN, NEW JERSEY"
130 PRINT:PRINT:PRINT
140 PRINT "THIS PROGRAM WILL SIMULATE THE T.V. SHOW, DEALER'S CHOICE."
150 PRINT "YOU HAVE $100 TO START WITH. ENJOY THE GAME.":PRINT
160 O=100
170 PRINT "FOR THE FIRST GAME, WE WILL PLAY ON THE WHEEL OF CHANCE."
180 PRINT "THE OBJECT IS SIMPLE. GUESS WHAT SUITE WILL APPEAR ON THE"
190 PRINT "WHEEL AND YOU WILL GET PAID AT THOSE ODDS IF YOU ARE RIGHT."
200 PRINT "THEY ARE AS FOLLOWS:":PRINT
210 PRINT "1=DIAMONDS AT 11 TO 1 ODDS          2=SPADES AT 1 TO 1 ODDS."
220 PRINT "3=HEARTS AT 3 TO 1 ODDS             4=CLUBS AT 3 TO 1 ODDS."
230 PRINT "YOU MAY BET UP TO $25. GOOD LUCK!":PRINT
240 PRINT "WHAT SUITE DO YOU WANT";:INPUT A
250 IF A > 4 OR A < 1 THEN 270
260 IF A <=4 THEN 280
270 PRINT "***YOU PICKED A WRONG SUITE***":GOTO 240
280 PRINT "WHAT IS THE BET";:INPUT B8
290 IF B8 > 25 OR B8 <= 0 THEN 310
300 IF B8 <= 25 THEN 320
310 PRINT "***YOU BET OVER THE HOUSE LIMIT***":GOTO 280
320 PRINT "O.K. NOW THAT YOUR BET IS IN, WE WILL SPIN"
330 PRINT "THE WHEEL, GOOD LUCK!":FOR B1=1 TO 10*570:NEXT B1
340 PRINT "THE WHEEL IS SLOWING DOWN."
350 FOR B1=1 TO 7*570:NEXT B1:PRINT "THE WHEEL IS STOPPING."
360 FOR B1=1 TO 4*570:NEXT B1
370 PRINT "THE SUITE IS ":FOR B1=1 TO 4*570
380 NEXT B1
390 Z=INT(4*RND(1)+1):PRINT "****";Z;"****"
400 IF Z=A THEN 420
410 IF Z <> A THEN 470
420 ON Z GOTO 430,440,450,460
430 O=O+(11*B8):PRINT "YOU WIN ON DIAMONDS":GOTO 480
440 O=O+(1*B8):PRINT "YOU WIN ON SPADES":GOTO 480
450 O=O+(3*B8):PRINT "YOU WIN ON HEARTS":GOTO 480
460 O=O+(3*B8):PRINT "YOU WIN ON CLUBS":GOTO 480
470 O=O-(1*B8):PRINT "YOU LOSE.":GOTO 480
480 PRINT "AT THE END OF PART 1, YOU HAVE $";O
490 FOR P=1 TO 5:PRINT:NEXT P
500 PRINT "THIS IS THE GAME OF IN BETWEEN. THE OBJECT IS: 5 CARDS WILL"
510 PRINT "BE DEALT OUT. IF ANY CARD IS LESS THAN A 3 OR GREATER THAN A"
520 PRINT "10, THE GAME IS OVER. YOU MAY BET UP TO $30. YOUR MONEY"
530 PRINT "WILL BE DOUBLED EACH TIME YOU ARE RIGHT. GOOD LUCK!":PRINT
540 PRINT "WHAT IS THE BET";:INPUT A
550 IF A > 30 THEN PRINT "***YOU BET OVER THE HOUSE LIMIT ***":GOTO 540
560 T=T+1:Z=INT(12*RND(1)+1)
570 PRINT "CARD NUMBER ";T;" IS A ";Z:B=B+(2*A)
580 IF Z < 3 OR Z > 10 THEN 630
590 IF T=5 THEN 650
600 PRINT "YOU ARE STILL IN THE GAME. YOU HAVE ";B
610 PRINT "STOP OR GO";:INPUT A$:IF A$="GO" THEN 560
620 IF A$="STOP" THEN 650
630 O=O-A
640 PRINT "YOU LOST. AT THE END OF PART 2, YOU HAVE $";O:GOTO 660
650 PRINT "YOU WIN. AT THE END OF PART 2, YOU HAVE $";B+O:B=B+O
660 FOR P=1 TO 5:PRINT:NEXT P
670 PRINT "THIS IS THE GAME OF BLACKJACK <DEALER'S CHOICE STYLE>"
680 PRINT "THE OBJECT IS TO BEAT THE DEALER WITH OVER 17 OR 21 OR"
690 PRINT "UNDER. YOU MAY BET UP TO $50. YOU MAY STOP WHEN YOU WISH."
700 PRINT "IF YOU MAKE BLACKJACK, YOUR MONEY IS DOUBLED."
710 PRINT "IF THE HOUSE DEALS OUT LESS THAN A TOTAL OF 17 IN 6 TRIES,"
720 PRINT "YOU WILL KEEP THE MONEY YOU BET. GOOD LUCK!":PRINT
730 Z5=0:Z1=0:PRINT "THE DEALER WILL GET HIS CARDS FIRST":PRINT
740 C=0:C3=0
750 PRINT "HERE I GO"
760 Q=INT(12*RND(1)+1)
770 Z5=Q+Z5
780 PRINT "THE CARD IS A ";Q:C=C+1
790 PRINT "SO FAR:";Z5:IF C=6 THEN 850
800 IF Z5<17 THEN 760
810 IF Z5 > 21 THEN 910
820 IF Z5=21 THEN 880
830 IF Z5 < 21 THEN 870
840 IF Z5 >= 17 THEN 870
850 IF Z5 < 17 THEN 890
860 IF Z5 >= 17 THEN 800
870 PRINT "I STOP. THE TOTAL FOR ME IS ";Z5:PRINT "NOW YOU GO":PRINT:GOTO930
880 PRINT "I GOT BLACKJACK":PRINT:GOTO 930
890 PRINT "THE HOUSE DELT OUT LESS THAN 17. NOW YOU MUST TRY TO"
900 PRINT "BEAT ME";:PRINT:GOTO 930
910 PRINT "I BLEW IT. YOU WIN THE GREATEST AMOUNT ALLOWED TO BE"
920 PRINT "BET BY THE HOUSE.":GOTO 1160
930 PRINT "WHAT IS THE BET";:INPUT A
940 IF A > O THEN 980
950 IF A > 50 OR A <= 0 THEN 970
960 IF A <= 50 THEN 990
970 PRINT "***YOU BET OVER THE HOUSE LIMIT***":GOTO 930
980 PRINT "***YOU BET OVER WHAT YOU HAVE***":GOTO 930
990 Q1=INT(12*RND(1)+1):PRINT "YOUR CARD IS A ";Q1:C3=C3+1
1000 Z1=Q1+Z1:PRINT "SO FAR THE TOTAL FOR YOU IS ";Z1:IF C3=6 THEN 1090
1010 IF Z1 > 21 THEN 1120
1020 PRINT "STOP OR GO";:INPUT A$
1030 IF A$="STOP" THEN 1050
1040 IF A$="GO" THEN 990
1050 IF Z1=Z5 THEN 1100
1060 IF Z1 < Z5 THEN 1120
1070 IF Z1=21 THEN 1110
1080 IF Z5 <Z1 THEN 1130
1090 IF Z1 < 17 THEN 1140
1100 PRINT "WE ARE THE SAME SO WE WILL PLAY AGAIN":GOTO 730
1110 O=O+(2*A):PRINT "YOU BEAT THE DEALER WITH BLACKJACK!!":GOTO 1170
1120 O=O-(1*A):PRINT "THE DEALER BEAT YOU. YOU LOSE":GOTO 1170
1130 O=O+(1*A):PRINT "THE DEALER LOST. YOU WIN":GOTO 1170
1140 O=O+(1*A):PRINT "THE HOUSE DELT OUT LESS THAN 17 IN"
1150 PRINT "6 TRIES. YOU GET THE MONEY YOU BET":GOTO 1170
1160 O=O+50:PRINT "YOU KEEP IT WITH OUR BEST WISHES.":GOTO 1170
1170 PRINT "AT THE END OF PART 3, YOU HAVE $";O
1180 IF O<=0 THEN 1580
1190 FOR P=1 TO 5:PRINT:NEXT P
1200 PRINT "NOW WE ENTER THE LAST CHANCE ROUND. IF YOU MAKE UP TO"
1210 PRINT "$300 YOU WILL BE ABLE TO GO INTO THE BONUS ROUND. THE"
1220 PRINT "OBJECT IS TO GUESS INTO WHICH CATEGORY THE TOTAL OF 5 CARDS"
1230 PRINT "WILL ADD UP TO. THESE ARE THE CATEGORIES:":PRINT
1240 PRINT "1=31-40 AT 1 TO 1 ODDS     2=41-50 AT 3 TO 1 ODDS"
1250 PRINT "3=21-31 AT 3 TO 1 ODDS     4=6-20 AT 20 TO 1 ODDS"
1260 PRINT "GOOD LUCK!!":PRINT
1270 PRINT "AT THIS POINT IN THE GAME YOU HAVE $";O
1280 PRINT "WHAT CATEGORY DO YOU WANT";:INPUT A
1290 IF A <= 4 THEN 1320
1300 IF A > 4 THEN 1310
1310 PRINT "***YOU BET ON A WRONG CATEGORY***":GOTO 1280
1320 PRINT "WHAT IS THE BET";:INPUT B
1330 IF B <= O THEN 1360
1340 IF B > O THEN 1350
1350 PRINT "***YOU BET OVER WHAT YOU HAVE***":GOTO 1320
1360 PRINT "THE CARDS ARE NOW BEING ADDED UP":PRINT "GOOD LUCK!"
1370 Q=INT(12*RND(1)+1):C1=C1+1
1380 PRINT "CARD NUMBER ";C1;" IS A ";Q
1390 Z=Z+Q:PRINT "SO FAR: ";Z
1400 IF C1=5 THEN 1420
1410 GOTO 1370
1420 ON A GOTO 1430,1460,1490,1520
1430 IF Z < 31 THEN 1540
1440 IF Z < 40 THEN 1550
1450 IF Z > 40 THEN 1540
1460 IF Z < 41 THEN 1540
1470 IF Z < 50 THEN 1560
1480 IF Z > 50 THEN 1540
1490 IF Z < 21 THEN 1540
1500 IF Z < 31 THEN 1560
1510 IF Z > 31 THEN 1540
1520 IF Z < 6 THEN 1540
1530 IF Z < 20 THEN 1570
1540 O=O-(1*B):PRINT "YOU LOSE":GOTO 1580
1550 O=O+(1*B):PRINT "YOU WIN":GOTO 1580
1560 O=O+(3*B):GOTO 1580
1570 O=O+(20*B):PRINT "YOU WIN":GOTO 1580
1580 PRINT "AT THE END OF THE GAME YOU HAVE A GRAND TOTAL OF $";O
1590 IF O < 300 THEN 1940
1600 FOR X=1 TO 6:PRINT CHR$(7);:FOR B1=1 TO 570:NEXT B1:NEXT X
1610 PRINT "YOU ARE ELIGIBLE FOR THE BONUS ROUND."
1620 PRINT "DO YOU WANT TO PLAY IT";:INPUT A$
1630 IF A$="NO" THEN 1940
1640 PRINT "THIS IS THE BONUS ROUND. IF YOU GET A TOTAL OF 1,000"
1650 PRINT "WITHOUT GETTING A SPADE IN THE ROLLS, YOU WILL GET"
1660 PRINT "A GRAND PRIZE OF $10,000.00. YOU MAY STOP AT ANY POINT"
1670 PRINT "DURING THE GAME. YOU WILL KEEP WHAT YOU MADE. GOOD LUCK!"
1680 PRINT
1690 DIM A(5),B(4):A9$="SPADES"
1700 PRINT "THE DICE ARE ROLLING":PRINT "GOOD LUCK."
1710 PRINT "THE DICE ARE"
1720 FOR B1=1 TO 570*5:NEXT B1
1730 X=INT(5*RND(1)+1)
1740 A(1)=50:A(2)=100:A(3)=150:A(4)=200:A(5)=0
1750 Y=INT(4*RND(1)+1)
1760 B(1)=50:B(2)=100:B(3)=150:B(4)=200
1770 IF A(X)=0 THEN 1790
1780 PRINT "****";A(X);B(Y);"****":PRINT "TOTAL ";A(X)+B(Y):GOTO 1810
1790 PRINT "****";A9$;B(Y);"****"
1800 PRINT "TOTAL ";B(Y):GOTO 1870
1810 B7=B7+(A(X)+B(Y)):PRINT "YOU NOW HAVE ";B7:IF B7 >= 1000 THEN 1890
1820 PRINT "STOP OR GO":INPUT B$
1830 IF B$="GO" THEN 1700
1840 PRINT "SMART MOVE. YOU GET THE MONEY FROM THE BEGINNING OF"
1850 PRINT "THE GAME PLUS THE BONUS ROUND. AT THE END OF THE GAME"
1860 PRINT "YOU HAVE THE GRAND TOTAL OF $";B7+O:GOTO 1940
1870 PRINT "YOU LOSE THE MONEY FROM THE LAST CHANCE"
1880 PRINT "ROUND BUT YOU STILL HAVE A GRAND TOTAL OF $";O:GOTO 1940
1890 FOR T=1 TO 3:PRINT CHR$(7);:FOR B1=1 TO 570:NEXT B1:NEXT T
1900 B7=O+10000:PRINT TAB(15);"****CONGRATULATIONS****"
1910 PRINT "YOU WON THE GRAND PRIZE. AT THE END OF THE GAME, YOU HAVE"
1920 FOR P=1 TO 3:PRINT:NEXT P
1930 PRINT TAB(18);"*******";B7;"******"
1940 PRINT "THIS IS THE END OF THE GAME. I HOPE YOU ENJOYED IT."
1950 END