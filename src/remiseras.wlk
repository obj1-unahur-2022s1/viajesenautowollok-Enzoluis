/*
 * Clientes: Muy bien, solo unas observaciones mínimas en la utilización
 *           de variables innecesarias. 
 * Remiseras: Muy bien, idem con tema variables.
 * Observaciones: Es conveniente agrupar los objetos que cumplen el mismo
 *                contrato en un mismo archivo, y no mezclar con otros objetos.
 *                En ese ejercicio convenía tener a todas las clientas en un archivo
 *                y las remiseras en otro.
 */
// Clientes
object ludmila {
	/* Te dejo una forma resumida para implementar métodos de consulta */
	method precioPorKm() = 18
}

object anaMaria {
	/* La variable monto es innecesaria. Muy bien la implementación
	 * del método estadoEconomicoContrario() para actualizar la variable.
	 * Y te dejo una sugerencia para simplificar el código en el método de 
	 * consulta que tiene condicional.
	 */
	var economicamenteEstable = true
	
	method estadoEconomico(){
		return economicamenteEstable
	}
	method estadoEconomicoContrario(){
		economicamenteEstable = not economicamenteEstable 
	}
	method precioPorKm() = if(economicamenteEstable) 30 else 25
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
	/* te dejo la forma reducida */
	method precioPorKmPactado(cliente, kms) = cliente.precioPorKm() * kms
}

object gabriela {
	/* está correcto el método precioPorKmPactado(cliente,kms). Te dejo
	 * una variante para simplificar la expresión.
	 */
	method precioPorKmPactado(cliente, kms) = 
		cliente.precioPorKm() * kms * 1.2
}

object mariela {
	/* muy bien al usar el mensaje max() en lugar de condicional */
	method precioPorKmPactado(cliente, kms){
		return 50.max(cliente.precioPorKm() * kms)
	}
}

object juana {
	/* La variable monto es innecesaria. Te dejo otra solución que tiene
	 * también la simplificación del código
	 */
	method precioPorKmPactado(cliente, kms) = if(kms > 8) 200 else 100
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


