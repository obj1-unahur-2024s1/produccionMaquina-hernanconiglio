object registroProduccion {
	const registroDePiezas = []
	
	method agregarAlRegistro(cantPiezas) {
		registroDePiezas.add(cantPiezas)
	}
	
	method quitarAlRegistro(cantPiezas) {
		registroDePiezas.remove(cantPiezas)
	}
	
	method algunDiaSeProdujo(cantidad) {
		return registroDePiezas.contains(cantidad)
	}
	
	method maximoValorDeProduccion() {
		return registroDePiezas.max()
	}
	
	method valoresDeProduccionPares() {
		return registroDePiezas.filter({r => r.even()})
	}
	
	method produccionEsAcotada(n1,n2) {
		return registroDePiezas.all({r => r.between(n1,n2)})
	}
	
	method produccionesSuperioresA(cuanto) {
		return registroDePiezas.filter({r => r > cuanto})
	}
	
	method produccionesSumando(n) {
		registroDePiezas.map({r => r + n})
	}
	
	method totalProducido() {
		return registroDePiezas.sum()
	}
	
	method ultimoValorDeProduccion() {
		return registroDePiezas.last()
	}
	
	method primerValorDeProduccion() {
		return registroDePiezas.first()
	}
	
	method cantidadProduccionesMayorALaPrimera() {
		return registroDePiezas.count({r => r > self.primerValorDeProduccion()})
	}
	
	method cantidadProduccionesMayorALaPrimeraBis() {
		return registroDePiezas.count({r => r > registroDePiezas.first()})
	}
	
}
