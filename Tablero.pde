class Tablero { //<>//
  Celda [][] celdas;
  int cantCeldas = 3;
  int tamCelda = width/3;
  boolean click, gano;
  boolean turnoCruz, turnoCirculo;
  int turnoActual, turno;
  int random1;
  int random2;

  Tablero() {
    this.click = false;
    this.celdas = new Celda [cantCeldas][cantCeldas];
    this.turnoCruz = true;
    this.turnoCirculo = true;
    this.gano = false;
    for (int i=0; i<cantCeldas; i++) {
      for (int j=0; j<cantCeldas; j++) {
        this.celdas[i][j] = new Celda(i*tamCelda, j*tamCelda, tamCelda);
      }
    }
  }


  void dibujar() {


    for (int i=0; i<cantCeldas; i++) {
      for (int j=0; j<cantCeldas; j++) {
        this.celdas[i][j].dibujar();
      }
    }
  }
  
  void clickPresionado() {
    turno++;
    

    for (int i=0; i<cantCeldas; i++) {
      for (int j=0; j<cantCeldas; j++) {
        
        this.celdas[i][j].clickPresionado();
        this.click = this.celdas[i][j].click;

        if (this.click == true && this.celdas[i][j].valorOro != 1 && this.celdas[i][j].valorOro != 2) {
          this.celdas[i][j].agregarCruz(new Cruz());
        }
 
      }
    }

    if (this.turnoCirculo == true) {
      TurnoDeCirculo();  
    }
    


    println(turno);
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




  void descarteCeldas() {
    random1 = round(random(0, 2));
    random2 = round(random(0, 2));
    if ( this.celdas[random1][random2].valorOro == 1 ||this.celdas[random1][random2].valorOro == 2 || this.celdas[random1][random2].ubicacionMouse()) {
      descarteCeldas();
    } else if ( this.celdas[random1][random2].valorOro != 1 ||this.celdas[random1][random2].valorOro != 2 ) {
      this.celdas[random1][random2].agregarCirculo(new Circulo());
    }
  }

  void dosEnLineaCruz() {
    //this.celdas[random1][random2].valorOro == 1 && this.celdas[random1][random2].valorOro == 1
    //this.celdas[random1][random2].valorOro == 2
    if (celdasCruz(0, 0, 1, 0,2,0) ) {
      this.celdas[2][0].agregarCirculo(new Circulo());
    }else if (celdasCruz(1, 0, 2, 0,0,0) ) {
      this.celdas[0][0].agregarCirculo(new Circulo());
    }else if (celdasCruz(0, 1, 1, 1,2,1) ) {
      this.celdas[2][1].agregarCirculo(new Circulo());
    }else if (celdasCruz(2, 1, 1, 1,0,1) ) {
      this.celdas[0][1].agregarCirculo(new Circulo());
    }else if (celdasCruz(0, 2, 1, 2,2,2) ) {
      this.celdas[2][2].agregarCirculo(new Circulo());
    }else if (celdasCruz(2, 2, 1, 2,0,2) ) {
      this.celdas[0][2].agregarCirculo(new Circulo());
    }else if (celdasCruz(0, 0, 0, 1,0,2) ) {
      this.celdas[0][2].agregarCirculo(new Circulo());
    }else if (celdasCruz(0, 2, 0, 1,0,0) ) {
      this.celdas[0][0].agregarCirculo(new Circulo());
    }else if (celdasCruz(1, 0, 1, 1,1,2) ) {
      this.celdas[1][2].agregarCirculo(new Circulo());
    }else if (celdasCruz(1, 2, 1, 1,1,0) ) {
      this.celdas[1][0].agregarCirculo(new Circulo());
    }else if (celdasCruz(2, 0, 2, 1,2,2) ) {
      this.celdas[2][2].agregarCirculo(new Circulo());
    }else if (celdasCruz(2, 2, 2, 1,2,0) ) {
      this.celdas[2][0].agregarCirculo(new Circulo());
    }else if (celdasCruz(0, 0, 1, 1,2,2) ) {
      this.celdas[2][2].agregarCirculo(new Circulo());
    }else if (celdasCruz(2, 2, 1, 1,0,0) ) {
      this.celdas[0][0].agregarCirculo(new Circulo());
    }else if (celdasCruz(0, 2, 1, 1,2,0) ) {
      this.celdas[2][0].agregarCirculo(new Circulo());
    }else if (celdasCruz(2, 0, 1, 1,0,2) ) {
      this.celdas[0][2].agregarCirculo(new Circulo());
    } else{
      descarteCeldas();
    }
  }
void dosEnLineaCirculo() {
    //this.celdas[random1][random2].valorOro == 1 && this.celdas[random1][random2].valorOro == 1
    //this.celdas[random1][random2].valorOro == 2
    if (celdasCirculo(0, 0, 1, 0) ) {
      this.celdas[2][0].agregarCirculo(new Circulo());
    }else if (celdasCirculo(1, 0, 2, 0) ) {
      this.celdas[0][0].agregarCirculo(new Circulo());
    }else if (celdasCirculo(0, 1, 1, 1) ) {
      this.celdas[2][1].agregarCirculo(new Circulo());
    }else if (celdasCirculo(2, 1, 1, 1) ) {
      this.celdas[0][1].agregarCirculo(new Circulo());
    }else if (celdasCirculo(0, 2, 1, 2) ) {
      this.celdas[2][2].agregarCirculo(new Circulo());
    }else if (celdasCirculo(2, 2, 1, 2) ) {
      this.celdas[0][2].agregarCirculo(new Circulo());
    }else if (celdasCirculo(0, 0, 0, 1) ) {
      this.celdas[0][2].agregarCirculo(new Circulo());
    }else if (celdasCirculo(0, 2, 0, 1) ) {
      this.celdas[0][0].agregarCirculo(new Circulo());
    }else if (celdasCirculo(1, 0, 1, 1) ) {
      this.celdas[1][2].agregarCirculo(new Circulo());
    }else if (celdasCirculo(1, 2, 1, 1) ) {
      this.celdas[1][0].agregarCirculo(new Circulo());
    }else if (celdasCirculo(2, 0, 2, 1) ) {
      this.celdas[2][2].agregarCirculo(new Circulo());
    }else if (celdasCirculo(2, 2, 2, 1) ) {
      this.celdas[2][0].agregarCirculo(new Circulo());
    }else if (celdasCirculo(0, 0, 1, 1) ) {
      this.celdas[2][2].agregarCirculo(new Circulo());
    }else if (celdasCirculo(2, 2, 1, 1) ) {
      this.celdas[0][0].agregarCirculo(new Circulo());
    }else if (celdasCirculo(0, 2, 1, 1) ) {
      this.celdas[2][0].agregarCirculo(new Circulo());
    }else if (celdasCirculo(2, 0, 1, 1) ) {
      this.celdas[0][2].agregarCirculo(new Circulo());
    }else {
      this.gano = true;
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
}
