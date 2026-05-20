Algoritmo encuesta_plataforma
	
	Definir eleccion Como Cadena
	Definir votosAndroid, votosIOS Como Entero
	
	votosAndroid <- 0
	votosIOS <- 0
	
	Repetir
		Escribir "Ingrese su elección (A=Android / I=iOS / 0=Terminar):"
		Leer eleccion
		
		Si eleccion == "A" Entonces
			votosAndroid <- votosAndroid + 1
		FinSi
		
		Si eleccion == "I" Entonces
			votosIOS <- votosIOS + 1
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
