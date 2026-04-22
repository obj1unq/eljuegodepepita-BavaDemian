import wollok.game.*

object manzana {
	const base= 5
	var madurez = 1
	
	method position() = game.at(8, 5)
	method image() = "manzana.png"

	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}

}

object alpiste {

	method energiaQueOtorga() {
		return 20
	} 

}

