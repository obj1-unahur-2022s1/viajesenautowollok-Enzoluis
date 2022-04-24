// Clientes
object ludmila {
	method precioPorKm(){
		return 18
	}
}

object anaMaria {
	var economicamenteEstable = true
	var monto=25
	
	method estadoEconomico(){
		return economicamenteEstable
	}
	method estadoEconomicoContrario(){
		economicamenteEstable = not economicamenteEstable 
	}
	method precioPorKm(){
		if(economicamenteEstable){
			monto=30
		}
		return monto
	}
}

object  teresa {
	var monto = 22
	
	method nuevoMonto(valor){
		monto = valor
	}
	method precioPorKm(){
		return monto
	}
}

object melina {
	var trabajando
	
	method estaTrabajandoPara(persona) {
		trabajando = persona
	}
	method estaTrabajandoPara() {
		return trabajando
	}
	method precioPorKm(){
		return trabajando.precioPorKm() - 3
	}
}
//Remiseras

object roxana {
	method precioPorKmPactado(cliente, kms){
		 return cliente.precioPorKm() * kms
	}
}

object gabriela {
	method precioPorKmPactado(cliente, kms){
		return cliente.precioPorKm() * kms + (cliente.precioPorKm() * kms* 0.2)
	}
}

object mariela {
	method precioPorKmPactado(cliente, kms){
		return 50.max(cliente.precioPorKm() * kms)
	}
}

object juana {
	var monto = 100
	method precioPorKmPactado(cliente, kms){
		if(kms > 8){
			monto = 200
		}
		return monto
	}
}

object lucia {
	var reemplazo
	
	method estaReemplazando(persona) {
		reemplazo = persona
	}
	method estaReemplazando() {
		return reemplazo
	}
	method precioPorKmPactado(cliente, kms) {
		return reemplazo.precioPorKmPactado(cliente, kms)
	}	
}


