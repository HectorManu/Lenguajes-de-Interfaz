# INS y OUTS
Estos son para los dispositivos de entrada y salida, no refiriendonos a su ambiente físico si no que tengan que ver con la arquitectura de la computadora.

# XCHC
Es para intercambio contenido deregistros 


AL<-Ds[BX+AL] estaforma es para que almacenede manera temporal AL.

# IN OUT
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


