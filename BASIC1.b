50 REM Alexis Dionne
51 REM Programming in the Past - BASIC
52 REM CMPT 331
53 REM 9/18/2018

60 PRINT "ENTER A STRING TO ENCRYPT: ";
70 INPUT ""; STR$
80 PRINT "ENTER A SHIFT AMOUNT: ";
90 INPUT SHIFTAMOUNT
100 PRINT "ENCODED: ";
110 GOSUB 300
120 
130 LET SHIFTAMOUNT = 26 - SHIFTAMOUNT
140 PRINT "DECODED: ";
150 GOSUB 300
160 
161 
162 GOSUB 200
170 END
180 

REM SOLVE OVER AND OVER AGAIN
200 FOR J = SHIFTAMOUNT TO 0 STEP -1 
210   GOSUB 300
220   PRINT "CAESAR "; J; ": "; STR$
225 NEXT J
230 RETURN
235 
240 


REM ENCODE
400 LET C = ASC(C$)
410 LET L = (C > 95) * 32
420 LET C = C - L
430 IF C < 65 THEN RETURN
440 IF C > 90 THEN RETURN
450 LET C = C + SHIFTAMOUNT
460 IF C > 90 THEN C = C - 26
470 LET C$ = CHR(C + L)
480 RETURN