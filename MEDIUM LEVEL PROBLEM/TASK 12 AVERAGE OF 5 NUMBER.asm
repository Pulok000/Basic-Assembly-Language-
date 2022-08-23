.MODEL SMALL
.STACK 100H
.DATA  
NEWLINE DB "",0AH,0DH,24H

.CODE

MAIN PROC 
    
    MOV CX,05H 
    MOV BX,0H 
    
    MOV DX,0H
    
    
    
    
    FORLOOP_:
    
    MOV AH,01H
    INT 21H
    MOV BL,AL
    
    SUB BL,48
    
    ADD DL,BL
    
    LOOP FORLOOP_  
    
    MOV BL,05H 
    MOV AX,0H
    
    MOV AX,DX
       
    DIV BL
    
   
    MAIN ENDP
END MAIN
