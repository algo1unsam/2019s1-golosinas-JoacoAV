import golosinas.*

object mariano {

	var golosinas = #{}

	method comprar(unaGolosina) {
		golosinas.add(unaGolosina)
	}

	method golosinas() = golosinas

	method desechar(unaGolosina) {
		golosinas.remove(unaGolosina)
	}

	method probarGolosinas() {
		golosinas.forEach({ unaGolosina => unaGolosina.mordisco()})
	}

	method hayGolosinasSinTACC() {
		return !golosinas.any({ golosina => golosina.l()})
	}

	method preciosCuidados() {
		return golosinas.all({ golosina => golosina.precio() <= 10 })
	}

	method golosinaDeSabor(unSabor) {
		return golosinas.find({ golosina => golosina.sabor() == unSabor })
	}

	method golosinasDeSabor(unSabor) {
		return golosinas.filter({ golosina => golosina.sabor() == unSabor })
	}

	method sabores() {
		return golosinas.map({ golosina => golosina.sabor() }).asSet()
	}

	method golosinaMasCara() {
		return golosinas.max({ golosina => golosina.precio() })
	}

	method pesoGolosinas() {
		return golosinas.sum({ golosina => golosina.peso() })
	}

	method golosinasFaltantes(golosinasDeseadas) {
		return golosinas.filter({})
	}

}

