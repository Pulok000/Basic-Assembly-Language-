.MODEL SMALL
.STACK 100H
.DATA 

.CODE

MAIN PROC
    ;(9-100):IMPORTING DATA SEGMENT.MEANS TO ENABLE PRINTING MESSAGE   
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV BL,10101001B ; STORING A BINARY VALUE
 
    
    CONVERT:
    
    AND BL,01111111B  ;DOING AND OPERATION BETWEEN BL AND 01111111B
  
    ;(22-23) EXITING THE PROGRAME
    EXIT: 
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN  
