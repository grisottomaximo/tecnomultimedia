class JBoton {

  int posx, posy, ancho, alto, textoSize;
  boolean Click;
  String texto;
  String tipo;

  JBoton(String Tipo, String Texto, int posX, int posY, int Ancho, int Alto,int textoSize) {
    this.posx = posX;
    this.posy = posY;
    this.ancho = Ancho;
    this.alto = Alto;
    this.tipo = Tipo;
    this.texto = Texto;
    this.textoSize = textoSize;
    this.Click = false;
  }

  void dibujar() {

    if (this.tipo == "inicio") {
      this.botonInicial();
    }
    if (this.tipo == "reiniciar") {
      this.botonReiniciar();
    }
    if (this.tipo == "ganar") {
      this.botonGanar();
    }
  }


  void mouseClickeado() {

    if (mouseX > this.posx && mouseX < this.posx + this.ancho 
      && mouseY > this.posy && mouseY < this.posy + this.alto) {
      this.Click = true;
    }
  }

  void botonInicial() {
    //textAlign(CENTER);
    fill(#ffc428, 200);
    if (mouseX > this.posx && mouseX < this.posx + this.ancho 
      && mouseY > this.posy && mouseY < this.posy + this.alto) {
      fill(#725b1e, 200);
    }
    if (mousePressed && mouseX > posx && mouseX < posx + ancho 
      && mouseY > posy && mouseY < posy + alto) {
      fill(0, 200);
    }
    textSize(this.textoSize);
    rect(posx, posy, ancho, alto, 250);
    fill(255);
    text(this.texto, posx + 100, posy + 30, ancho + 15, alto-15);
  }

  void botonReiniciar() {
    fill(#ffc428, 200);
    if (mouseX > this.posx && mouseX < this.posx + this.ancho 
      && mouseY > this.posy && mouseY < this.posy + this.alto) {
      fill(#725b1e, 200);
    }
    if (mousePressed && mouseX > posx && mouseX < posx + ancho 
      && mouseY > posy && mouseY < posy + alto) {
      fill(0, 200);
    }
    textSize(this.textoSize);
    rect(posx, posy, ancho, alto, 250);
    fill(255);
    text(this.texto, posx + 50, posy + 30, ancho + 15, alto-15);
  }
  
    void botonGanar() {
    fill(#ffc428, 200);
    if (mouseX > this.posx && mouseX < this.posx + this.ancho 
      && mouseY > this.posy && mouseY < this.posy + this.alto) {
      fill(#725b1e, 200);
    }
    if (mousePressed && mouseX > posx && mouseX < posx + ancho 
      && mouseY > posy && mouseY < posy + alto) {
      fill(0, 200);
    }
    textSize(this.textoSize);
    rect(posx, posy, ancho, alto, 250);
    fill(255);
    text(this.texto, posx - 5, posy + 30, ancho + 15, alto + 15);
    
  }
}
