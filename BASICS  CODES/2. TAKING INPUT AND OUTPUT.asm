
.MODEL SMALL
.STACK 100H
.DATA



.CODE

 

MAIN PROC  
   
   
    MOV AX,@DATA
    MOV DS,AX

    


    ;FOR USER INPUT(22-24)
    MOV AH,1
    INT 21H
    MOV BL,AL
    
  
      
        
    ;FOR USER OUTPUT(30-32)
    MOV AH,2
    MOV DL,BL
    INT 21H 
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN   

