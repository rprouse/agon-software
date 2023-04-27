   10 PRINT "Mastermind"
   20 PRINT "Creative Computing"
   30 PRINT "Morristown, New Jersey"
   40 PRINT:PRINT:PRINT
  100 PRINT "The Game of Mastermind"
  110 PRINT
  130 PRINT "Color Codes:"
  140 PRINT "    R=Red     O=Orange     Y=Yellow"
  150 PRINT "    G=Green   B=Blue       P=Purple"
  160 PRINT
  170 DIM B$(10),Y(10),Z(10),C(4),G(4),R(4)
  180 C(0)=4
  190 FOR N=1 TO 4
  200   C(N)=INT(6*RND(1)+1)
  210 NEXT N
  220 FOR N=1 TO 4
  230   X=C(N)
  240   GOSUB 730
  250   C(N)=X
  260 NEXT N
  270 P$=""
  273 FOR X1=1 TO 4
  275   P$=P$+CHR$(C(X1))
  277 NEXT X1
  280 FOR P=1 TO 10
  290   PRINT
  300   PRINT "Move Number";P;
  310   INPUT G$
  320   IF G$= "Board" THEN 910
  330   IF G$="Quit" THEN 440
  340   B$(P)=G$
  350   GOSUB 520
  360   IF B=4 THEN 1010
  370   GOSUB 600
  380   PRINT B;" Black Pegs"
  390   Y(P)=B
  400   PRINT W;" White Pegs"
  410   Z(P)=W
  420 NEXT P
  430 PRINT "Sorry, you lose"
  440 PRINT "The correct code was:";P$
  450 PRINT "Want to play again";
  460 INPUT A$
  480 IF A$="YES" THEN 190
  490 PRINT
  500 END
  510 REM COMPUTE BLACK PEGS
  520 FOR X1=1 TO 4
  523   G(X1)=ASC(MID$(G$,X1,1))
  525 NEXT X1
  530 B=0
  540 FOR K=1 TO 4
  550   IF G(K) <> C(K) THEN 570
  560   B=B+1
  570 NEXT K
  580 RETURN
  590 REM COMPUTE WHITE PEGS
  600 FOR X1=1 TO 4
  603   R(X1)=ASC(MID$(P$,X1,1))
  605 NEXT X1
  610 W=0
  620 FOR I=1 TO 4
  630   FOR J=1 TO 4
  640     IF G(I) <> R(J) THEN 680
  650     W=W+1
  660     R(J)=0
  670     GOTO 690
  680   NEXT J
  690 NEXT I
  700 W=W-B
  710 RETURN
  720 REM TRANSLATE COLOR CODES TO NUMERICS
  730 IF X <> 1 THEN 760
  740 X=89
  750 RETURN
  760 IF X <> 2 THEN 790
  770 X=82
  780 RETURN
  790 IF X <> 3 THEN 820
  800 X=80
  810 RETURN
  820 IF X <> 4 THEN 850
  830 X=79
  840 RETURN
  850 IF X <> 5 THEN 880
  860 X=71
  870 RETURN
  880 X=66
  890 RETURN
  900 REM PRINT BOARD SUMMARY
  910 V=P-1
  920 PRINT "Guess","Blacks","Whites"
  930 PRINT "-----","------","------"
  960 FOR I=1 TO V
  970   PRINT B$(I),Y(I),Z(I)
  990 NEXT I
 1000 GOTO 290
 1010 PRINT "You Win!!"
 1020 GOTO 450
 9999 END
