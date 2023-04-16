5 PRINT TAB(26);"VANGAM"
6 PRINT TAB(20);"CREATIVE COMPUTING"
7 PRINT TAB(18);"MORRISTOWN, NEW JERSEY"
8 PRINT:PRINT:PRINT
10 DIM Q(200)
15 X=(1+SQR(5))/2:Y=1+1/X:X=1+X
16 FOR I=0 TO 99
17 Q(I*2)=INT(I*X):Q(I*2+1)=INT(I*Y)
18 NEXT I:T=0
20 PRINT "VAN WYTHOFF'S GAME: DO YOU WANT INSTRUCTIONS";
30 INPUT B$:IF LEFT$(B$,1)="N" THEN 130
40 PRINT "YOU ARE TO CREATE TWO PILES OF MATCHES, EACH CONTAINING 100"
50 PRINT "OR LESS.  YOU PLAY ALTERNATELY WITH ME, AND OUR MOVES CONSIST"
60 PRINT "OF:"
65 PRINT TAB(10);"(A) TAKING AWAY 1 OR MORE MATCHES";
67 PRINT " FROM ONE PILE ONLY, OR"
70 PRINT TAB(10);"(B) TAKING AWAY THE SAME NUMBER FROM EACH PILE."
80 PRINT "THE ONE WHO TAKES AWAY THE LAST MATCH OF ALL WINS."
90 PRINT "ENTER YOUR MOVES IN THIS MANNER:"
100 PRINT TAB(10);"2L - (2 LEFT) TAKE TWO FROM LEFT PILE"
110 PRINT TAB(10);"3R - (3 RIGHT) TAKE THREE FROM RIGHT PILE"
120 PRINT TAB(10);"5B - (5 BOTH) TAKE FIVE FROM EACH PILE"
130 PRINT:PRINT:PRINT
200 INPUT "DESIRED PILE SIZES (NUMBER,NUMBER)";S1,S2
210 L=S1:R=S2
220 IF L+R>5 THEN 240
230 PRINT "OH, YOU'RE A SPORT, YOU ARE."
240 INPUT "DO YOU WANT TO GO FIRST";B$
255 PRINT TAB(27);"LEFT  RIGHT"
257 PRINT TAB(27);L;TAB(33);R
260 P=L*2:IF L>R THEN 400
270 P=R*2
400 IF LEFT$(B$,1)="N" THEN 690
405 IF L=R THEN PRINT "YOU LIKE SITTING DUCKS, DON'T YOU?"
410 PRINT:INPUT "YOUR MOVE:  ";B$
415 FOR X=1 TO LEN(B$)
420 IF ASC(MID$(B$,X,1))<48 OR ASC(MID$(B$,X,1))>57 THEN 425
423 NEXT X
425 S3=VAL(MID$(B$,1,X-1))
427 IF S3=0 THEN 460
430 IF MID$(B$,X,1)="L" THEN 550
440 IF MID$(B$,X,1)="R" THEN 570
450 IF MID$(B$,X,1)="B" THEN 590
460 T=T+1:IF T>2 THEN 1940
470 PRINT:PRINT "IMPROPER ENTRY, STOP FOOLING AROUND.":GOTO 410
550 IF S3>L THEN 460
555 L=L-S3:GOTO 610
570 IF S3>R THEN 460
575 R=R-S3:GOTO 610
590 IF S3>L THEN 460
600 L=L-S3:GOTO 570
610 PRINT TAB(19);"LEAVING";TAB(27);L;TAB(33);R
614 PRINT "HM.. ";
615 FOR I=1 TO 500:A=A+I:NEXT I
620 IF L+R>0 THEN 690
630 PRINT:PRINT:PRINT "YOU WIN!!":PRINT
635 PRINT "CONGRADULATIONS.  YOU ARE A VERY CLEVER VAN WYTHOFF'S"
637 PRINT "GAMESMAN."
640 GOTO 1900
690 I=0:M=0
700 IF Q(I)=L THEN 760
710 IF Q(I+1)=L THEN 780
720 IF Q(I)=R THEN 800
730 IF Q(I+1)=R THEN 820
740 I=I+2:GOTO 700
760 L1=I:L2=1:IF M=1 THEN 840
770 M=1:GOTO 720
780 L1=I:L2=0:IF M=1 THEN 840
790 M=1:GOTO 720
800 R1=I:R2=1:IF M=1 THEN 840
810 M=1: GOTO 740
820 R1=I:R2=0:IF M=1 THEN 840
830 M=1: GOTO 740
840 IF L=R THEN 895
845 IF R1=L1 THEN 1080
850 IF L1>R1 THEN 900
860 P=L1+L2
880 IF Q(P)>R THEN 940
890 M=R-Q(P):R=Q(P):A$="R":GOTO 1110
895 M=L:L=0:R=0:A$="B":GOTO 1110
900 P=R1+R2
920 IF Q(P)>L THEN 940
930 M=L-Q(P):L=Q(P):A$="L":GOTO 1110
940 M=0:A$="B"
950 P=L1:IF R1<L1 THEN P=R1
960 P=P-2:G=0
965 M=M+1:L=L-1:R=R-1
970 FOR I=P TO 0 STEP -2
990 IF Q(I)=L THEN 1040
1000 IF Q(I+1)=L THEN 1050
1010 IF Q(I)=R THEN 1060
1020 IF Q(I+1)=R THEN 1070
1030 NEXT I:GOTO 965
1040 IF Q(I+1)=R THEN 1110
1045 GOTO 1075
1050 IF Q(I)=R THEN 1110
1055 GOTO 1075
1060 IF Q(I+1)=L THEN 1110
1065 GOTO 1075
1070 IF Q(I)=L THEN 1110
1075 IF G=1 THEN 960
1077 G=1:GOTO 965
1080 IF L>R THEN 1100
1090 R=R-1:M=1:A$="R":GOTO 1110
1100 L=L-1:M=1:A$="L"
1110 B$="":IF M>9 THEN 1930
1113 B$=CHR$(M+48)
1114 B$=B$+A$
1115 PRINT "I TAKE :";TAB(14);B$;TAB(19);"LEAVING";TAB(27);L;TAB(33);R
1120 IF L+R>0 THEN 410
1130 PRINT:PRINT "SORRY - I WIN.  DON'T FEEL BADLY - I'M AN EXPERT."
1900 PRINT:INPUT "DO YOU WANT TO PLAY AGAIN";B$
1910 IF LEFT$(B$,1)="Y" THEN 130
1920 GOTO 1970
1930 B$=CHR$(INT(M/10)+48):B$=B$+CHR$(M-INT(M/10)*10+48)
1935 GOTO 1114
1940 PRINT:PRINT "LOOK, YOU JUST WON'T STOP FOOLING ABOUT.  BUZZ OFF."
1945 GOTO 1970
1970 PRINT:PRINT "O.K.  BYE NOW."
1980 END
