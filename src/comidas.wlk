import wollok.game.*

object manzana {
	const base= 5
	var gradoDeMadurez = 0
	
	method position() = game.at(8, 5)
	method image() = "manzana.png"

	method color() = "ffffff"
	method text() = "\n\n\n\n" + gradoDeMadurez

	method energiaQueOtorga() {
		return base * gradoDeMadurez
	}
	
	method madurar() {
		gradoDeMadurez = (gradoDeMadurez + 1) % 4
	}

}

object alpiste {
	var energia = 20

	method position() = game.at(26, 15)
	method image() = "alpiste.png"

	method energiaQueOtorga() {
		return energia
	} 

}

