import extras.*
import wollok.game.*

object pepita {
	var energia = 100
	var property position = game.at(2,3)
	var property image = "pepita.png"
	method positionX() = position.x()

	// method image() = "pepita.png"

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method atrapada() = self.position() == silvestre.position()

	method pepitaGris() {
	  if(not null.atrapada()){
		self.image("pepita-gris.png")
	  }
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() = energia
}

