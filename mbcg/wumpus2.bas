    3 PRINT TAB(25);"Wumpus 2"
    4 PRINT TAB(20);"Creative Computing"
    5 PRINT TAB(18);"Morristown, New Jersey"
    7 PRINT
   10 PRINT
   15 PRINT
   20 REM- WUMPUS VERSION 2
   30 DIM S(20,3)
   40 DIM L(6),M(6),P(5),H(6)
   50 PRINT "Instructions";
   60 INPUT I$
   70 PRINT
   80 IF LEFT$(I$,1) <> "Y" THEN 130
  100 GOSUB 700
  110 REM- CHOOSE AND SET UP CAVE
  130 GOSUB 2530
  140 DEF FNA(X)=INT(20*RND(1))+1
  150 DEF FNB(X)=INT(3*RND(1))+1
  160 DEF FNC(X)=INT(4*RND(1))+1
  170 REM LOCATE L ARRAY ITEMS
  180 REM 1-YOU, 2-WUMPUS, 3&4-PITS, 5&6-BATS
  210 FOR J=1 TO 6
  220   L(J)=FNA(0)
  230   H(J)=L(J)
  240 NEXT J
  250 REM CHECK FOR CROSSOVERS (IE L(1)=L<2) ETC)
  260 FOR J=1 TO 6
  270   FOR K=J TO 6
  280     IF J=K THEN 300
  290     IF L(J)=L(K) THEN 210
  300   NEXT K
  310 NEXT J
  320 REM SET # ARROWS
  330 A=5
  340 L=L(1)
  350 REM- RUN THE GAME
  360 PRINT "Hunt the Wumpus"
  370 REM-HAZARDS WARNINGS AND LOCATION
  380 GOSUB 1230
  390 REM MOVE OR SHOOT
  400 GOSUB 1400
  410 ON O GOTO 430,470
  420 REM SHOOT
  430 GOSUB 1550
  440 IF F=0 THEN 400
  450 GOTO 490
  460 REM MOVE
  470 GOTO 2150
  480 IF F=0 THEN 380
  490 IF F > 0 THEN 540
  500 REM LOSE
  510 PRINT "HA HA HA - You loose!"
  520 GOTO 550
  530 REM WIN
  540 PRINT "HEE HEE HEE - The Wumpus'll get you next time!!"
  550 FOR J=1 TO 6
  560   L(J)=M(J)
  570 NEXT J
  580 PRINT "Play again";
  590 INPUT I$
  595 PRINT
  600 PRINT
  620 IF LEFT$(I$,1) <> "Y" THEN 3310
  640 PRINT "Same set-up";
  650 INPUT I$
  660 PRINT
  670 IF LEFT$(I$,1) <> "Y" THEN 130
  680 GOTO 330
  700 REM- INSTRUCTIONS
  710 PRINT "Welcome to Wumpus II"
  720 PRINT "This version has the same rules as 'hunt the Wumpus'."
  730 PRINT "However, you nou have a choice of caves to play in."
  740 PRINT "Some caves are easier than others. All caves have 20"
  750 PRINT "rooms and 3 tunnels leading from one room to other rooms."
  760 PRINT "The caves are:"
  770 PRINT "  0  -  DODECAHEDRON: The rooms of this cave are on a"
  780 PRINT "        12-Sided object, each forming a pentagon."
  790 PRINT "        The rooms are at the corners of the pentagons."
  800 PRINT "        Each room having tunnels that lead to 3 other rooms"
  805 PRINT
  810 PRINT "  1  -  MOBIUS STRIP: This cave is two rooms"
  820 PRINT "        wide and 10 rooms around (like a belt)"
  830 PRINT "        You will notice there is a half twist"
  840 PRINT "        somewhere."
  850 PRINT
  860 PRINT "  2  -  STRING OF BEADS: Five beads in a circle."
  870 PRINT "        Each bead is a diamond with a vertical"
  880 PRINT "        cross-bar. The right & left corners lead"
  890 PRINT "        to neighboring beads. (This one is difficult"
  900 PRINT "        to play)"
  910 PRINT
  920 PRINT "  3  -  HEX NEWORK: Imagine a hex tile floor. Take"
  930 PRINT "        a rectangle with 20 points (intersections)"
  940 PRINT "        inside (4x4). Join right 2 left sides to make a"
  950 PRINT "        cylinder. Then join top & bottom to form a"
  960 PRINT "        torus (doughnut)."
  970 PRINT "        Have fun imagining this one!!"
  980 PRINT
  985 INPUT I$
  990 PRINT "Caves 1-3 are regular in a sense that each room"
 1000 PRINT "goes to three other rooms & tunnels allow two-"
 1010 PRINT "way traffic. Here are some 'irregular' caves:"
 1020 PRINT
 1030 PRINT "  4  -  DENDRITE WITH DEGENERACIES: Pull a plant from"
 1040 PRINT "        the ground. The roots & branches form a "
 1050 PRINT "        Dendrite - ie., there are no looping paths"
 1060 PRINT "        Degeneracy means a) some rooms connect to"
 1070 PRINT "        themselves and b) some rooms have more than one"
 1080 PRINT "        tunnel to the same other room ie, 12 has "
 1090 PRINT "        Two tunnels to 13."
 1100 PRINT
 1110 PRINT "  5  -  ONE WAY LATTICE: Here all tunnels go one"
 1120 PRINT "        way only. To return, you must go around the cave"
 1130 PRINT "        (About 5 moves)."
 1140 PRINT
 1160 PRINT "  6  -  ENTER YOUR OWN CAVE: The computer will ask you"
 1170 PRINT "        the rooms next to each room in the cave."
 1180 PRINT "          For example:"
 1190 PRINT "           Room #1? 2,3,4 - Your reply of 2,3,4"
 1200 PRINT "            Means room 1 has tunnels going to rooms:"
 1210 PRINT "            2, 3, & 4."
 1215 PRINT
 1220 PRINT "  Happy hunting!"
 1225 RETURN
 1230 REM
 1240 PRINT
 1250 FOR J=2 TO 6
 1260   FOR K=1 TO 3
 1270     IF S(L(1),K) <> L(J) THEN 1340
 1280     ON J-1 GOTO 1290,1310,1310,1330,1330
 1290     PRINT "I smell a Wumpus!"
 1300     GOTO 1340
 1310     PRINT "I feel a draft!"
 1320     GOTO 1340
 1330     PRINT "Bats nearby!"
 1340   NEXT K
 1350 NEXT J
 1360 PRINT "You are in room ";L(1)
 1370 PRINT "Tunnels lead to ";S(L,1);" ";S(L,2);" ";S(L,3)
 1380 PRINT
 1390 RETURN
 1400 REM- CHOOSE OPTION
 1410 GOTO 1450
 1420 PRINT "Error   ";
 1430 INPUT Z9
 1440 PRINT "";
 1450 PRINT "Shoot or Move (S/M)";
 1460 INPUT I$
 1470 PRINT
 1490 IF LEFT$(I$,1) <> "S" THEN 1520
 1500 O=1
 1510 RETURN
 1520 IF LEFT$(I$,1) <> "M" THEN 1420
 1530 O=2
 1540 RETURN
 1550 REM- ARROW ROUTINE
 1560 F=0
 1570 REM- PATH OF ARROW
 1590 GOTO 1630
 1600 PRINT "Error   ";
 1610 INPUT Z9
 1620 PRINT "";
 1630 PRINT "No. of rooms ";
 1640 INPUT J9
 1650 PRINT
 1670 IF J9 < 1 OR J9 > 5 OR INT(J9) <> ABS(J9) THEN 1600
 1680 FOR K=1 TO J9
 1690   PRINT "Room #";
 1700   INPUT P(K)
 1710   PRINT
 1730   IF P(K) > 0 AND P(K) < 21 AND INT(P(K))=ABS(P(K)) THEN 1780
 1740   PRINT "Error  ";
 1750   INPUT Z9
 1760   PRINT "";
 1770   GOTO 1690
 1780 NEXT K
 1790 PRINT
 1800 REM -  SHOOT ARROW
 1810 A=A-J9
 1820 A9=L(1)
 1830 FOR K=1 TO J9
 1840   FOR K1=1 TO 3
 1850     IF S(A9,K1)=P(K) THEN 1990
 1860   NEXT K1
 1870   REM -  NO TUNNEL FOR THE ARROW
 1880   A9=S(A9,FNB(1))
 1890   GOTO 2000
 1900 NEXT K
 1910 PRINT "Missed"
 1920 REM -  MOVE WUMPUS
 1930 GOSUB 2070
 1940 REM -  AMMO CHECK
 1950 IF A > 0 THEN 1970
 1955 PRINT "You have used all of your arrows."
 1960 F=-1
 1970 RETURN
 1980 REM -  SEE IF ARROW IS AT L[1] OT L[2]
 1990 A9=P(K)
 2000 IF A9 <> L(2) THEN 2040
 2010 PRINT "AHA! You got the Wumpus! He was in room";L(2)
 2020 F=1
 2030 RETURN
 2040 IF A9 <> L(1) THEN 1900
 2050 PRINT "OUCH! Arrow got you!"
 2060 GOTO 1960
 2070 REM -  MOVE WUMPUS ROUTINE
 2080 K=FNC(0)
 2090 IF K=4 THEN 2140
 2100 L(2)=S(L(2),K)
 2110 IF L(2) <> L THEN 2140
 2120 PRINT "TSK TSK TSK- Wumpus got you!"
 2130 F=-1
 2140 RETURN
 2150 REM -  MOVE ROUTINE
 2160 F=0
 2170 GOTO 2210
 2180 PRINT "Error   ";
 2190 INPUT Z9
 2200 PRINT "";
 2210 PRINT "Where to ";
 2220 INPUT L
 2230 PRINT
 2240 IF L < 1 OR L > 20 OR ABS(L) <> INT(L) THEN 2180
 2250 FOR K=1 TO 3
 2260   REM -  CHECK IF LEGAL MOVE
 2270   IF S(L(1),K)=L THEN 2350
 2280 NEXT K
 2290 IF L=L(1) THEN 2350
 2300 PRINT "Not possible - ";
 2310 INPUT Z9
 2320 PRINT "";
 2330 GOTO 2210
 2340 REM -  CHECK FOR HAZARDS
 2350 L(1)=L
 2360 REM -  WUMPUS
 2370 IF L <> L(2) THEN 2430
 2380 PRINT "... OOPS! Bumped a Wumpus!"
 2390 REM -  MOVE A WUMPUS
 2400 GOSUB 2080
 2410 IF F=0 THEN 2430
 2420 REM -  PIT
 2430 IF L <> L(3) AND L <> L(4) THEN 2480
 2440 PRINT "YYYIIIEEEE . . . Fell in a pit"
 2450 F=-1
 2460 GOTO 480
 2470 REM -  BATS
 2480 IF L <> L(5) AND L <> L(6) THEN 2520
 2490 PRINT "ZAP--Super bat snatch! Elsewheresville for you!"
 2500 L=FNA(1)
 2510 GOTO 2350
 2520 GOTO 480
 2530 REM -  SELECT CAVE
 2540 GOTO 2580
 2550 PRINT "Error   ";
 2560 INPUT Z9
 2570 PRINT "";
 2580 PRINT "Cave #(0-6) ";
 2585 RESTORE
 2590 INPUT N
 2600 PRINT
 2620 IF N<0 OR N>6 OR INT(N) <> ABS(N) THEN 2550
 2630 ON N+1 GOSUB 2650,2730,2810,2890,2970,3050,3130
 2640 RETURN
 2650 REM -  DODECAHEDRON
 2670 DATA 2,5,8,1,3,10,2,4,12,3,5,14,1,4,6
 2680 DATA 5,7,15,6,8,17,1,7,9,8,10,18,2,9,11
 2690 DATA 10,12,19,3,11,13,12,14,20,4,13,15,6,4,16
 2700 DATA 15,17,20,7,16,18,9,17,19,11,18,20,13,16,19
 2710 GOSUB 3240
 2720 RETURN
 2730 REM -  MOBIUS STRIP
 2735 FOR B1=1 TO 1
 2737   FOR B2=1 TO 60
 2740     READ B0
 2742   NEXT B2
 2744 NEXT B1
 2750 DATA 20,2,3,19,1,4,1,4,5,2,3,6,3,6,7
 2760 DATA 4,5,8,5,8,9,6,7,10,7,10,11,8,9,12
 2770 DATA 9,12,13,10,11,14,11,14,15,12,13,16,12,16,17
 2780 DATA 14,15,18,15,18,19,16,17,20,2,17,20,1,18,19
 2790 GOSUB 3240
 2800 RETURN
 2810 REM -  STRING OF BEADS
 2815 FOR B1=1 TO 2
 2817   FOR B2=1 TO 60
 2820     READ B0
 2822   NEXT B2
 2824 NEXT B1
 2830 DATA 2,3,20,1,3,4,1,2,4,2,3,5,4,6,7
 2840 DATA 5,7,8,5,6,8,6,7,9,8,10,11,9,11,12
 2850 DATA 9,10,12,10,11,13,12,14,15,13,15,16,13,14,16
 2860 DATA 14,15,17,16,18,19,17,19,20,17,18,20,1,18,19
 2870 GOSUB 3240
 2880 RETURN
 2890 REM - HEX NUT ON TORUS
 2895 FOR B1=1 TO 3
 2897   FOR B2=1 TO 60
 2900     READ B0
 2902   NEXT B2
 2904 NEXT B1
 2910 DATA 6,10,16,6,7,17,7,8,18,8,9,19,9,10,20
 2920 DATA 1,2,15,2,3,11,3,4,12,4,5,13,5,6,14
 2930 DATA 7,16,20,8,16,17,9,17,18,10,18,19,6,19,20
 2940 DATA 1,11,12,2,12,13,3,13,14,4,14,15,5,11,15
 2950 GOSUB 3240
 2960 RETURN
 2970 REM -  DENDRITE W/ DEGENERACIES
 2975 FOR B1=1 TO 4
 2977   FOR B2=1 TO 60
 2980     READ B0
 2982   NEXT B2
 2984 NEXT B1
 2990 DATA 1,1,5,2,2,5,3,3,6,4,4,6,1,2,7
 3000 DATA 3,4,7,5,6,10,8,9,9,8,8,10,7,9,11
 3010 DATA 10,13,14,12,13,13,11,12,12,11,15,16,14,17,18
 3020 DATA 14,19,20,15,17,17,15,18,18,16,19,19,16,20,20
 3030 GOSUB 3240
 3040 RETURN
 3050 REM -  ONE WAY LATTICE
 3055 FOR B1=1 TO 5
 3057   FOR B2=1 TO 60
 3060     READ B0
 3062   NEXT B2
 3064 NEXT B1
 3070 DATA 5,4,8,1,5,6,2,6,7,3,7,8,8,9,12
 3080 DATA 5,9,10,6,10,11,7,11,12,12,13,16,9,13,14
 3090 DATA 10,14,15,11,15,16,16,17,20,13,17,18,14,18,19
 3100 DATA 15,19,20,1,4,20,1,2,17,2,3,18,3,4,19
 3110 GOSUB 3240
 3120 RETURN
 3130 REM -  INPUT YOUR OWN CAVE
 3140 FOR J=1 TO 20
 3150   PRINT "Room #";J;
 3160   INPUT S(J,1),S(J,2),S(J,3)
 3170   FOR K=1 TO 3
 3180     IF S(J,K) > 0 AND S(J,K) < 21 AND ABS(S(J,K))=ABS(S(J,K)) THEN3210
 3190     PRINT "***** Error!!!!!"
 3200     GOTO 3150
 3210   NEXT K
 3220 NEXT J
 3230 RETURN
 3240 REM -  INPUT CAVE
 3250 FOR J=1 TO 20
 3260   FOR K=1 TO 3
 3270     READ S(J,K)
 3280   NEXT K
 3290 NEXT J
 3300 RETURN
 3310 END
