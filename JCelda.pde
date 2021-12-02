class JCelda {
  int posX, posY, tamCelda;
  JCruz cruz;
  JCirculo circulo;
  boolean click;
  int turnoActual;
  int valorOro;
  boolean turnoCruz, turnoCirculo;


  JCelda(int posX, int posY, int tamCelda) {
    this.click = false;
    this.turnoCruz = false;
    this.turnoCirculo = false;
    this.posX = posX;
    this.posY = posY;
    this.tamCelda = tamCelda;
  }

  void dibujar() { 
    fill(#ab9472);
    strokeWeight(2);
    stroke(0);
    rect(this.posX, this.posY, this.tamCelda, this.tamCelda);

    if (this.cruz != null) {
      this.cruz.dibujar();
      this.valorOro = 1;
    } else if (this.circulo != null) {
      this.circulo.dibujar();
      this.valorOro = 2;
    } 
      
    
  }

  void clickPresionado() {

    if (ubicacionMouse()) {
      this.click = true;
    }
  }

  void agregarCruz(JCruz cruz) {
    this.cruz = cruz;
    this.cruz.posX = this.posX;
    this.cruz.posY = this.posY;
    this.cruz.tamCelda = this.tamCelda;
  }

  void agregarCirculo(JCirculo circulo) {
    this.circulo = circulo;
    this.circulo.posX = this.posX;
    this.circulo.posY = this.posY;
    this.circulo.tamCelda = this.tamCelda;
  }
  
  boolean ubicacionMouse(){  
    return mouseX > posX && mouseX < posX + tamCelda && mouseY > posY && mouseY < posY + tamCelda;
  }
}
