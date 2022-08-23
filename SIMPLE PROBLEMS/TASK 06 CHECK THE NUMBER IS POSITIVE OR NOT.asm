
.MODEL SMALL
.STACK 100H
.DATA

       
MSG1 DB "Enter a number: $"
MSG2 DB "Positive",0DH,0AH,24H
MSG3 DB "Negative",0DH,0AH,24H 


 

.CODE

 

MAIN PROC
        
    MOV AX,@DATA
    MOV DS,AX

    
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV CL,AL 
    
  
    MOV AH, 2                  
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH                  
    INT 21H  
    
      
        
    CMP CL,0H
    JL NEGATIVE
    JG POSITIVE
          
    NEGATIVE: 
            
    LEA DX,MSG3
    MOV AH,9
    INT 21H 
    JMP EXIT
    
    
    
    POSITIVE:
            
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    JMP EXIT
    
    
    
    EXIT: 
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN   