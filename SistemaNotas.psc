Proceso SistemaNotas
	
    Definir notas Como Real
    Dimension notas[5,3]
	
    Definir promedios Como Real
    Dimension promedios[5]
	
    Definir i,j Como Entero
	
    LeerNotas(notas)
	
	Para i <- 0 Hasta 4 Hacer
		promedios[i] <- CalcularPromedio(i, notas)
	FinPara

    MostrarResultados(promedios)
	
FinProceso



SubProceso LeerNotas(notas)
    Definir i, j Como Entero
	
    Para i <- 0 Hasta 4 Hacer
        Escribir "Alumno ", i + 1
		
        Para j <- 0 Hasta 2 Hacer
            Repetir
                Escribir "Digite la nota ", j + 1, ": "
                Leer notas[i,j]
				
                Si notas[i,j] < 0 O notas[i,j] > 5 Entonces
                    Escribir "Nota invalida. Ingrese un valor entre 0 y 5."
                FinSi
				
            Hasta Que notas[i,j] >= 0 Y notas[i,j] <= 5
        FinPara
		
    FinPara
FinSubProceso

	
	Funcion prom <- CalcularPromedio(fila, notas)
		Definir j Como Entero
		Definir suma, prom Como Real
		
		suma <- 0
		
		Para j <- 0 Hasta 2 Hacer
			suma <- suma + notas[fila, j]
		FinPara
		
		prom <- suma / 3
		
FinFuncion



Funcion estado <- DeterminarEstado(prom)
    Definir estado Como Cadena
    Si prom >= 3 Entonces
        estado <- "Gano"
    SiNo
        estado <- "Perdio"
    FinSi
FinFuncion

SubProceso MostrarResultados(promedios)
    Definir i Como Entero
	
    Para i <- 0 Hasta 4 Hacer
        Escribir ""
        Escribir "Alumno ", i + 1
        Escribir "Promedio: ", promedios[i]
        Escribir "Estado: ", DeterminarEstado(promedios[i])
    FinPara
FinSubProceso

