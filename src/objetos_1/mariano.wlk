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

	method hayGolosinasSinTACC(){
		return golosinas.any ({golosina => golosina.libreGluten()})
	}

	method preciosCuidados() {
		return golosinas.all({ golosina => golosina.precio() <= 10 })
	}

	method golosinaDeSabor(unGusto) {
		return golosinas.find({ golosina => golosina.gusto(unGusto) })
	}

	method golosinasDeSabor(unGusto) {
		return golosinas.filter({ golosina => golosina.gusto(unGusto) })
	}

	method sabores() {
		return golosinas.map({ golosina => golosina.gusto() }).asSet()
	}

	method golosinaMasCara() {
		return golosinas.max({ golosina => golosina.precio() })
	}
	
	method pesoGolosinas() {
		return golosinas.sum({ golosina => golosina.peso() })
	}

	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.difference(golosinas)
	}
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.difference(golosinas.map{
			golosina=>golosina.gusto()})
	}		
}

