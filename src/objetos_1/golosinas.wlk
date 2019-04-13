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
	// definir
}

object caramelo {
	// definir
}

object chupetin {
	// definir
}

object oblea {
	// definir
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
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() = golosinaInterior.precio() + 2
	method peso() = golosinaInterior.peso() + pesoBanio
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { /* completar */}	
}

/*#### Pastilla tutti-frutti
Pesa inicialmente 5 gramos. 
La pastilla puede ser libre de gluten o no (se configura). Si es libre de gluten el precio es $7; si no, es de $10.  
En cada mordisco cambia el sabor, pasa de frutilla a chocolate, de ahí a naranja, de ahí vuelve a frutilla.  */

object tuttifrutti {
	var peso = 5
	var gusto = "Frutilla"
	var property libreGluten = false
	
	method peso() = peso
	method libreGluten() = libreGluten
	method precio() = if(libreGluten) 7 else 10
	method gusto() = gusto
	method mordisco() = (gusto = gusto.siguiente())
	

}

object frutilla{
	method siguiente() = "Chocolate"
}

object chocolate{
	method siguiente() = "Naranja"
}

object naranja{
	method siguiente() = "Frutilla"
}