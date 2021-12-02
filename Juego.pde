class Juego {
  int turnoActual;
  int pantallaActual;
  JTablero tablero;
  JPantalla pantallaInicio, pantallaGano, pantallaPerdiste, pantallaEmpate;
  boolean gano, perdio, empate;
  int gate;

  Juego() {

    this.pantallaActual = 0;
    this.pantallaInicio = new JPantalla("Ta - Te - Ti", "inicio", "Jugar", 50);
    this.pantallaGano = new JPantalla("Usted ha ganado, felicitaciones", "ganar", "Volver al Inicio", 30);
    this.pantallaPerdiste = new JPantalla("Usted ha perdido, intentelo de nuevo", "reiniciar", "Reintentar", 50);
    this.pantallaEmpate = new JPantalla("Han empatado", "reiniciar", "Revancha", 50);
    this.tablero = new JTablero();
    this.gano = false;
    this.perdio = false;
    this.empate = false;
    this.tablero.clickPresionado();
    this.gate = 3;
  }

  void dibujar() {

    if (this.pantallaActual == 0) {
      this.tablero.dibujar();
      //this.pantallaActual = this.pantallaInicio.pantallaActual;
      //this.pantallaInicio.dibujar();
    } else if (this.gano == true) {
      this.pantallaGano.dibujar();
      this.tablero.click = false;
    } else if (this.perdio == true) {
      this.pantallaPerdiste.dibujar();
      this.tablero.click = false;
    } else if (this.empate == true) {
      this.pantallaEmpate.dibujar();
      this.tablero.click = false;
    } else if (this.pantallaActual == 1) {
      this.gano = this.tablero.gano;
      this.perdio = this.tablero.perdio;
      this.empate = this.tablero.empate;
      this.tablero.dibujar();
      if (this.turnoCirculo()) {     
        this.tablero.dibujar();
        siguienteTurno();
      }
    }
  }
  void clickPresionado() {
    if (pantallaActual == 0) {
      this.pantallaActual = 1;
    } else if (pantallaActual == 1) {
      if (this.turnoCruz()) {
        this.tablero.clickPresionado();
        siguienteTurno();
      }
      if (this.perdio == true) {
        reset();
      }
      if (this.gano == true) {
        reset();
      }
      if (this.empate == true) {

        reset();
      }
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

  void reset() {
    if (this.perdio == true) {
      this.pantallaPerdiste.resetPantalla();
    }
    if (this.gano == true) {    
      this.pantallaGano.resetPantalla();
    }


    
    this.gano = false;
    this.perdio = false;
    this.empate = false;   
    this.tablero.resetTablero();
    this.pantallaActual = 0;
   //this.tablero.clickPresionado();
  }


  /*

   */
}
