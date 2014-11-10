;:::::::::::::::::::::::::::::::::::::::::;
;:: Instituto Tecnologico de Costa Rica ::;
;:: Escuela de Ingeniería en Computacion :;
;:: Arquitectura de Computadores        ::;
;:: 									::;
;:: Description:						::;
;::   Día de la semana de una fecha     ::;
;::   Año Bisiesto						::;
;:: Autor: Samantha Arburola León		::;
;:: ID   : 2013101697					::;
;:: Fecha: 09.noviembre.2014			::;
;:::::::::::::::::::::::::::::::::::::::::;

;Libreria para simplicidad de entradas y salidas
%include "io.mac"
;Segmentos de datos definidos
.DATA
;===> Interfaz Grafica
;Tag: Calendario
calendario00 db 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCC', 0
calendario01 db 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCC', 0
calendario02 db 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCC', 0
calendario03 db 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCC', 0
calendario04 db 'C                           C', 0
calendario05 db 'C      ´3333`        =1     C', 0
calendario06 db 'C     33333333    =1111     C', 0
calendario07 db 'C          333"  111111     C', 0
calendario08 db 'C        33333      111     C', 0
calendario09 db 'C        33333,     111     C', 0
calendario10 db 'C           333     111     C', 0
calendario11 db 'C     333333333     111   C', 0  
calendario12 db 'C      333333`      111 C', 0    
calendario13 db 'C                     C@', 0     
calendario14 db 'C                    C', 0    
calendario15 db 'CCCCCCCCCCCCCCCCCCCC', 0
; Bienvenida al programa
hola00 db 'Bienvenid@', 0
hola01 db 'Este programa le dice el dia de la semana y si el',0
hola02 db ' año es bisiesto de una fecha ingresada entre los años',0
hola03 db ' 0 D.C. y 2499 D.C. Exceptuando del 5 al 14 de octubre de 1582',0
;Solicitud de fecha
ingreseDatos00 db 'Ingrese los datos en forma numerica',
ingreseDatos01 db 'Por ejemplo: 18 02 1994',0
ingreseDia     db 'Ingrese el dia:  _',0
ingreseMes     db 'Ingrese el mes:  _'0
ingreseA-o     db 'Ingrese el a~o:  _'0
;Tag: Lunes 
lunes00 DB 'LLL', 0
lunes01 DB 'LLL', 0                                                      
lunes02 DB 'LLL', 0                                                      
lunes03 DB 'LLL', 0                                                      
lunes04 DB 'LLL', 0
lunes05 DB 'LLL UUUUUU    UUU  NNNNNN NNNNN       EEEEEEE   SSSSSS', 0
lunes06 DB 'LLL    UUU    UUU    NNNNNNNNNNN    EEE  EEEE SSS   SSS', 0  
lunes07 DB 'LLL     UUU    UUU    NNNNNNN NNN  EEE  EEEE SSS   SSS', 0  
lunes08 DB 'LLL     UUU   UUUU    NNNNN   NNN  EE EEEEE  SSSSS', 0      
lunes09 DB 'LLL     UUU   UUUU    NNNN    NNN  EEEE         SSSSSSS', 0   
lunes10 DB 'LLL    UUUU  UUUUU    NNNN    NNN  EEEE             SSSS', 0  
lunes11 DB 'LLLL   UUUUUUUUUUU    NNN     NNN   EEEE    EE SS    SSS', 0  
lunes12 DB 'LLLLL   UUUUU6 UUUUU NNNN     NNNNN  EEEEEEEE SSSSSSSSS', 0   

;Tag: Martes
martes00 DB '                                        TT', 0                   
martes01 DB '                                        TT', 0                   
martes02 DB '                                       TTT', 0                   
martes03 DB 'MMMM MMMM MMMMM   AAAAAA  RRRR RRRR  TTTTTTT   EEEEEE   SSSSSS', 0
martes04 DB 'MMMMM MMMM MM0   AA  AAA   RRRRR      TTT     EE  EEE  SSS', 0   
martes05 DB 'MMMM  MMM  MMM       AAA   RRRR       TT     EEEEEE     SSSS', 0   
martes06 DB 'MMMM  MMM  MMM   AAA AAA   RRR        TT     EE           SSSS', 0 
martes07 DB 'MMM   MM   MMM  AA  AAAA   RR         TTT    EEE            SSS', 0
martes08 DB 'MMM   MM   MMMM AAAAAAAAAA RR          TTTTT  EEEEEE   SSSSSSS', 0 
;Tag: Miércoles
miercoles00 DB '                                                  LL', 0                  
miercoles01 DB '                                                  LL', 0                 
miercoles02 DB '                         EE                       LL', 0                
miercoles03 DB '               III      EE                        LL', 0            
miercoles04 DB '                       E                          LL', 0              
miercoles05 DB 'MMM MMM  MMM   II    EEEE  RRR RRR  CCCC   OOOO   LL    EEEE   SSSS', 0    
miercoles06 DB ' MMMM MMMMMMM  II   EE  EE  RRRR  CCC     OO  OO  LL  EE  EE SS', 0      
miercoles07 DB ' MMM  MMM MM   II  EEEEEE   RRR   CC     OO   OO  LL EEEEEE   SSSS', 0     
miercoles08 DB ' MMM  MM  MM   II  EEE      RR    CC     OO   OO  LL EEE         SSS', 0   
miercoles09 DB ' MM   MM  MM   II  EEEEEE   RR    CCCCCC  OOOOOO  LL  EEEEEE  SSSSS', 0   
;Tag: Jueves
jueves00 DB '   JJJ', 0                                                      
jueves01 DB '   JJJ', 0                                                      
jueves02 DB ' ', 0                                                           
jueves03 DB '                        EEE                   EEE        SSSSS', 0
jueves04 DB '  JJJJ  UUUU   UUU    EEE EEE  VVVV   VVV   EEE EEE    SSS SSSS', 0 
jueves05 DB '  JJJJ   UUU   UUU   EEE   EEE  VVV   VVV  EEE  EEE   SSS   SS', 0  
jueves06 DB '  JJJJ   UUU   UUU  EEEEEEEE    VVVV  VV  EEEEEEE     SSSSS', 0    
jueves07 DB '  JJJ    UUU  UUUU  EEE          VVV VV   EEE           SSSSS', 0  
jueves08 DB '  JJJ   UUU  UUUUU  EEEE         VVVVV    EEEE            SSSS', 0 
jueves09 DB '  JJJ    UUUUUUUUU   EEEEEEEE    VVVV      EEEEEEEE  SSSS SSS', 0  
jueves10 DB '  JJJ     UUU   UUUU   EEEE       VV         EEEE      SSSS', 0    
jueves11 DB '  JJJ', 0                                                       
jueves12 DB '  JJ', 0                                                        
jueves13 DB ' JJ', 0                                                         
;Tag: Viernes
viernes00 DB '             II', 0                                                     
viernes01 DB '            IIII', 0                                                    
viernes02 DB ' ', 0                                                                   
viernes03 DB '       VVV', 0                                                          
viernes04 DB ' VVVV   VVV III    EEE EEE  RR RRRRR NNN NNNNN     EEEEEE    SSSSSS', 0 
viernes05 DB '  VVV   VV  III   EEE  EEE  RRRRR    NNNNNN NNN   EEE  EEE  SSS  SSS', 0 
viernes06 DB '  VVVV  VV  III  EEE EEEE   RRRR     NNNNN  NNN   EE EEEE   SSSSS', 0    
viernes07 DB '   VVV VV   III  EEE        RRR      NNNN   NNN  EEE          SSSSSS', 0 
viernes08 DB '   VVVVV    III  EEE        RRR      NNNN   NNN  EEE             SSS', 0 
viernes09 DB '   VVVV     III  EEEEE EEE  RRR      NNN    NNN   EEEE EEE  SSS  SSS', 0 
viernes10 DB '    VV      IIII    EEEE    RRR      NNN    NNNN    EEEE     SSSSS', 0   
;Tag: Sábado
sabado00 DB '                       BBB                           DDD', 0            
sabado01 DB '                       BB                           DDDD', 0            
sabado02 DB '                AA    BBB                           DDDD', 0            
sabado03 DB '               AAA    BBB                           DDD', 0             
sabado04 DB '              AAA     BBB                           DDD', 0             
sabado05 DB '             AA       BBB                           DDD', 0             
sabado06 DB '    ssss     AAAA     BBB  BBBB     AAAA         DDDDDD      OOOO', 0   
sabado07 DB ' sss  sss  AA  AAAA   BBBBBBBBBB  AAA AAAA    DDD   DDD   OOO  OOOO', 0 
sabado08 DB ' sss       AA   AAA   BBBBB  BBB  AAA  AAA   DDD   DDDD  OOO    OOO', 0 
sabado09 DB '  ssssss     AAAAAA   BBB    BBB     AAAAA  DDD    DDDD  OOO    OOO', 0 
sabado10 DB '     ssss  AA  AAAA   BBB    BBB  AAA AAAA  DDD   DDDD   OOO    OOO', 0 
sabado11 DB ' sss  sss AAA AAAAA   BBB   BBB  AAA AAAAA  DDDDDDD DDD  OOOO  OOO', 0 
sabado12 DB ' sssssss  AAAAA AAAAA BBBBBBBB    AAAA AAAAA DDDDD  DDDD  OOOOOOO', 0
;Tag: Domingo
domingo00 DB '        DD', 0                                                          
domingo01 DB '       DDD', 0                                                          
domingo02 DB '       DD', 0                                                           
domingo03 DB '       DD                            II', 0                              
domingo04 DB '       DD', 0                                                           
domingo05 DB '   DDDDDD    DDDDD  DDDD DDD  DDD    II  NNNN NNNN     GGGGGGG   OOOO', 0  
domingo06 DB '  DD   DD   DD  DDD   DDDDDDDDDDDD  III    NNNN NN    GG  GGG  OO   OO', 0
domingo07 DB ' DD   DDD  DDD   DD   DDD  DDD DDD  III    NNN  NN   GGG   GG  OO   OOO', 0
domingo08 DB 'DDD  DDDD  DDD   DD   DDD  DDD DDD  III    NNN  NN    GG  GG  OOO   OOO', 0
domingo09 DB ' DD DD DD  DDD   D    DD   DD  DDD  III    NN   NN    GGGGG    OO   OO', 0 
domingo10 DB ' DDDD  DDD  DDDDD     DD   DD  DDDD  III   NN   NNNN  GGGGG     OOOO', 0   
domingo11 DB '                                                   GGG GGGGG', 0         
domingo12 DB '                                                  GG     GGG', 0         
domingo13 DB '                                                  GGG   GGG', 0          
domingo14 DB '                                                    GGGG', 0 
;===> Datos para la logica 
.UDATA
dia resb 2 ;guarda el dia
mes resb 2 ;guarda el mes
a-o resb 4 ;guarda el a-o
