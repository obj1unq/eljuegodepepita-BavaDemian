import wollok.game.*


object izquierda {
    method siguiente(position) {
      return if (position.x() < game.width() -1 ) position.right(1) else position
    }
}

object derecha {
    method siguiente(position) {
      return if (position.x() < game.width() -1 ) position.right(1) else position
    }
}

object arriba {
    method siguiente(position) {
      return if (position.x() < game.width() -1 ) position.right(1) else position
    }
}

object abajo {
    method siguiente(position) {
      return if (position.x() < game.width() -1 ) position.right(1) else position
    }
}