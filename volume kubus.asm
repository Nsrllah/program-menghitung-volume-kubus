;Program ini menghitung volume kubus 
;dengan satu buah input variable bebas
;output volume kubus variable terikat
NAME "ICEOO"        
INCLUDE 'emu8086.inc' 
#MAKE_COM#            
ORG 100H              
JMP MULAI             
danu1    DB "ICEOO KE MENGHITUNG VOLUME KUBUS, DENGAN INPUT SISI PERSEGI",13,10
         DB "OUTPUT VOLUME PERSEGI HASIL KALI SISI KALI SISI KALI SISI",13,10,13,10,'$'
danu2    DB "MASUKKAN PANJANG SISI PERSEGI: $"
danu4    DB 13,10,13,10,"TERIMA KASIH TELAH MENGGUNAKAN PROGRAM DANU NASRULLOH"
         DB 13,10,13,10,"MAKA VOLUME KUBUS TERSEBUT ADALAH $"
PJG      DW ?
ARE      DW ?

MULAI:
LEA DX,danu1           
MOV AH,9              
INT 21H               

LEA DX,danu2
MOV AH,9              
INT 21H

CALL SCAN_NUM         

MOV PJG,CX            

PUTC 13               
PUTC 10
       
MOV PJG,CX            

MOV AX,PJG            
MOV BX,PJG
MOV CX,PJG
            
IMUL AX
IMUL BX
IMUL CX
PUSH AX

LEA DX,danu4
MOV AH,9              
INT 21H

POP AX
MOV ARE,AX            

CALL PRINT_NUM        
                      
PUTC 13               
PUTC 10


MOV AH,0              
INT 16H

RET                   

DEFINE_SCAN_NUM       
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
END