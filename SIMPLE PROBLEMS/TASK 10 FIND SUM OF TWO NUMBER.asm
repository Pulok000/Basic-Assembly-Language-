.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC 
    

    MOV AH,01H
    INT 21H
    MOV BL,AL
    
    MOV AH,01H
    INT 21H
    ADD BL,AL  
    
    SUB BL,48  
    
    MOV AH,02H 
    MOV DL,BL 
    INT 21H
    
    
    
    MAIN ENDP
END MAIN
