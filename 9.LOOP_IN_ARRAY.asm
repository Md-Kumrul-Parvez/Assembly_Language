.MODEL SMALL
.STACK 100H
.DATA

 ARY DB 26 DUP(?)

.CODE
 MAIN PROC
  MOV AX,@DATA
   MOV DS,AX
    
  MOV CX,26
  MOV BL,65
  
  INPUT:
  MOV ARY[SI],BL
  INC BL
  INC SI
  MOV SI,OFFSET ARY
  MOV DX,[SI]
  MOV AH,2
  INT 21H
  LOOP INPUT
  
  MOV AH,4CH
  INT 21H   
    
  MAIN ENDP
 END MAIN