import wollok.game.*
import pepita.*



object silvestre {
    var property position = game.at(3,0)
    var presa = pepita

    method image() = "silvestre.png"
    method position() = game.at(self.x(), 0)

    method x() {
      const xPresa = presa.position().x()

      return if(xPresa >= 3) xPresa else 3
    }

    method atrapar() {
      game.removeVisual(presa)
      game.stop()
    }
}