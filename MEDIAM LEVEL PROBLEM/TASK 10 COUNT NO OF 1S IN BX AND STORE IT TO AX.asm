.MODEL SMALL
.STACK 100H
.DATA  
NEWLINE DB "",0AH,0DH,24H

.CODE

MAIN PROC 
    
    MOV BX,100B  
    
    MOV CX,16H
    MOV AX,0H
    
    WHILE_:
    CMP CX,0H
    JE ANS
    
    ROL BX,1
    JNC SKIP
    
    INC AX
    
    SKIP: 
    DEC CX
 
    JMP WHILE_ 
    ANS:
    
    
   
    MAIN ENDP
END MAIN
