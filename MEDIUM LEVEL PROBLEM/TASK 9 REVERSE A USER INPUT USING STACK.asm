.MODEL SMALL
.STACK 100H                         

.DATA  
NEWLINE DB "",0AH,0DH,24H
MSG1 DB "Before Reverse",0AH,0DH,24H
MSG2 DB "After Reverse",0AH,0DH,24H
.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX
    
    
    LEA DX,MSG1
    MOV AH,09
    INT 21H
    
    XOR BX,BX
    MOV CX,0H
    
    MOV AH,01H
    
    WHILE_:
    
        CMP AL,0DH
        JE DISPLAY
        
        
        INT 21H
        MOV BL,AL 
        PUSH BX
        INC CX
        
    
    JMP WHILE_
    
    
    
    DISPLAY:
    

    LEA DX,NEWLINE
    MOV AH,09
    INT 21H
    
    
    LEA DX,MSG2
    MOV AH,09
    INT 21H
    
     
    MOV AH,02H
    
    FORLOOP:
    
        POP BX
        
        MOV DL,BL
        INT 21H
    
    LOOP FORLOOP
    
    


    EXIT: 
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN  
