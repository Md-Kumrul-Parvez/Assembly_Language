.MODEL SMALL
.STACK 100H
.DATA

.CODE
 MAIN PROC
         
  MOV AH,1 ;TAKE SINGLE INPUT
  INT 21H
  
  MOV DL,AL ;INPUT AUTO SAVE IN AL AND DL REGISTER USE FOR SHOWING OUTPUT
  MOV AH,2  ;USE FOR DISPLAY SINGLE OUTPUT
  INT 21H
  
  MOV AH,4CH
  INT 21H 
    
   MAIN ENDP
 END MAIN