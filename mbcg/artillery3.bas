1 REM Lines 70-100 commented out.
8 PRINT TAB(22);"ARTILLERY 3"
9 PRINT TAB(20);"CREATIVE COMPUTING"
10 PRINT TAB(18);"MORRISTOWN, NEW JERSEY"
11 PRINT:PRINT:PRINT
20 T=0
60 DIM V(3),X(3),P(3),R(3,3)
70 REM MAT V=ZER
80 REM MAT X=ZER
90 REM MAT P=ZER
100 REM MAT R=ZER
110 DATA 1,2,2,3,3,1,1,3,3,2,2,1,2,3,3,1,1,2,0
120 PRINT "WELCOME TO 'WAR3'. TWO OR THREE HUMANS MAY PLAY!"
130 PRINT "DO YOU WISH SOME ASSISTANCE";
140 INPUT A$
150 IF A$="YES" THEN 1310
160 PRINT ""
170 PRINT "NO. OF PLAYERS";
180 INPUT N
190 IF N=2 THEN 240
200 IF N=3 THEN 270
210 PRINT "ERROR--TWO OR THREE PLAYERS!"
220 PRINT
230 GOTO 160
240 N1=1
250 PRINT ""
260 GOTO 290
270 N1=N
280 PRINT ""
290 FOR J=1 TO N1
300 READ A,B
310 PRINT "DISTANCE (FT.) ";A;" TO ";B;
320 INPUT R(A,B)
330 R(B,A)=R(A,B)
340 NEXT J
350 PRINT ""
360 RESTORE
370 IF N=2 THEN 460
380 FOR J=1 TO N
390 READ A,B,C,D,E,F
400 IF R(A,B)<R(C,D)+R(E,F) THEN 440
410 PRINT "ERROR--ILLEGAL TRIANGLE. RE-ENTER RANGES."
420 RESTORE
430 GOTO 290
440 NEXT J
450 PRINT
460 FOR J=1 TO N
470 PRINT "MUZZLE VELOCITY (FT./SEC.) OF ";J;
480 INPUT V(J)
490 NEXT J
500 PRINT ""
510 FOR J=1 TO N
520 X(J)=V(J)^2/32
530 NEXT J
540 FOR A=1 TO N
550 FOR B=1 TO N
560 IF X(A)>R(A,B) THEN 610
570 PRINT "ERROR--";A;" CANNOT REACH ";B
580 PRINT "WHAT IS THE MUZZLE VELOCITY OF ";A;
590 INPUT V(A)
600 GOTO 510
610 NEXT B
620 NEXT A
630 N1=N
640 PRINT ""
650 PRINT ""
660 PRINT "ROUND ";T+1
670 PRINT
680 FOR M=1 TO N
690 IF N=3 THEN 750
700 C=1
710 IF M<> 1 THEN 730
720 C=2
730 PRINT "PLAYER ";M;" SHOOTING AT ";C
740 GOTO 890
750 IF P(M)=12 THEN 1280
760 PRINT "PLAYER ";M;"SHOOTING AT";
770 INPUT C
780 ON C GOTO 830,830,830
810 PRINT "ERROR--PLAYERS DESIGNATED 1,2,3."
820 GOTO 760
830 IF C<> M THEN 860
840 PRINT "ERROR--CANNOT SHOOT SELF."
850 GOTO 760
860 IF P(C) <> 12 THEN 890
870 PRINT "ERROR-- ";C;" IS DEFUNCT"
880 GOTO 760
890 PRINT "FIRING ANGLE";
900 INPUT A3
910 IF A3<0 THEN 940
920 IF A3>180 THEN 940
930 GOTO 970
940 PRINT "ERROR--FIRED INTO GROUND. ";M;" NOW DEFUNCT."
950 P(M)=12
960 GOTO 760
970 IF A3<90 THEN 1000
980 PRINT "ERROR--FIRED WRONG WAY, LOSE SHOT."
990 GOTO 760
1000 Z=SIN(A3*3.49064E-02)*V(M)^2/32
1010 X=(R(M,C)/1000*RND(1))-(R(M,C)/1000*RND(1))
1020 D=X+Z
1030 D1=R(M,C)*.05
1040 IF D<D1 THEN 1080
1050 IF ABS(D-R(M,C))<D1 THEN 1110
1060 IF D<R(M,C) THEN 1140
1070 IF D>R(M,C) THEN 1160
1080 PRINT " TOO CLOSE- ";M;" IS DEFUNCT."
1090 P(M)=12
1100 GOTO 1180
1110 PRINT " A HIT - ";C;" IS DEFUNCT."
1120 P(C)=12
1130 GOTO 1180
1140 PRINT " YOU UNDERSHOT BY ";ABS(D-R(M,C));" FEET."
1150 GOTO 1270
1160 PRINT " YOU OVERSHOT BY ";ABS(D-R(M,C));" FEET."
1170 GOTO 1270
1180 N1=N1-1
1190 IF N1>1 THEN 1270
1200 FOR M1=1 TO N
1210 IF P(M1)=12 THEN 1250
1220 PRINT
1230 PRINT "GAME OVER. ";M1;" WINS."
1240 GOTO 1430
1250 NEXT M1
1260 STOP
1270 PRINT ""
1280 NEXT M
1290 T=T+1
1300 GOTO 650
1310 PRINT
1320 PRINT "THIS IS A WAR GAME. TWO OR THREE PLAYERS ARE GIVEN"
1330 PRINT "(THEORETICAL) CANNONS WITH WHICH THEY ATTEMPT TO SHOOT EACH"
1340 PRINT "OTHER. THE PARAMETERS FOR DISTANCES AND MUZZLE VELOCITIES ARE"
1350 PRINT "SET AT THE BEGINNING OF THE GAME. THE SHOTS ARE FIRED BY"
1360 PRINT "GIVING A FIRING ANGLE, EXPRESSED IN DEGREES FROM HORIZONTAL"
1370 PRINT
1380 PRINT "THE COMPUTER WILL KEEP TRACK OF THE GAME AND REPORT ALL"
1390 PRINT "MOVES. A 'HIT' IS SCORED BY FIRING A SHOT WITHIN 5% OF THE"
1400 PRINT "TOTAL DISTANCE FIRED OVER. GOOD LUCK"
1410 PRINT ""
1420 GOTO 160
1430 END
