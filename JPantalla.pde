class JPantalla {

  JBoton boton;
  String mensaje;
  int pantallaActual, textoSize;

  JPantalla(String mensaje, String tipo, String mensajeBoton, int textoSize) {
    
    this.mensaje = mensaje;
    this.textoSize = textoSize;
    this.boton = new JBoton(tipo, mensajeBoton, width/2 - 150, height/2, 300, 100, this.textoSize);
  }
  void dibujar() {
    background(#ab9472);
    this.boton.dibujar();

    if (pantallaActual == 0) {
      textSize(50);
    }
    text(this.mensaje, width/2 - 140, width/2 - 250, 500, 500 );
    //textAlign(CENTER);
    noStroke();
  }
  void clickpresionado() {
    this.boton.mouseClickeado();
    if (this.boton.Click == true) {
      if (this.pantallaActual == 0) {
        this.pantallaActual = 1;
      }
    }
  }

  void resetPantalla() {
    this.pantallaActual = 0;
  }
  void reset() {
  }
}
