class Boton {

  int posx, posy, ancho, alto;
  boolean Click;
  String texto;
  String tipo;

  Boton(String Tipo,String Texto, int posX, int posY, int Ancho, int Alto) {
    this.posx = posX;
    this.posy = posY;
    this.ancho = Ancho;
    this.alto = Alto;
    this.tipo = Tipo;
    this.texto = Texto;
    this.Click = false;
  }

  void dibujar() {
    
    if (this.tipo == "inicio") {
      this.botonInicial();
      
    }
    if (this.tipo == "continuidad") {
      this.botonSiguiente();
    }
    if (this.tipo == "decision") {
      this.botonDecision();
    }
    
  }


  void mouseClickeado() {
    if (mouseX > this.posx && mouseX < this.posx + this.ancho 
      && mouseY > this.posy && mouseY < this.posy + this.alto) {
      this.Click = true;
    }
  }

  void botonInicial() {
    fill(#ffc428, 200);
    if (mouseX > this.posx && mouseX < this.posx + this.ancho 
      && mouseY > this.posy && mouseY < this.posy + this.alto) {
      fill(#725b1e, 200);
    }
    if (mousePressed && mouseX > posx && mouseX < posx + ancho 
      && mouseY > posy && mouseY < posy + alto) {
      fill(0, 200);
    }
    rect(posx, posy, ancho, alto, 250);
    fill(255);
    text(this.texto, posx + 20, posy + 20, ancho + 15, alto-15); 
    
  }

  void botonDecision() {
    
    fill(0, 50);
    if (mouseX > this.posx && mouseX < this.posx + this.ancho 
      && mouseY > this.posy && mouseY < this.posy + this.alto) {
      fill(0, 200);
    }
    if (mousePressed && mouseX > posx && mouseX < posx + ancho 
      && mouseY > posy && mouseY < posy + alto) {
      fill(0);
    }
    rect(posx, posy, ancho, alto);
    fill(255);
    text(this.texto, posx + 20, posy + 20, ancho - 25, alto-15);
  }

  void botonSiguiente() {
    fill(255);
    if (mouseX > this.posx && mouseX < this.posx + this.ancho 
      && mouseY > this.posy && mouseY < this.posy + this.alto) {
      fill(50);
    }
    if (mousePressed && mouseX > posx && mouseX < posx + ancho 
      && mouseY > posy && mouseY < posy + alto) {
      fill(0);
    }
    rect(posx, posy, ancho, alto);
    fill(0);
    text(this.texto, width - 135, 592);
  }
}
