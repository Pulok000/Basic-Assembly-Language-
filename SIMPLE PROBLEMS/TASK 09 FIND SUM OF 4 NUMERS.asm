.MODEL SMALL
.STACK 100H

.DATA


.CODE

 

MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX 
    
    
    MOV AH,01
    MOV BL,AL 
    INT 21H
 

    
    MOV CX,4
    CMP CX,0 

    
TOP1:
    
    INT 21H 
    ADD BL,AL 
    SUB BL,48
    
    
    DEC CX

    
    JNZ TOP1

    EXIT:
     
    ADD BL,17
    MOV AH,02
    MOV DL,BL
    INT 21H 
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN