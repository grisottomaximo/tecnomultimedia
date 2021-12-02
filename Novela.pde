class Novela {
  int cantPantallas, cantDecisiones;
  int pantallaActual;
  int gate;
  String [] lines;
  String[] dialogos = {};
  String []  lineasdecisionesIzq, lineasdecisionesDer, 
    decisionesIzq = {}, decisionesDer = {};
  boolean Click;

  Pantalla [] pantallas;
  Creditos creditos;
  PantallaInicial pantallaInicial;
  Juego juego;

  Novela() {
    this.cantPantallas = 23;
    this.cantDecisiones = 2;
    this.juego = new Juego();
    this.pantallas = new Pantalla [cantPantallas];
    this.pantallaInicial = new PantallaInicial();
    this.creditos = new Creditos();
    this.lines = loadStrings("dialogos.txt");
    this.lineasdecisionesIzq = loadStrings("decisionesIzq.txt");
    this.lineasdecisionesDer = loadStrings("decisionesDer.txt");
    for ( int i = 0; i < lineasdecisionesIzq.length; i++) {
      this.decisionesIzq = append(decisionesIzq, lineasdecisionesIzq[i]);
    }
    for ( int i = 0; i < lineasdecisionesDer.length; i++) {
      this.decisionesDer = append(decisionesDer, lineasdecisionesDer[i]);
    }
    for ( int i = 0; i < lines.length; i++) {
      this.dialogos = append(dialogos, lines[i]);
    }
    for (int i=0; i<this.cantPantallas; i++) {
      if (i==4 || i==8 || i==11) {
        this.pantallas [i] = new Pantalla ("decisiva", i, dialogos[i], decisionesIzq, decisionesDer, i);
      } else if (i!=4 || i!=8 || i!=11) {
        this.pantallas [i] = new Pantalla ("normal", i, dialogos[i], decisionesIzq, decisionesDer, i);
      }
    }
  }

  void dibujar() {
    background(255);
    if (gate == 0) { 
      this.gate = this.pantallaInicial.gate;
      this.pantallaInicial.dibujar();
    }
    if (gate == 1) {
      this.pantallas[this.pantallaActual].dibujar();
    }
    if (gate == 2) {
      background(0);
      this.creditos.dibujar();
      if (this.creditos.finalizarCreditos == true) {    
        //this.creditos.pantallaActual = 0;
        this.creditos.reset();
        this.gate = 0;
        reset();
      }
    }
    if (gate == 3) {
      this.juego.dibujar();

      if (this.juego.tablero.empate != true) {
        textSize(20);
        text("Tom :  Cruz", width/width + 25, 30, 60, 100);
        text("  Ben :  Circulo", width - 80, 30, 70, 100);
      }
      if (this.juego.tablero.gano == true) {
        this.pantallaActual = 5;
        this.gate = 1;      
      }
      if (this.juego.tablero.perdio == true) {
        this.pantallaActual = 15;
        this.gate = 1;
       
      }
    }
  }
  void mouseClickeado() {
    if (gate==2) {
      this.creditos.mouseClickeado();
    }
    println(this.pantallaActual);
    if (this.gate == 1) {
      this.pantallas[this.pantallaActual].mouseClickeado();
      if (this.pantallas[this.pantallaActual].tipo == "normal") {


        if (this.pantallas[16].siguiente.Click == true) {
          this.pantallas[16].siguiente.Click = false;
          this.pantallaActual = 6;
        }

        if (this.pantallas[20].siguiente.Click == true) {
          this.pantallas[20].siguiente.Click = false;
          this.pantallaActual = 10;
        }

        if (this.pantallas[14].siguiente.Click == true) {
          this.pantallas[14].siguiente.Click = false;
          reset();
        }

        if (this.pantallas[22].siguiente.Click == true) {
          this.pantallas[22].siguiente.Click = false;
          reset();
        }


        if (this.pantallas[this.pantallaActual].siguiente.Click == true) {
          this.pantallas[this.pantallaActual].siguiente.Click = false;
          if (this.pantallaActual != 3) {
            this.pantallaActual++;
          } else if (this.pantallaActual == 3) {
            this.gate = 3;
          }
        }
      }

      if (this.pantallas[this.pantallaActual].tipo == "decisiva") {

        if (this.pantallas[this.pantallaActual].decisionIzq.Click == true) {
          this.pantallas[this.pantallaActual].decisionIzq.Click = false;
          this.pantallaActual++;
        }

        if (this.pantallas[8].decisionDer.Click == true) {
          this.pantallas[8].decisionDer.Click = false;
          this.pantallaActual = 17;
        }

        if (this.pantallas[11].decisionDer.Click == true) {
          this.pantallas[11].decisionDer.Click = false;
          this.pantallaActual = 21;
        }
      }
    }

    if (this.gate == 0) {
      this.pantallaInicial.mouseClickeado();
    }

    if (this.gate == 3) {
      this.juego.clickPresionado();
    }
  }

  void reset() {

    this.pantallaActual = 0;
    this.pantallaInicial.gate = 0;
    this.gate = 0;
    this.gate = this.pantallaInicial.gate;
    this.pantallaInicial = new PantallaInicial();
    textAlign(LEFT);
  }
}
