class PantallaInicial {
  Boton comenzar, creditos;
  PImage pantallaimg;
  PFont font;
  int gate;


  PantallaInicial() {
    pantallaimg = loadImage("home.jpg");
    font = loadFont("font2.vlw");
    
    this.comenzar = new Boton("inicio","Empezar", 290, width/4 + 45, 230, 80);
    this.creditos = new Boton("inicio","Creditos", 290, 425, 230, 80);
    
  }

  void dibujar() {

    image(pantallaimg, 0, 0);
    this.comenzar.dibujar();
    this.creditos.dibujar();
    
    if (this.comenzar.Click == true) {
      this.gate = 1;
    }
    if (this.creditos.Click == true) {
      this.gate = 2;
    }


    textFont(font, 50);
    noStroke();

  }

  void mouseClickeado() {
    this.comenzar.mouseClickeado();
    this.creditos.mouseClickeado();
  }

}
