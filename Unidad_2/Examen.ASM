



CODIGO SEGMENT PARA PUBLIC 'CODE'
  ASSUME CS:CODIGO , SS:STACK, DS:DATA

KEYS PROC FAR

;Paso1:

;El programa primero despliega el nombre completo del Alumno (Nombres y apellidos)
		PUSH DS
		SUB AX,AX
		PUSH AX
		MOV AX,SEG DATA		
		MOV DS,AX		

		MOV AH,09H
		MOV DX, OFFSET NAMEALUM
		INT 21H
		
        MOV DX, OFFSET IRATERMINAL		; AQUÍ UTILIZO EL INGRESO DE UNA VARIABLE PARA ASÍ EL TURBODEBUGUER TE ENVIE A LA TERMINAL Y VEAS DESPLEGADO EL NOMBRE DEL USUARIO
		MOV AH,0AH                     ;FUNCION 0AH
		INT 21H
;Paso2:

;Se le pide al usuario inserte un número de dos dígitos
        MOV AH,09H
		MOV DX, OFFSET INSTRU1
		INT 21H

        MOV DX, OFFSET INSERTNUM
        MOV AH,0AH
        INT 21H

;Paso3:

;Se le pide al usuario inserte otro número de dos dígitos diferente al anterior. 
        MOV AH,09H
		MOV DX, OFFSET INSTRU2
		INT 21H

        MOV DX, OFFSET INSERTNUM2
        MOV AH,0AH
        INT 21H
;Paso 4:
        ;COMPARAR QUÉ NÚMERO ES MAYOR
        MOV AX,0
		MOV AL,INSERTNUM[3];COMPARAMOS SI SON IGUALES LAS UNIDADES

        MOV BX,0
        MOV BL,INSERTNUM2[3]

        CMP AL,BL
        JE SON_IGUALES_LAS_UNIDADES
        JMP NO_SON_IGUALES_LAS_UNIDADES

    SON_IGUALES_LAS_UNIDADES:
            MOV AX,0
            MOV AL,INSERTNUM[2];COMPARAMOS SI SON IGUALES LAS DECENAS

            MOV BX,0
            MOV BL,INSERTNUM2[2]

            CMP AL,BL
            JE SON_IGUALES_LAS_DECENAS
            JMP NO_SON_IGUALES_LAS_DECENAS
        SON_IGUALES_LAS_DECENAS:
                    PUSH DS
                    SUB AX,AX
                    PUSH AX
                    MOV AX,SEG DATA		
                    MOV DS,AX		

                    MOV AH,09H
                    MOV DX, OFFSET NINGUNO
                    INT 21H
                    
                    MOV DX, OFFSET IRATERMINAL		; AQUÍ UTILIZO EL INGRESO DE UNA VARIABLE PARA ASÍ EL TURBODEBUGUER TE ENVIE A LA TERMINAL Y VEAS DESPLEGADO EL NOMBRE DEL USUARIO
                    MOV AH,0AH                     ;FUNCION 0AH
                    INT 21H

                    JMP FIN ;SALTAMOS A FIN PARA FINALIZAR EL PROGRAMA
        NO_SON_IGUALES_LAS_DECENAS:
                CMP AL,BL
                JE AL_MAYOR_DECENA
                JMP BL_MAYOR_DECENA
            AL_MAYOR_DECENA:
                    MOV AX,0
		            MOV AL,INSERTNUM[2];
                    MOV BX,0
                    MOV BL,INSERTNUM[2];
                    MOV MAYOR[2],AL
                    MOV MAYOR[3],BL
                    MOV MAYOR[4],24H;PONGO UN $ EN LA PARTE FINAL DE MI MAYOR PARA QUE ASÍ SE PUEDA IMPRIMIR CUANDO LO PONGA EN TERMINAL REMPLAZANDO EL ENTER QUE QUEDA POR DEFAULT

                    MOV AX,0
		            MOV AL,INSERTNUM2[2];
                    MOV BX,0
                    MOV BL,INSERTNUM2[2];
                    MOV MENOR[2],AL
                    MOV MENOR[3],BL
                    MOV MENOR[4],24H;PONGO UN $ EN LA PARTE FINAL DE MI MENOR PARA QUE ASÍ SE PUEDA IMPRIMIR CUANDO LO PONGA EN TERMINAL REMPLAZANDO EL ENTER QUE QUEDA POR DEFAULT
                    JMP FIN
            BL_MAYOR_DECENA:
                    MOV AX,0
		            MOV AL,INSERTNUM[2];
                    MOV BX,0
                    MOV BL,INSERTNUM[2];
                    MOV MENOR[2],AL
                    MOV MENOR[3],BL
                    MOV MENOR[4],24H;PONGO UN $ EN LA PARTE FINAL DE MI MENOR PARA QUE ASÍ SE PUEDA IMPRIMIR CUANDO LO PONGA EN TERMINAL REMPLAZANDO EL ENTER QUE QUEDA POR DEFAULT

                    MOV AX,0
		            MOV AL,INSERTNUM2[2];
                    MOV BX,0
                    MOV BL,INSERTNUM2[2];
                    MOV MAYOR[2],AL
                    MOV MAYOR[3],BL
                    MOV MAYOR[4],24H;PONGO UN $ EN LA PARTE FINAL DE MI MAYOR PARA QUE ASÍ SE PUEDA IMPRIMIR CUANDO LO PONGA EN TERMINAL REMPLAZANDO EL ENTER QUE QUEDA POR DEFAULT
                    JMP FIN
    NO_SON_IGUALES_LAS_UNIDADES:
            CMP AL,BL
            JG AL_MAYOR_UNIDADES
            JMP BL_MAYOR_UNIDADES
        
        AL_MAYOR_UNIDADES:
                MOV AX,0
                MOV AL,INSERTNUM[2];COMPARAMOS SI SON IGUALES LAS DECENAS

                MOV BX,0
                MOV BL,INSERTNUM2[2]
                
                CMP AL,BL
                JG AL_MAYOR_DECENAS_2
                JMP AL_MENOR_DECENAS_2

            AL_MAYOR_DECENAS_2:
                    MOV AX,0
		            MOV AL,INSERTNUM[2];
                    MOV BX,0
                    MOV BL,INSERTNUM[2];
                    MOV MAYOR[2],AL
                    MOV MAYOR[3],BL
                    MOV MAYOR[4],24H;PONGO UN $ EN LA PARTE FINAL DE MI MAYOR PARA QUE ASÍ SE PUEDA IMPRIMIR CUANDO LO PONGA EN TERMINAL REMPLAZANDO EL ENTER QUE QUEDA POR DEFAULT

                    MOV AX,0
		            MOV AL,INSERTNUM2[2];
                    MOV BX,0
                    MOV BL,INSERTNUM2[2];
                    MOV MENOR[2],AL
                    MOV MENOR[3],BL
                    MOV MENOR[4],24H;PONGO UN $ EN LA PARTE FINAL DE MI MENOR PARA QUE ASÍ SE PUEDA IMPRIMIR CUANDO LO PONGA EN TERMINAL REMPLAZANDO EL ENTER QUE QUEDA POR DEFAULT
                    JMP FIN
            AL_MENOR_DECENAS_2:
                    MOV AX,0
		            MOV AL,INSERTNUM[2];
                    MOV BX,0
                    MOV BL,INSERTNUM[2];
                    MOV MENOR[2],AL
                    MOV MENOR[3],BL
                    MOV MENOR[4],24H;PONGO UN $ EN LA PARTE FINAL DE MI MENOR PARA QUE ASÍ SE PUEDA IMPRIMIR CUANDO LO PONGA EN TERMINAL REMPLAZANDO EL ENTER QUE QUEDA POR DEFAULT

                    MOV AX,0
		            MOV AL,INSERTNUM2[2];
                    MOV BX,0
                    MOV BL,INSERTNUM2[2];
                    MOV MAYOR[2],AL
                    MOV MAYOR[3],BL
                    MOV MAYOR[4],24H;PONGO UN $ EN LA PARTE FINAL DE MI MAYOR PARA QUE ASÍ SE PUEDA IMPRIMIR CUANDO LO PONGA EN TERMINAL REMPLAZANDO EL ENTER QUE QUEDA POR DEFAULT
                    JMP FIN
        BL_MAYOR_UNIDADES:
                ;COMO AQUÍ SUCEDE LO MISMO QUE HACEMOS EN LA PARTE DE AL_MAYOR_UNIDADES YA QUE SI LA DECENA ES MÁS GRANDE QUE LA UNIDAD PUES NO IMPORTARIA QUE FUERA MÁS GRANDE LO QUE HACEMOS ES REFERENCIAR A ESA PARTE DEL CÓDIGO Y LISTO
                
                AL_MAYOR_UNIDADES
;El programa imprime
;El número mayor es:  (pone el número mayor)

;El número menor es:  (pone el número menor)
        MOV AH,09H
		MOV DX, OFFSET ELMAYOR
		INT 21H
		
		LEA DX,MAYOR
		INT 21H

        MOV AH,09H
		MOV DX, OFFSET ELMENOR
		INT 21H
		
		LEA DX,MENOR
		INT 21H

        MOV DX, OFFSET IRATERMINAL
        MOV AH,0AH                     ;FUNCION 0AH
		INT 21H

;Paso5:

;El programa debe de terminar de manera exitosa y salir al sistema operativo correctamente.

    FIN:
        PUSH DS
		SUB AX,AX
		PUSH AX
		MOV AX,SEG DATA		
		MOV DS,AX		

		MOV AH,09H
		MOV DX, OFFSET FINDELPROGRAMA
		INT 21H
		
        MOV DX, OFFSET IRATERMINAL		; AQUÍ UTILIZO EL INGRESO DE UNA VARIABLE PARA ASÍ EL TURBODEBUGUER TE ENVIE A LA TERMINAL Y VEAS DESPLEGADO EL NOMBRE DEL USUARIO
		MOV AH,0AH                     ;FUNCION 0AH
		INT 21H

		RET

KEYS ENDP
                                   
CODIGO ENDS

STACK SEGMENT PARA STACK 'STACK'
	DB 128 DUP("PILA")
STACK ENDS

DATA SEGMENT PARA PUBLIC 'DATA'
       NAMEALUM DB "HECTOR MANUEL RUIZ JUÁREZ",0AH,0DH,"$"
       ORDEN DB 2,3 DUP (?)
       INSTRU1 DB "INSERTE UN NÚMERO DE DOS DÍGITOS",0AH,0DH,"$"
       INSERTNUM DB 3,4 DUP (?)
       INSTRU2 DB "INSERTE OTRO NÚMERO DE DOS DÍGITOS DIFERENTE AL ANTERIOR",0AH,0DH,"$"
       INSERTNUM2 DB 3,4 DUP (?)
       ELMAYOR DB "EL NUMERO MAYOR ES: ",0AH,0DH,"$"
       ELMENOR DB "EL NÚMERO MENOR ES: ",0AH,0DH,"$"
       MAYOR DB 3,4 DUP (?)
       MENOR DB 3,4 DUP (?)
       NINGUNO DB "SON IGUALES",0AH,0DH,"$"
       FINDELPROGRAMA DB "GRACIAS POR USAR EL PROGRAMA",0AH,0DH,"$"

DATA ENDS

END