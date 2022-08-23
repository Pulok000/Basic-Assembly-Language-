.MODEL SMALL
.STACK 100H                         

.DATA 
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    XOR AX,AX
    XOR BX,BX
    
    MOV AX,05H
    MOV BX,06H
    
    PUSH AX
    PUSH BX
    
    POP AX 
    POP BX
    


    EXIT: 
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN  
