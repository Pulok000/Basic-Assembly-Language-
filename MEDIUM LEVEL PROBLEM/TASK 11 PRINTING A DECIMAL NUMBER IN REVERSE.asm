.MODEL SMALL
.STACK 100H                         

.DATA  

.CODE

MAIN PROC
    
    
    
    MOV DH,123D
    MOV BL,10D
    
    WHILE_:
    MOV AX,0H
    MOV AL,DH
    
    DIV BL
    
    MOV DL,AH
    MOV DH,AL
    ADD DL,30H
    
    MOV AH,02H
    INT 21H
    
    
    
    
    
    
    CMP DH,0H
    JNE WHILE_



    EXIT: 
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN  
