class JTablero { //<>//
  JCelda [][] celdas;
  int cantCeldas = 3;
  int tamCelda = 200;
  boolean click, gano, perdio, empate;
  boolean turnoCruz, turnoCirculo;
  int turnoActual, turno;
  int random1;
  int random2;

  JTablero() {
    this.click = false;
    this.celdas = new JCelda [cantCeldas][cantCeldas];
    this.turnoCruz = true;
    this.turnoCirculo = true;
    this.gano = false;
    this.perdio = false;
    this.turno = 0;
    for (int i=0; i<cantCeldas; i++) {
      for (int j=0; j<cantCeldas; j++) {
        this.celdas[i][j] = new JCelda(i*tamCelda + 100, j*tamCelda, tamCelda);
      }
    }
  }


  void dibujar() {


    for (int i=0; i<cantCeldas; i++) {
      for (int j=0; j<cantCeldas; j++) {
        this.celdas[i][j].dibujar();
      }
    }
    TurnoDeCruz();
    ganaCirculo();
  }

  void clickPresionado() {
  println(this.turno);
  if(turno <= 6){
    this.turno++;
  }
    for (int i=0; i<cantCeldas; i++) {
      for (int j=0; j<cantCeldas; j++) {

        this.celdas[i][j].clickPresionado();
        this.click = this.celdas[i][j].click;
        this.celdas[i][j].click = false;
        if (this.click == true && this.celdas[i][j].valorOro != 1 && this.celdas[i][j].valorOro != 2) {
          
          this.celdas[i][j].agregarCruz(new JCruz());
        }
      }
    }

    if (this.turnoCirculo == true) {
      TurnoDeCirculo();
    }
  }

  void turnoDeInicioCruz() {
    this.turnoCruz = true;
    this.turnoCirculo = false;
  }
  void turnoDeInicioCirculo() {
    this.turnoCruz = false;
    this.turnoCirculo = true;
  }

  void TurnoDeCirculo() {

    if (turno == 2) {

      descarteCeldas();
    } else if (turno == 3) {

      dosEnLineaCirculo();
      dosEnLineaCruz();
    } else if (turno == 4) {

      dosEnLineaCirculo();
      dosEnLineaCruz();
    } else if (turno == 5) {

      dosEnLineaCirculo();
      dosEnLineaCruz();
       
     
    }
  }

  void TurnoDeCruz() {

    if (turno == 3) {
      ganaCruz();
    } else if (turno == 4) {
      ganaCruz();
    } else if (turno == 5) {
      ganaCruz();
    } else if (turno == 6) {
      ganaCruz();
      if(this.gano == false){
      this.empate = true;
      }
    }
  }



  void descarteCeldas() {
    random1 = round(random(0, 2));
    random2 = round(random(0, 2));
    if ( this.celdas[random1][random2].valorOro == 1 ||this.celdas[random1][random2].valorOro == 2 || this.celdas[random1][random2].ubicacionMouse()) {
      descarteCeldas();
    } else if ( this.celdas[random1][random2].valorOro != 1 ||this.celdas[random1][random2].valorOro != 2 ) {
      this.celdas[random1][random2].agregarCirculo(new JCirculo());
    }
  }

  void dosEnLineaCruz() {
    //this.celdas[random1][random2].valorOro == 1 && this.celdas[random1][random2].valorOro == 1
    //this.celdas[random1][random2].valorOro == 2
    if (celdasCruz(0, 0, 1, 0, 2, 0) ) {
      this.celdas[2][0].agregarCirculo(new JCirculo());
    } else if (celdasCruz(1, 0, 2, 0, 0, 0) ) {
      this.celdas[0][0].agregarCirculo(new JCirculo());
    } else if (celdasCruz(0, 1, 1, 1, 2, 1) ) {
      this.celdas[2][1].agregarCirculo(new JCirculo());
    } else if (celdasCruz(2, 1, 1, 1, 0, 1) ) {
      this.celdas[0][1].agregarCirculo(new JCirculo());
    } else if (celdasCruz(0, 2, 1, 2, 2, 2) ) {
      this.celdas[2][2].agregarCirculo(new JCirculo());
    } else if (celdasCruz(2, 2, 1, 2, 0, 2) ) {
      this.celdas[0][2].agregarCirculo(new JCirculo());
    } else if (celdasCruz(0, 0, 0, 1, 0, 2) ) {
      this.celdas[0][2].agregarCirculo(new JCirculo());
    } else if (celdasCruz(0, 2, 0, 1, 0, 0) ) {
      this.celdas[0][0].agregarCirculo(new JCirculo());
    } else if (celdasCruz(1, 0, 1, 1, 1, 2) ) {
      this.celdas[1][2].agregarCirculo(new JCirculo());
    } else if (celdasCruz(1, 2, 1, 1, 1, 0) ) {
      this.celdas[1][0].agregarCirculo(new JCirculo());
    } else if (celdasCruz(2, 0, 2, 1, 2, 2) ) {
      this.celdas[2][2].agregarCirculo(new JCirculo());
    } else if (celdasCruz(2, 2, 2, 1, 2, 0) ) {
      this.celdas[2][0].agregarCirculo(new JCirculo());
    } else if (celdasCruz(0, 0, 1, 1, 2, 2) ) {
      this.celdas[2][2].agregarCirculo(new JCirculo());
    } else if (celdasCruz(2, 2, 1, 1, 0, 0) ) {
      this.celdas[0][0].agregarCirculo(new JCirculo());
    } else if (celdasCruz(0, 2, 1, 1, 2, 0) ) {
      this.celdas[2][0].agregarCirculo(new JCirculo());
    } else if (celdasCruz(2, 0, 1, 1, 0, 2) ) {
      this.celdas[0][2].agregarCirculo(new JCirculo());
    } else {
      descarteCeldas();
    }
  }
  void dosEnLineaCirculo() {
    //this.celdas[random1][random2].valorOro == 1 && this.celdas[random1][random2].valorOro == 1
    //this.celdas[random1][random2].valorOro == 2
    if (celdasCirculo(0, 0, 1, 0) ) {
      this.celdas[2][0].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(1, 0, 2, 0) ) {
      this.celdas[0][0].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(0, 1, 1, 1) ) {
      this.celdas[2][1].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(2, 1, 1, 1) ) {
      this.celdas[0][1].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(0, 2, 1, 2) ) {
      this.celdas[2][2].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(2, 2, 1, 2) ) {
      this.celdas[0][2].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(0, 0, 0, 1) ) {
      this.celdas[0][2].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(0, 2, 0, 1) ) {
      this.celdas[0][0].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(1, 0, 1, 1) ) {
      this.celdas[1][2].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(1, 2, 1, 1) ) {
      this.celdas[1][0].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(2, 0, 2, 1) ) {
      this.celdas[2][2].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(2, 2, 2, 1) ) {
      this.celdas[2][0].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(0, 0, 1, 1) ) {
      this.celdas[2][2].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(2, 2, 1, 1) ) {
      this.celdas[0][0].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(0, 2, 1, 1) ) {
      this.celdas[2][0].agregarCirculo(new JCirculo());
    } else if (celdasCirculo(2, 0, 1, 1) ) {
      this.celdas[0][2].agregarCirculo(new JCirculo());
    } else {
    }
  }

  void ganaCruz() {
    //this.celdas[random1][random2].valorOro == 1 && this.celdas[random1][random2].valorOro == 1
    //this.celdas[random1][random2].valorOro == 2
    if (ganaCruz(0, 0, 1, 0, 2, 0) ) {
      this.gano = true;
    } else if (ganaCruz(1, 0, 2, 0, 0, 0) ) {
      this.gano = true;
    } else if (ganaCruz(0, 1, 1, 1, 2, 1) ) {
      this.gano = true;
    } else if (ganaCruz(2, 1, 1, 1, 0, 1) ) {
      this.gano = true;
    } else if (ganaCruz(0, 2, 1, 2, 2, 2) ) {
      this.gano = true;
    } else if (ganaCruz(2, 2, 1, 2, 0, 2) ) {
      this.gano = true;
    } else if (ganaCruz(0, 0, 0, 1, 0, 2) ) {
      this.gano = true;
    } else if (ganaCruz(0, 2, 0, 1, 0, 0) ) {
      this.gano = true;
    } else if (ganaCruz(1, 0, 1, 1, 1, 2) ) {
      this.gano = true;
    } else if (ganaCruz(1, 2, 1, 1, 1, 0) ) {
      this.gano = true;
    } else if (ganaCruz(2, 0, 2, 1, 2, 2) ) {
      this.gano = true;
    } else if (ganaCruz(2, 2, 2, 1, 2, 0) ) {
      this.gano = true;
    } else if (ganaCruz(0, 0, 1, 1, 2, 2) ) {
      this.gano = true;
    } else if (ganaCruz(2, 2, 1, 1, 0, 0) ) {
      this.gano = true;
    } else if (ganaCruz(0, 2, 1, 1, 2, 0) ) {
      this.gano = true;
    } else if (ganaCruz(2, 0, 1, 1, 0, 2) ) {
      this.gano = true;
    }
  }

  void ganaCirculo() {
    //this.celdas[random1][random2].valorOro == 1 && this.celdas[random1][random2].valorOro == 1
    //this.celdas[random1][random2].valorOro == 2
    if (ganaCirculo(0, 0, 1, 0, 2, 0) ) {
      this.perdio = true;
    } else if (ganaCirculo(1, 0, 2, 0, 0, 0) ) {
      this.perdio = true;
    } else if (ganaCirculo(0, 1, 1, 1, 2, 1) ) {
      this.perdio = true;
    } else if (ganaCirculo(2, 1, 1, 1, 0, 1) ) {
      this.perdio = true;
    } else if (ganaCirculo(0, 2, 1, 2, 2, 2) ) {
      this.perdio = true;
    } else if (ganaCirculo(2, 2, 1, 2, 0, 2) ) {
      this.perdio = true;
    } else if (ganaCirculo(0, 0, 0, 1, 0, 2) ) {
      this.perdio = true;
    } else if (ganaCirculo(0, 2, 0, 1, 0, 0) ) {
      this.perdio = true;
    } else if (ganaCirculo(1, 0, 1, 1, 1, 2) ) {
      this.perdio = true;
    } else if (ganaCirculo(1, 2, 1, 1, 1, 0) ) {
      this.perdio = true;
    } else if (ganaCirculo(2, 0, 2, 1, 2, 2) ) {
      this.perdio = true;
    } else if (ganaCirculo(2, 2, 2, 1, 2, 0) ) {
      this.perdio = true;
    } else if (ganaCirculo(0, 0, 1, 1, 2, 2) ) {
      this.perdio = true;
    } else if (ganaCirculo(2, 2, 1, 1, 0, 0) ) {
      this.perdio = true;
    } else if (ganaCirculo(0, 2, 1, 1, 2, 0) ) {
      this.perdio = true;
    } else if (ganaCirculo(2, 0, 1, 1, 0, 2) ) {
      this.perdio = true;
    }
  }
  boolean celdasCruz (int Valor1, int Valor2, int valor3, int valor4, int valorCir1, int valorCir2) {
    return this.celdas[Valor1][Valor2].valorOro == 1 && this.celdas[valor3][valor4].ubicacionMouse() 
      && this.celdas[valorCir1][valorCir2].valorOro != 1 && this.celdas[valorCir1][valorCir2].valorOro != 2 
      || this.celdas[valor3][valor4].valorOro == 1 && this.celdas[Valor1][Valor2].ubicacionMouse()
      && this.celdas[valorCir1][valorCir2].valorOro != 1 && this.celdas[valorCir1][valorCir2].valorOro != 2 ;
  }

  boolean celdasCirculo (int Valor1, int Valor2, int valor3, int valor4) {
    return this.celdas[Valor1][Valor2].valorOro == 2 && this.celdas[valor3][valor4].valorOro == 2 

      || this.celdas[valor3][valor4].valorOro == 2 && this.celdas[Valor1][Valor2].valorOro == 2
      ;
  }
  boolean ganaCruz (int Valor1, int Valor2, int valor3, int valor4, int valorProx1, int valorProx2) {
    return this.celdas[Valor1][Valor2].valorOro == 1 && this.celdas[valor3][valor4].valorOro == 1 
      && this.celdas[valorProx1][valorProx2].valorOro == 1

      || this.celdas[valor3][valor4].valorOro == 1  && this.celdas[Valor1][Valor2].valorOro == 1 
      && this.celdas[valorProx1][valorProx2].valorOro == 1  ;
  }

  boolean ganaCirculo (int Valor1, int Valor2, int valor3, int valor4, int valorProx1, int valorProx2) {
    return this.celdas[Valor1][Valor2].valorOro == 2 && this.celdas[valor3][valor4].valorOro == 2 
      && this.celdas[valorProx1][valorProx2].valorOro == 2

      || this.celdas[valor3][valor4].valorOro == 2  && this.celdas[Valor1][Valor2].valorOro == 2 
      && this.celdas[valorProx1][valorProx2].valorOro == 2  ;
  }

  void resetTablero() {
    this.click = false;
    this.turnoCruz = true;
    this.turnoCirculo = true;
    this.gano = false;
    this.perdio = false;
    this.empate = false;
    this.turno = 0;
    clickPresionado();
    for (int i=0; i<cantCeldas; i++) {
      for (int j=0; j<cantCeldas; j++) {
        this.celdas[i][j] = new JCelda(i*tamCelda + 100, j*tamCelda, tamCelda);
      }
    }
    
  }
}
