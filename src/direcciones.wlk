import wollok.game.*


object derecha {
    method siguiente(position) {
      return if (position.x() < game.width() -1 ) position.right(1) else position
    }
}

object izquierda {
    method siguiente(position) {
      return if (position.x() > 0) position.left(1) else position
    }
}

object arriba {
    method siguiente(position) {
      return if (position.y() < game.height() -1) position.up(1) else position
    }
}

object abajo {
    method siguiente(position) {
      return if (position.y() > 0) position.down(1) else position
    }
}