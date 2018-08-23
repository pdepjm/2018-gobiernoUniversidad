object estado {
	var gobierno = necedad
	var presupuesto = 1000
	var opinionPublica = 51
	
	method serAfectado(impacto){
		opinionPublica = gobierno.cuantoAfecta(impacto)
	}
	method reaccionarFrenteA(medida){
		gobierno.reaccionar(medida,self)
	}
	
	method modificarPresupuesto(cantidad){
		presupuesto += cantidad
	}
	method modificarOpinionPublica(cantidad){
		opinionPublica += cantidad
	}
}

object universidad {
	var fondosDisponibles = 0
	
	method hecerArreglos(unArreglo){
		fondosDisponibles -= unArreglo.costo()
	}
	method realizarMedida(medida){
		estado.serAfectado(medida.impacto())
	}
}


/* Tipo de gobierno */
object necedad {
	method cuantoAfecta(valor){
		return valor *2
	}
	method reaccionar(medida, unEstado){
		unEstado.modificarPresupuesto(-100)
	}
}

object neutralidad {
	method cuantoAfecta(valor){
		return 0
	}
	method reaccionar(medida, unEstado){
		// no hace nada
	}
}

object inteligencia {
	method cuantoAfecta(valor){
		return valor
	}
	method reaccionar(medida, unEstado){
		unEstado.modificarOpinionPublica(10)
		unEstado.modificarPresupuesto(100)
	}
}

/* Arreglos */
object arregloDeBancos{
	method costo(){
		return 1000
	}
}

object compraDePCS {
	var cantidad = 5
	var precioUnitario = 15000
	
	method costo(){
		return cantidad * precioUnitario
	}
}

/* Medidas */
object clasePublica {
	var asistencia = 10
	method impacto(){
		return asistencia * 1013
	}
}

object lluviaDePapelHigienico {
	var cantRollos = 100
	method impacto(){
		return cantRollos
	}
}

object traerTortaAClase {
	var cantTortas = 0 
	method impacto(){
		return (-10)*cantTortas
	}
}
