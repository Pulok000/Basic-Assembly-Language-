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
    MOV AH,09H
    INT 21H
    
    MOV AH,01H
    MOV CX,03H
    XOR BX,BX
    
    TOP:
    

        INT 21H
        MOV BL,AL
        
        PUSH BX
    LOOP TOP
    

    LEA DX,NEWLINE
    MOV AH,09H
    INT 21H
    
    
    LEA DX,MSG2
    MOV AH,09H
    INT 21H
    
    MOV CX,03H
    MOV AH,02H  
    
    
    TOP2:
    
        POP BX
        
        MOV DL,BL
        INT 21H
        
    LOOP TOP2
        
            
        
        
    
    


    EXIT: 
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN  
