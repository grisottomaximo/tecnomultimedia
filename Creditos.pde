class Creditos {
  int reloj, seg;
  int cantPantallas = 5;
  int pantallaActual;
  int [] mover  = new int [cantPantallas];
  PImage [] imagenes = new PImage [cantPantallas];
  PFont font, arial;
  int opacar = 255;
  boolean finalizarCreditos;

  Creditos() {
    this.font = loadFont("TimesNewRomanPS-BoldMT-48.vlw");
    this.arial = loadFont("ArialNova-48.vlw"); 
    this.pantallaActual = 0;
    this.finalizarCreditos = false;
    for (int i=0; i < cantPantallas; i++) {
      this.imagenes [i] = loadImage("creditos/" + i + ".png");
      this.mover [i] = 1200;
    }
  }

  void dibujar() {
    //background(0);
    imageMode(CENTER);


    if (this.pantallaActual == 0|| this.pantallaActual == 1) {
      this.mover [0]= this.mover [0] -4;
    }

      for(int i = 1; i < cantPantallas; i++){
      if (this.mover [i - 1] < -150) {  
        this.mover [i]= this.mover [i] -4;
        this.pantallaActual = i;
      }
      }
    

    pantallas();

    if (this.pantallaActual == 4 && this.mover [4] < height/2) {
      this.mover [4] = this.mover [4] + 4;
      tint(this.opacar);
      if (this.opacar > 0) {
      this.opacar--;
      }
      if (this.opacar == 0) {
        this.finalizarCreditos = true;
        
        
      }
    }
  }

  void mouseClickeado() {
    this.finalizarCreditos = true;
  }

  void pantallas() {
    if (this.pantallaActual == 0 || this.pantallaActual == 1) {
      image(this.imagenes [0], width/2, mover[0]);
    } 
    if (this.pantallaActual == 1|| this.pantallaActual == 2) {
      image(this.imagenes [1], 200, mover[1] - 240);


      fill(#f0cd19);
      textSize(90);
      textFont(this.font, 30);
      text("Principales", 580, mover[1] - 400);

      fill(255);
      textSize(60);

      textFont(this.arial, 16);
      text("Tom Sawyer", 580, mover[1] -340);
      text("Huckleberry Finn", 580, mover[1]  -300);
      text("Joe Harper", 580, mover[1]  - 260);
      text("Sid", 580, mover[1] -220);
      text("Becky Thatcher", 580, mover[1]  -180);
      text("Joe", 580, mover[1]  -140);
      text("Muff Potter", 580, mover[1]   -100);
      text("Tía Polly", 580, mover[1]   -60);
      text("Sidney", 580, mover[1]   -20);
    }
    if (this.pantallaActual == 2) {
      image(this.imagenes [2], 600, mover[2] -200);

      fill(#f0cd19);
      textSize(90);
      textFont(this.font, 30);
      text("Secundarios", 150, mover[2] -400);

      fill(255);
      textSize(60);

      textFont(this.arial, 16);
      text("Mary", 150, mover[2] - 340);
      text("Billy", 150, mover[2] - 300);
      text("Johnny Milles", 150, mover[2] -260);
      text("Amy Lawrence", 150, mover[2] -220);
      text("Juez Thatcher", 150, mover[2] -180);
      text("Mr. Walters", 150, mover[2] -140);
      text("Jeff Thatcher", 150, mover[2] -100);
      text("Ben Rogers", 150, mover[2] -60);
      text("Dr. Robinson", 150, mover[2] - 20);
      text("Jim", 150, mover[2] + 20);
    }
    if (this.pantallaActual == 3) {
      image(this.imagenes [3], width/2, mover[3]);

      fill(#f0cd19);
      textSize(20);
      textFont(this.font, 30);
      text("Artistas", width/2, mover[3] - 400);
      fill(255);
      textSize(18);

      textFont(this.arial, 16);
      text("Michel Maltonn", width/2, mover[3] -340);
      text("Tom Sodimm", width/2, mover[3] -300);
      text("Philip Matt Nilton", width/2, mover[3] -260);
      // imageMode(CENTER);
    }
    if (this.pantallaActual == 4) {
      image(this.imagenes [4], width/2, mover[4]);

      fill(#f0cd19);
      textSize(20);
      textFont(this.font, 30);
      text("Editorial", width/2, mover[4] - 500);
      fill(255);
      textSize(15);
    }
    //textMode(CENTER);
    textAlign(CENTER);
  }

  void reset() {
    textAlign(CORNER);
    imageMode(CORNER);
    tint(255);
    this.opacar = 255;
    this.pantallaActual = 0;
    this.finalizarCreditos = false;
    for (int i=0; i < cantPantallas; i++) {
      //this.imagenes [i] = loadImage("creditos/" + i + ".png");
      this.mover [i] = i + 1000;
    }
  }
}
