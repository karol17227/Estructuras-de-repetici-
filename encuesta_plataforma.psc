Algoritmo encuesta_plataforma
	
	Definir eleccion Como Cadena
	Definir votosAndroid, votosIOS Como Entero
	
	votosAndroid <- 0
	votosIOS <- 0
	
	Repetir
		
		Escribir "Ingrese su elección (Android/iOS/0 para terminar):"
		Leer eleccion
		
		Si eleccion == "Android" O eleccion == "android" Entonces
			votosAndroid <- votosAndroid + 1
		SiNo
			Si eleccion == "iOS" O eleccion == "ios" Entonces
				votosIOS <- votosIOS + 1
			SiNo
				Si eleccion <> "0" Entonces
					Escribir "Elección no válida, no se tendrá en cuenta"
				FinSi
			FinSi
		FinSi
		
	Hasta Que eleccion == "0"
	
	Escribir "Votos Android: ", votosAndroid
	Escribir "Votos iOS: ", votosIOS
	
	Si votosAndroid > votosIOS Entonces
		Escribir "La plataforma elegida es: Android"
	SiNo
		Si votosIOS > votosAndroid Entonces
			Escribir "La plataforma elegida es: iOS"
		SiNo
			Escribir "Empate, se usará otro mecanismo de elección"
		FinSi
	FinSi
	
FinAlgoritmo