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
		golosinas.forEach({unaGolosina => unaGolosina.mordisco()})
	}																																																																																								
	
	method hayGolosinasSinTACC(){
		self.comprar(bombon)
		self.comprar(tuttifrutti)
		golosinas.filter({unaGolosina => })
	}
	
}

