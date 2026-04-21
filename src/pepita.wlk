import extras.*
import wollok.game.*

object pepita {
	var energia = 100
	var perseguidor = silvestre
	var property position = game.at(2,3)
	var property image = "pepita-" + self.estado() + ".png"
	method positionX() = position.x()

	// method image() = "pepita.png"

	method text() = energia

	method estado() {
		return if(self.atrapada()) "gris" else "libre"
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method atrapada() = self.position() == perseguidor.position()

	method pepitaGris() {
	  if(not null.atrapada()){
		self.image("pepita-gris.png")
	  }
	}

	method mover(direccion) {
	  position = direccion.siguiente(position)
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() = energia
}

