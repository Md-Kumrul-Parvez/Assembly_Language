.MODEL SMALL
.STACK 100H
.DATA

.CODE
 MAIN PROC
    
  MOV CL,0
   
  INPUT:
    INC CL
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    JMP Capital_X
    
    
    Capital_X:
    
    CMP BL,58H
    JNE Small_x
    JMP Exit 
    
    
    Small_x:
    
    CMP BL,78H
    JNE INPUT
    JMP Exit
 
    
    Exit: 
    MOV DX,10
    MOV AH,2
    INT 21H
    MOV DX,13
    MOV AH,2
    INT 21H
    
    MOV DL,CL
    ADD DL,48
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H 
    
    
  MAIN ENDP
 END MAIN