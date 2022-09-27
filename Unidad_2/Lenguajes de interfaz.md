# Cápitulo 4

## INTRUCCIONES DE MOVIMIENTO

* MOV

* PUSH, POP; estas son instruscciones reelevantes ya que *almacenan* y *recuperan* datos de la memoria de pila. Existen 6 variaciones para cada una como lo serían de: *registro de memoria*, *inmediata*, *de registro de segmento*, *de bandera* y de *todos los registros*. Solo pueden utilizarse en los microprocesadores 80186 al Pentium 4. 

* LEA, LDS, LES, LFS,LGS.        Ejemplo de alternativa: MOV BX, OFFSET <VARIABLE>

* LODS, STOS

* MOVS

* INS,OUTS

* XCHG

* XLAT

* IN,OUT




## INS y OUTS
Estos son para los dispositivos de entrada y salida, no refiriendonos a su ambiente físico si no que tengan que ver con la arquitectura de la computadora.

## XCHC
Es para intercambio contenido deregistros 


AL<-Ds[BX+AL] estaforma es para que almacenede manera temporal AL.

## IN OUT
es para cadenas de puertos 

> Nota: 
> El **prefijo de sustitución de segmento** funciona de la siguiente manera:
> **BP**
> *MOV AL,[BP+SP]* no es lo mismo que DS+10H+BP+S
> LA MENRA CORRECTA ES 
> *SS+10H+BP+SI*

![alt](Pasted%20image%2020220927080044.png)

*Son switches para determinar el tipo de arquitectra que vamos a estar utilizando* en la **.287 y .387** son de manera que escogiamos el tipo de coprocesador matemático. 

>Nota 
>la imagen de arriba son directivas es decir procesa la directiva es decir en funcion de las directivas el compilador hace cosas al cógido y una vez jecutao no existen las directivas solo queda el código. 


# Capítulo 5

## Suma (ADD)
## Suma con acarreo

## Resta (SUB)
## Resta con acarreo  (SBB)


Existe una importante diferencia entre lo que es una Instrucción de ensamblador y una directiva de compilación.

Estudiar y entender en que consiste esta diferencia y revisar las directivas que aparecen en el libro de Brey capítulo 5 al final, en página 135 de la versión 7

Las que usaremos prácticamente de forma inmediata son:

ASSUME	Informa al ensamblador que debe nombrar cada segmento (segmentos completos solamente).
 	 
DB	Define byte(s) (8 bits).
DD	Define doble(s) palabra(s) (32 bits).
DW	Define palabra(s) (16 bits).
DQ	Define palabra(s) cuádruple(s) (64 bits).
DT	Define diez bytes (80 bits).
DUP	Genera duplicados.
EQU	Iguala datos o una etiqueta con otra etiqueta.
 	 
SEGMENT	Inicia un segmento para segmentos completos.
ENDS	Termina un segmento o estructura de datos.
STACK	Inicia un segmento de pila para segmentos completos.
DATA	Inicia un segmento de datos para segmentos completos.
ORG	Establece el origen dentro de un segmento.
 	 
PROC	Inicia un procedimiento.
ENDP	Termina un procedimiento.
 	 
OFFSET	Especifica una dirección de desplazamiento.
 	 
BYTE	Indica el tamaño de byte, como en BYTE PTR.
WORD	Indica el tamaño de palabra, como en WORD PTR.
DWORD	Indica el tamaño de doble palabra, como en DWORD PTR.
QWORD	Indica palabras octales, como en QWORD PTR.
 	 
FAR	Define un apuntador lejano, como en FAR PTR.
NEAR	Define un apuntador cercano, como en NEAR PTR.
 	 
END	Termina un archivo de programa.

INTRUCCIONES DE OPERACIONES LOGICAS Y ARITMETICAS

ARITMETICAS

LOGICAS	
DESPLAZAMIENTO Y

CORRIMIENTO

COMPARACION DE

CADENAS

ADD

AND	SHL	SCAS
INC	OR	SAL	CMPS
ADC	XOR	SHR	
SUB	TEST	SAR	
DEC	BT	RCL	
SBB	BTC	ROL	
CMP	BTR	RCR	
MUL	BTS	ROR	
IMUL	NOT		
DIV	NEG		
IDIV	