.MODEL SMALL
.STACK 100H
.DATA
 
MSG1 DB "HELLO WORLD",0DH,0AH,24H
MSG2 DB "BYE WORLD",0DH,0AH,24H

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX 
    

   
  

    
    MOV CX,5
    CMP CX,0 

    
TOP1:
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    DEC CX ;CX=CX-1

    
    JNZ TOP1

    
    
     
   
    MOV AH,9 
    LEA DX,MSG2
    INT 21H 
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN


