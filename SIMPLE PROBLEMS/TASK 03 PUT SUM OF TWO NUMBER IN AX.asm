.MODEL SMALL
.STACK 100H
.DATA
X DW 10H
Y DW 20H
.CODE

MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AX,X
    ADD AX,Y
    

    
    
    

    
    MAIN ENDP
END MAIN


