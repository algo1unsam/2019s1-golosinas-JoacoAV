object bombon {
	var peso = 15
	
	method precio() = 5
	method peso() = peso 
	method gusto() ="frutilla"
	method libreGluten() = true 
	method mordisco() {
		peso = (peso * 0.8 - 1).max(0)
	}
}

object alfajor {
	var peso = 300
	
	method precio() = 12
	method peso() = peso
	method gusto() = "chocolate"
	method libreGluten() = false
	method mordisco() {
		peso = (peso * 0.8).truncate(1)	//trunco el resultado para reducir la cantidad de mordiscos en el test
	}
}

object caramelo {
	var peso = 5
	
	method precio() = 1
	method peso() = peso
	method gusto() = "frutilla"
	method libreGluten() = true
	method mordisco(){
		peso = (peso - 1).max(0)
	}
}

object chupetin {
	var peso = 7
	
	method precio() = 2
	method peso() = peso
	method gusto() = "naranja"
	method libreGluten() = true
	method mordisco(){
		if (peso>=2){
			peso = (peso * 0.9).truncate(1) //trunco el resultado para reducir la cantidad de mordiscos en el test
		}
	}
}

object oblea {
	var peso = 250
	
	method precio() = 5
	method peso() = peso
	method gusto() = "vainilla"
	method libreGluten() = false
	method mordisco() {
		if(peso>70){
			peso = (peso * 0.5).truncate(1)
		}else {
			peso = (peso * 0.75).truncate(1)
		}
	}
}

object chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual
	
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method peso() = pesoActual
	method precio() = 0.5 * pesoInicial
	method gusto() = "chocolate"
	method libreGluten() = false
	method mordisco() {
		pesoActual = (pesoActual - 2).max(0)
	}
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() = golosinaInterior.precio() + 2
	method peso() = golosinaInterior.peso() + pesoBanio
	method gusto() = golosinaInterior.gusto()
	method libreGluten() = golosinaInterior.libreGluten()
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}
}


object tuttifrutti {
	var peso = 5
	var gusto = "frutilla"
	var property libreGluten = false
	
	method peso() = peso
	method libreGluten() = libreGluten
	method precio() = if(libreGluten) 7 else 10
	method gusto() = gusto
	method mordisco() = (gusto = gusto.next())

}

object frutilla{
	method next(){
		return "chocolate"
	}
}

object chocolate{
	method next() = "naranja"
}

object naranja{
	method next() = "frutilla"
}