import extras.*
import wollok.game.*

object pepita {
	var energia = 100
	var perseguidor = silvestre
	var property position = game.at(2,3)
	var property image = "pepita-" + self.estado() + ".png"
	method positionX() = position.x()

	method color() = "ffffff"
	method text() = "\n\n\n\n" + energia

	// method image() = "pepita.png"

	method estado() {
		return if(self.atrapada()) "gris" else "libre"
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
		game.removeVisual(comida)
	}

	method atrapada() = self.position() == perseguidor.position()

	method mover(direccion) {
		position = direccion.siguiente(position)
		self.volar(1)
	//   const oldPosition = position
	//   if (energia >= 9) position = direccion.siguiente(position) else self.caer()
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
}

