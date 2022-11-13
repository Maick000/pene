Funcion lanzar<-random()
	lanzar<-azar(6)+1
FinFuncion
Algoritmo Juego_Dados
	Repetir
		Escribir " Ingrese de 2 a 4 jugadores"
		leer N
		Si N<=1 o N>=5 Entonces
			Escribir "Numero incorrecto de jugadores"
			Escribir "Intentelo de nuevo"
		Fin Si
	Hasta Que N>1 y N<5
	Repetir
		Escribir " Ingrese de 1 a 3 Rondas que desee jugar"
		leer R
		Si R<1 o R>3 Entonces
			Escribir "Numero incorrecto de rondas"
			Escribir "Intentelo de nuevo"
		Fin Si
	Hasta Que R>0 y R<4
	Dimension Resultado[N]
	Para i<-1 Hasta N Con Paso 1 Hacer
		sumadado<-0
		Para j<-1 Hasta R Con Paso 1 Hacer
			Escribir "Turno del jugador: ", i
			Escribir "Presione tecla para lazar dados"
			Esperar Tecla 
			Esperar 1 Segundos
			dado1<-random()
			Escribir dado1
			Esperar 1 Segundos
			dado2<-random()
			Escribir dado2 , "+"
			Escribir "-----------"
			Escribir dado1+dado2
			sumadado<-sumadado+(dado1+dado2)
		Fin Para
		Resultado[i]<-sumadado
		
	Fin Para
	Definir c Como Entero
	Dimension emp[4]
	c<-1
	Para i<-1 Hasta N Con Paso 1 Hacer
		Si Resultado[i]> Mayor Entonces
			Mayor<-Resultado[i]
			P<-i
			ganador<-Mayor
		Fin Si
	Fin Para
	para j<-1 hasta N Con Paso 1 Hacer
		si j <> p Entonces
			emp[1]<-p
			si ganador = Resultado[j] Entonces
				emp[j]<-j
				c<-c+1	
			FinSi
		FinSi
	FinPara
	
	//Este mientas entra cuando dos o mas jugadores tiene el mismo Resultado del lanzamiento de los dados
	mientras c > 1 Hacer
//		si c > 0 Entonces
//		sumadado<-0
//		Dimension empa[4]
		//		
		mayor<-0
		c1<-0
		Escribir "Hay empate entre ", c, " jugadores "  
		escribir " El desempate se decide con 1 lanzamineto de dados"
		
		para i<-1 hasta c Con Paso 1 Hacer
			
			Escribir "Turno del jugador: ", emp[i]
			Escribir "Presione tecla para lazar dados"
			Esperar Tecla
			Esperar 1 Segundo
			dado1<-random()
			Escribir dado1
			Esperar 1 Segundo
			dado2<-random()
			Escribir dado2, "+"
			Escribir "-----------"
			Escribir dado1+dado2
			Resultado[i]<-dado1+dado2
		FinPara
		//para determinar cual es el ganadador
    	Para i<-1 Hasta c Con Paso 1 Hacer
		Si Resultado[i]> Mayor Entonces
			Mayor<-Resultado[i]
			P<-i
			ganadador<-Mayor
		Fin Si
	FinPara
	// volvemos a verificar si hay empate nuevamente
	para j<-1 hasta c Con Paso 1 Hacer
		emp[1]<-p //para guarda la posicion del mayor y compararla con el resto
			si j <> p Entonces
			  si mayor = Resultado[j] Entonces
					emp[j]<-j
					c1<-c1+2
				FinSi
			finsi	
	FinPara
	c<-c1
	si c > 0 Entonces
		Escribir "Nuevamente empate"
	FinSi
FinMientras 

		Escribir "El ganador es el jugador ", P " Con la mayor puntuacion que es ", mayor

FinAlgoritmo