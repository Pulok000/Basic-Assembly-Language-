.MODEL SMALL
.STACK 100H                         

.DATA 

MSG1 DB "INVALID NUMBER",0AH,0DH,24H


.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,01H
    INT 21H
    MOV BL,AL
    
    CMP BL,48
    JL INVALID
    CMP BL,57
    JG INVALID 
    
    CONVERT:
    AND BL,00001111B 
    
    MOV AH,02H
    MOV DL,0AH
    INT 21H
    
    MOV AH,02
    MOV DL,0DH
    INT 21H
    
    MOV AH,02H
    MOV DL,BL
    INT 21H
    JMP EXIT
    
    
    
    
    INVALID:
    LEA DX,MSG1
    MOV AH,09H
    INT 21H
 
    

    EXIT: 
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN  
