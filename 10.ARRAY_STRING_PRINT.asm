.MODEL SMALL
.STACK 100H
.DATA
 
 ARY DB 50 DUP('$')
 
.CODE
 MAIN PROC
   
  MOV AX,@DATA
  MOV DS,AX
  
  MOV SI,OFFSET ARY
  
  LEVEL1:
  MOV AH,1
  INT 21H
  
  CMP AL,13
  JE LEVEL2
  
  MOV [SI],AL
  INC SI
  JMP LEVEL1
  
  LEVEL2:
  MOV DX,10
  MOV AH,2
  INT 21H 
  MOV DX,13
  MOV AH,2
  INT 21H
  
  MOV DX,OFFSET ARY
  MOV AH,9
  INT 21H
  
  MOV AH,4CH
  INT 21H 
   
  MAIN ENDP
 END MAIN