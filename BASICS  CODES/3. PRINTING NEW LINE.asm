
.MODEL SMALL
.STACK 100H
.DATA

.CODE

 

MAIN PROC
        
    MOV AX,@DATA
    MOV DS,AX


   ; FOR INPUT(17-19)
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    
   ; FOR NEWLINE (25-31)
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H 
    

        
    ;FOR PRINTING OUTPUT(40-42)
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    

; END    
 
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN   