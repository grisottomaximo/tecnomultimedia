class Juego {
  int turnoActual;
  int pantallaActual;
  Tablero tablero;
  Pantalla pantallaInicio, pantallaGano, pantallaPerdiste, pantallaEmpate;
  boolean gano, perdio, empate;

  Juego() {
    this.pantallaActual = 0;
    this.pantallaInicio = new Pantalla("Ta - Te - Ti", "inicio", "Jugar", 50);
    this.pantallaGano = new Pantalla("Usted ha ganado, felicitaciones", "ganar", "Volver al Inicio", 30);
    this.pantallaPerdiste = new Pantalla("Usted ha perdido, intentelo de nuevo", "reiniciar", "Reintentar", 50);
    this.pantallaEmpate = new Pantalla("Han empatado", "reiniciar", "Revancha", 50);
    this.tablero = new Tablero();
    this.gano = false;
    this.perdio = false;
    this.empate = false;
    this.tablero.clickPresionado();
  }

  void dibujar() {

    if (this.pantallaActual == 0) {
      this.pantallaActual = this.pantallaInicio.pantallaActual;
      this.pantallaInicio.dibujar();
    } else if (this.gano == true) {
      this.pantallaGano.dibujar();
      this.tablero.click = false;
    } else if (this.perdio == true) {
      this.pantallaPerdiste.dibujar();
      this.tablero.click = false;
    }  else if (this.empate == true) {
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
      this.pantallaInicio.clickpresionado();
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

    this.tablero.resetTablero();

    this.pantallaInicio = new Pantalla("Ta - Te - Ti", "inicio", "Jugar", 50);
    this.pantallaGano = new Pantalla("Usted ha ganado, felicitaciones", "ganar", "Volver al Inicio", 30);
    this.pantallaPerdiste = new Pantalla("Usted ha perdido, intentelo de nuevo", "reiniciar", "Reintentar", 50);
    this.pantallaEmpate = new Pantalla("Han empatado", "reiniciar", "Revancha", 50);
    this.gano = false;
    this.perdio = false;
    this.empate = false;
    this.clickPresionado();
        this.pantallaActual = 0;
  }


  /*

   */
}
