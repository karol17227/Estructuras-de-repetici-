Algoritmo encuesta_plataforma
	
	Definir eleccion Como Cadena
	Definir votosAndroid, votosIOS Como Entero
	
	votosAndroid <- 0
	votosIOS <- 0
	
	Repetir
		Escribir "Ingrese su elección (A=Android / I=iOS / 0=Terminar):"
		Leer eleccion
		
		Si eleccion == "A" O eleccion == "a" Entonces
			votosAndroid <- votosAndroid + 1
		FinSi
		
		Si eleccion == "I" O eleccion == "i" Entonces
			votosIOS <- votosIOS + 1
		FinSi
		
		Si eleccion <> "A" Y eleccion <> "a" Y eleccion <> "I" Y eleccion <> "i" Y eleccion <> "0" Entonces
			Escribir "Opción no válida, intente de nuevo"
		FinSi
		
	Hasta Que eleccion == "0"
	
	Escribir "Votos Android: ", votosAndroid
	Escribir "Votos iOS: ", votosIOS
	
	Si votosAndroid > votosIOS Entonces
		Escribir "Gana Android"
	SiNo
		Si votosIOS > votosAndroid Entonces
			Escribir "Gana iOS"
		SiNo
			Escribir "Empate"
		FinSi
	FinSi
	
FinAlgoritmo
