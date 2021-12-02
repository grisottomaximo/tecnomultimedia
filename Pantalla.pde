class Pantalla {
  Boton siguiente, decisionIzq, decisionDer;
  PImage pantallaimg;
  String dialogos;
  String [] decisionesIzq, decisionesDer;
  int linea, cantDecisiones, desicionNum;
  PFont font;
  String tipo;


  Pantalla(String tipo, int imagenNumber, String dialogos, String [] decisionesIzq, String [] decisionesDer, int desicionNum) {
    this.pantallaimg = loadImage("img/0" + imagenNumber + ".jpg");
    this.font = loadFont("font2.vlw");
    this.dialogos = dialogos;
    this.cantDecisiones = 2;
    this.decisionesIzq = decisionesIzq;
    this.decisionesDer = decisionesDer;
    this.tipo = tipo;
    if (this.tipo == "normal") {
      this.siguiente = new Boton("continuidad", "Siguiente", width/4 * 3, 570, width/2, 100);
    } else if (this.tipo == "decisiva") {
      this.desicionNum = desicionNum;
      this.decisionIzq = new Boton("decision", this.decisionesIzq [this.desicionNum], 
        65, 155, 270, 170);
      this.decisionDer = new Boton("decision", this.decisionesDer[this.desicionNum], 
        465, 150, 270, 170);
    }
    
  }

  void dibujar() {
    
    noStroke();

    if (this.tipo == "normal") {
   
      image(pantallaimg, 0, 0);
      rect(0, 430, width, height);
      fill(255);
      text(this.dialogos, 115, 445, 550, height - 40);
      fill(0);
      this.siguiente.dibujar();
      textSize(20);
      
    } else if (this.tipo == "decisiva") {
      
      image(pantallaimg, 0, 0);
      fill(0);
      rect(0, 430, width, height);
      fill(255);
      text(this.dialogos, 115, 445, 550, height - 40);
      fill(0, 150);
      rect (0, 0, 800, 600);
      fill(255);
      this.decisionIzq.dibujar();
      this.decisionDer.dibujar();
    }
  }


  void mouseClickeado() {     
    if (this.tipo == "normal") {
      this.siguiente.mouseClickeado();
      
    }
    if (this.tipo == "decisiva") {
      this.decisionIzq.mouseClickeado();
      this.decisionDer.mouseClickeado();
    }
  }

}
