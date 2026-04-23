import extras.*
import wollok.game.*

object pepita {
	var energia = 250
	var perseguidor = silvestre
	var property position = game.at(3, 5)
	var property image = "pepita-" + self.estado() + ".png"
	var estado = viva

	method positionX() = position.x()

	method color() = "ffffff"
	method text() = "\n\n\n\n" + energia

	// method image() = "pepita.png"

	method init() {
		estado = viva
		position = game.at(3, 5)
		energia = 250
	}

	method estado() {
		return if(self.atrapada()) "gris" else "libre"
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
		game.removeVisual(comida)
	}

	method atrapada() = self.position() == perseguidor.position()

	method mover(direccion) {
		if (not viva) self.error("Estoy muerta")
		if (energia >= 9) position = direccion.siguiente(position) else self.caer()
		self.volar(1)
	//   const oldPosition = position
	//   if (oldPosition != position) self.volar(1)
	}

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
 		pepita.position(direccion.siguiente(direccion))
		pepita.volar(1)
	}
}

object muerta {
	method mover(direccion) {
		pepita.error("Pepita está Muerta")
	}
}

