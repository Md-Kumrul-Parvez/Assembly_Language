.MODEL SMALL
.STACK 100H
.DATA 

.CODE
  MAIN PROC
    
    MOV CX,51
    
    MOV BL,65
    MOV BH,1 
    
    L1:
    CMP BH,25
    JLE L2
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    DEC BL
    JMP L3
    
    
    L2:
    MOV AH,2
    MOV DL,BL
    INT 21H
    INC BL
    JMP L3
    
    L3:
    INC BH
    LOOP L1
    
    MOV AH,4CH
    INT 21H
 
  MAIN ENDP
 END MAIN