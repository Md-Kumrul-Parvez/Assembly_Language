.MODEL SMALL
.STACK 100H
.DATA 

 SMG DB 'HELLO WORLD$'
 
.CODE
  MAIN PROC
   
    MOV AX,@DATA  ;DATA SECTION MOVE TO AX
    MOV DS,AX     ;AX MOVE TO DS
    
    LEA DX,SMG    ;SMG STRING LOAD IN DX
    MOV AH,9      ;FOR DISPLAY STRING
    INT 21H       ;USE FOR CLEAR DX REGISTER
    
    MOV AH,4CH    ;TERMINATE PROGRAM
    INT 21H
    
    MAIN ENDP
   END MAIN