10 INPUT "HORIZONTAL";X
20 INPUT "VERTICAL";Y
21 INPUT "CENTERED";L$
22 G1=0:IF L$>"P" THEN G1=1
23 INPUT "CHARACTER (TYPE 'ALL' IF YOU WANT CHARACTER BEING PRINTED)";M$
29 PRINT "STATEMENT";
30 INPUT A$
35 INPUT "SET PAGE";O$
40 A=ASC(LEFT$(A$,1))
50 REM
60 REM
70 FOR T=1 TO LEN(A$)
80 P$=MID$(A$,T,1)
90 FOR O=1 TO 50
95 READ S$,S(1),S(2),S(3),S(4),S(5),S(6),S(7)
96 IF P$=" " THEN 812
100 IF P$=S$ THEN 200
120 NEXT O
200 RESTORE
201 X$=M$
202 IF M$="ALL" THEN X$=S$
205 FOR U=1 TO 7
210 FOR K=8 TO 0 STEP -1
230 IF 2^K<S(U) THEN 270
240 J(9-K)=0
250 GOTO 280
270 J(9-K)=1: S(U)=S(U)-2^K
272 IF S(U)=1 THEN 815
280 NEXT K
445 FOR T1=1 TO X
447 PRINT TAB((63-4.5*Y)*G1/(LEN(X$))+1);
450 FOR B=1 TO F(U)
460 IF J(B)=0 THEN 500
465 FOR I=1 TO Y: PRINT X$;: NEXT I
470 GOTO 600
500 FOR I=1 TO Y
510 FOR I1=1 TO LEN(X$)
520 PRINT " ";: NEXT I1
530 NEXT I
600 NEXT B
620 PRINT
630 NEXT T1
700 NEXT U
750 FOR H=1 TO 2*X: PRINT: NEXT H
800 NEXT T
806 FOR H=1 TO 75: PRINT: NEXT H
810 END
812 FOR H=1 TO 7*X: PRINT: NEXT H
813 GOTO 800
815 F(U)=9-K: GOTO 445
899 DATA " ",0,0,0,0,0,0,0
900 DATA "A",505,37,35,34,35,37,505
901 DATA "G",125,131,258,258,290,163,101
902 DATA "E",512,274,274,274,274,258,258
903 DATA "T",2,2,2,512,2,2,2
904 DATA "W",256,257,129,65,129,257,256
905 DATA "L",512,257,257,257,257,257,257
906 DATA "S",69,139,274,274,274,163,69
907 DATA "O",125,131,258,258,258,131,125
908 DATA "N",512,7,9,17,33,193,512
909 DATA "F",512,18,18,18,18,2,2
910 DATA "K",512,17,17,41,69,131,258
911 DATA "B",512,274,274,274,274,274,239
912 DATA "D",512,258,258,258,258,131,125
913 DATA "H",512,17,17,17,17,17,512
914 DATA "M",512,7,13,25,13,7,512
915 DATA "?",5,3,2,354,18,11,5
916 DATA "U",128,129,257,257,257,129,128
917 DATA "R",512,18,18,50,82,146,271
918 DATA "P",512,18,18,18,18,18,15
919 DATA "Q",125,131,258,258,322,131,381
920 DATA "Y",8,9,17,481,17,9,8
921 DATA "V",64,65,129,257,129,65,64
922 DATA "X",388,69,41,17,41,69,388
923 DATA "Z",386,322,290,274,266,262,260
924 DATA "I",258,258,258,512,258,258,258
925 DATA "C",125,131,258,258,258,131,69
926 DATA "J",65,129,257,257,257,129,128
927 DATA "1",0,0,261,259,512,257,257
928 DATA "2",261,387,322,290,274,267,261
929 DATA "*",69,41,17,512,17,41,69
930 DATA "3",66,130,258,274,266,150,100
931 DATA "4",33,49,41,37,35,512,33
932 DATA "5",160,274,274,274,274,274,226
933 DATA "6",194,291,293,297,305,289,193
934 DATA "7",258,130,66,34,18,10,8
935 DATA "8",69,171,274,274,274,171,69
936 DATA "9",263,138,74,42,26,10,7
937 DATA "=",41,41,41,41,41,41,41
938 DATA "!",1,1,1,384,1,1,1
939 DATA "0",57,69,131,258,131,69,57
940 DATA ".",1,1,129,449,129,1,1
1000 STOP
1002 END
