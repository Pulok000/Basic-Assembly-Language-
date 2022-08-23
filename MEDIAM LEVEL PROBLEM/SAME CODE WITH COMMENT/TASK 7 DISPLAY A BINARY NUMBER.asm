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
    JE PRINT
    
    ;() CONVERTING ASSCI INPUT TO 0 OR 1 DEGIT
    SUB AL,30H
    
    
    ;() STORING THE VALUE IN BL
    SHL BX,1
    OR BL,AL 
    
    
    ;() TAKING INPUT
    MOV AH,01H
    INT 21H    
    
    JMP START
    
    
    PRINT:
    
    ;() FOR NEWLINE
     
    MOV AH,02H
    MOV DL,0AH
    INT 21H
    
    MOV AH,02H
    MOV DL,0DH    

    ;()FOR HOW MANY TIME WE WANT TO RUN THE FOR LOOP
    MOV CX,8    
    

    START2: 
    
        MOV AH,2
        MOV DL,'0'
        TEST BL, 10000000B
        JZ ZERO
        
        MOV DL,'1'
        
        ZERO:
             INT 21H
             
        SHL BL,1
        
    LOOP START2
    
     
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
