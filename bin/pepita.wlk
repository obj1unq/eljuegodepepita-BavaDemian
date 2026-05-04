import extras.*
import wollok.game.*

object pepita {
	var energia = 250
	var perseguidor = silvestre
	var property position = game.at(3, 5)
	var property image = "pepita-libre.png"
	var property estado = viva

	method positionX() = position.x()

	method color() = "ffffff"
	method text() = "\n\n\n\n" + energia

	// method image() = "pepita.png"

	method init() {
		self.vivir()
		position = game.at(3, 5)
		energia = 250
	}

	method atrapada() = self.position() == perseguidor.position() 

	method vivir() {
		self.estado(viva)
		self.image("pepita-libre.png")
	}
	
	method morir() {
		self.estado(muerta)
		self.image("pepita-gris.png")
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
		game.removeVisual(comida)
	}

	method mover(direccion) {
		if (estado == viva){
			viva.mover(direccion)
		} else {
			muerta.mover(direccion)
		}
	}
	// 	if (energia >= 9) position = direccion.siguiente(position) else self.caer()
	// 	self.volar(1)
	//   const oldPosition = position
	//   if (oldPosition != position) self.volar(1)

	method volar(kms) {
		energia = energia - 9 * kms 
	}
	
	method caer() {
		position = game.at(position.x(), 0)
		silvestre.atrapar()
	}

	method energia() = energia

	// DELEGAR COSAS A ESTADO
}

object viva {
	method mover(direccion){
		pepita.position(direccion.siguiente(pepita.position()))
		pepita.volar(1)
	}
}

object muerta {
	method mover(direccion) {
		pepita.error("Pepita está Muerta")
	}
}

