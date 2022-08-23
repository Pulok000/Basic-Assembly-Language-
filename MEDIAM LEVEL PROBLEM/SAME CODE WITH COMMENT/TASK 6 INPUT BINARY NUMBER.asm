.MODEL SMALL
.STACK 100H
.DATA  

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    ;() CLEARING BX
    MOV BX,0H
    
    ;() TAKING INPUT
    MOV AH,01H
    INT 21H
    
    START:
    ;()LOOP EXIT CONDITION
    CMP AL,0DH
    JE DISPLAY
    
    ;() CONVERTING ASSCI INPUT TO 0 OR 1 DEGIT
    SUB AL,30H
    
    
    ;() STORING THE VALUE IN BL
    SHL BX,1
    OR BL,AL 
    
    ;() TAKING INPUT
    MOV AH,01H
    INT 21H    
    
    JMP START
    
    
    DISPLAY:
     
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
