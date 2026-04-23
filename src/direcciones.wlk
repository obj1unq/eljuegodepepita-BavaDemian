import wollok.game.*


object derecha {
    method siguiente(position) {
      if (position.x() >= game.width() -1) self.error("Estas en el limite")
      return position.right(1)   
    }
}

object izquierda {
    method siguiente(position) {
      if (position.x() <= 0) self.error("Estas en el limite")
      return position.left(1)
    }
}

object arriba {
    method siguiente(position) {
      if (position.y() >= game.height() -1) self.error("Estas en el limite")
      return position.up(1)
    }
}

object abajo {
    method siguiente(position) {
      if (position.y() <= 0) self.error("Estas en el limite")
      return position.down(1)
    }
}