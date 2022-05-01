/*
 * Oficina: 
 */
import remiseras.*

object oficina {
	var primerRemisera
	var segundaRemisera
	
	method asignarRemiseras(remisera1, remisera2) {
		primerRemisera = remisera1
		segundaRemisera = remisera2
	}
	method cambiarPrimerRemiserarPor(remisera) {
		primerRemisera = remisera
	}
	method cambiarSegundoRemiseraPor(remisera) {
		segundaRemisera = remisera
	}
	method intercambiarRemiseras() {
		/*
		 * Acá te dejo la forma de reutilizar el código para hacer el intercambio
		 * No hace falta utilizar una variable auxiliar
		 * Recordá que podes llamar a tus metodos con self
		 */
		self.asignarRemiseras(segundaRemisera,primerRemisera)
	}
	method remiseraElegidaParaViaje(cliente, kms) =
		/* Te dejo un ejemplo para resolver esto de forma más simple
		 * y sin usar variable auxiliar
		 */
		if (primerRemisera.precioPorKmPactado(cliente, kms) 
		 	- segundaRemisera.precioPorKmPactado(cliente, kms) > 30) { 
		 		segundaRemisera
		} else { primerRemisera }		
		
}
