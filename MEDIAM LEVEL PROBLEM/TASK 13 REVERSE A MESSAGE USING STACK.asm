.MODEL SMALL
.STACK 100H                         

.DATA 
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AX,0H
    MOV BX,0H
    MOV CX,0H
    

    
    WHILE_:
    
    MOV AH,01H
    INT 21H 
    MOV BL,AL
    
    PUSH BX
    INC CX
    
    CMP AL,0DH
    JE REVERSE  
    
    JMP WHILE_
    
    REVERSE:
    
    MOV AH,02H
    MOV DL,0AH
    INT 21H
    
    MOV AH,02
    MOV DL,0DH
    INT 21H 
    
    
    
    MOV AH,02H
    
    TOP:
        POP BX
        MOV DL,BL
        INT 21H
    
    LOOP TOP
    


    EXIT: 
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN  
