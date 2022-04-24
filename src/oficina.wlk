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
		var intercambio
		intercambio = primerRemisera
		primerRemisera = segundaRemisera
		segundaRemisera = intercambio
	}
	method remiseraElegidaParaViaje(cliente, kms) {
		var chofer = primerRemisera
		
		if(self.esMenorPrecioDe2daRemiseraQue1erRemisera(cliente, kms)
			&& 30 < self.diferenciaDePrecioEntre2daY1raRemisera(cliente, kms)) {
					 	chofer = segundaRemisera
					 	self.intercambiarRemiseras()
					 }
					 return chofer
	}
	method esMenorPrecioDe2daRemiseraQue1erRemisera(cliente, kms) {
		return segundaRemisera.precioPorKmPactado(cliente, kms) < primerRemisera.precioPorKmPactado(cliente, kms)
	}
	method diferenciaDePrecioEntre2daY1raRemisera(cliente, kms){
		return (segundaRemisera.precioPorKmPactado(cliente, kms) - 
					 primerRemisera.precioPorKmPactado(cliente, kms)).abs()
	}
}
