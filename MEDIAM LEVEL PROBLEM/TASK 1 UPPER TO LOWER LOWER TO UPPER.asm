.MODEL SMALL
.STACK 100H
.DATA  
NEWLINE DB "",0AH,0DH,24H

MSG1 DB "ERROR.INVALID INPUT.NOT A CHARACTER.",0AH,0DH,24H
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,01H
    INT 21H
    MOV BL,AL
     
    
    CMP BL,41H
    JGE UPPER
    
    JMP INVALID
    
    
    UPPER:
    ;SEND TO LOWER IF NOT UPPER
    CMP BL,5AH
    JG LOWER
     
    ;CONVERT
    OR BL,00100000B  
    
    ;DISPLAY
    MOV AH,02H
    MOV DL,BL
    INT 21H
    
    ;EXIT
    JMP EXIT
    
    LOWER:
    
    CMP BL,61H
    JL INVALID
    
    CMP BL,7AH
    JG INVALID
    

    AND BL,11011111B
    
    ;DISPLAY
    MOV AH,02H
    MOV DL,BL
    INT 21H 
    
    ;EXIT
    JMP EXIT   
    
    
    INVALID:
    LEA DX,NEWLINE
    MOV AH,09H
    INT 21H   
         
    LEA DX,MSG1
    MOV AH,09H
    INT 21H    
    
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
