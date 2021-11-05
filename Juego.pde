class Juego {
  int turnoActual;
  int pantallaActual;
  Tablero tablero;
  Pantalla pantallaInicio, pantallaGano, pantallaPerdiste;
  boolean gano, perdio;

  Juego() {
    pantallaActual = 1;
    pantallaInicio = new Pantalla("Ta - Te - Ti");
    pantallaGano = new Pantalla("Usted ha ganado, felicitaciones");
    this.tablero = new Tablero();
    gano = false;
    perdio = false;
    this.gano = this.tablero.gano;
  }

  void dibujar() {
    if (pantallaActual == 0) {
      pantallaInicio.dibujar();
      
    } else if (this.gano) {
      pantallaGano.dibujar();
    } else if (this.perdio) {
      pantallaPerdiste.dibujar();
    } else if (pantallaActual == 1) {
      this.tablero.dibujar();
      if (this.turnoCirculo()) {     
        this.tablero.dibujar();
        siguienteTurno();
      }
    }
  }
  void clickPresionado() {

    if (this.turnoCruz()) {
      this.tablero.clickPresionado();
      siguienteTurno();
    }
  }

  boolean turnoCruz() {
    return turnoActual == 0;
  }
  boolean turnoCirculo() {
    return turnoActual == 1;
  }

  void siguienteTurno() {

    if (this.turnoCruz()) {

      turnoActual++;
      this.tablero.turnoDeInicioCruz();
    } else if (this.turnoCirculo()) {

      turnoActual--;
      this.tablero.turnoDeInicioCirculo();
    }
  }


  /*

   */
}
