class Cruz {
  PImage imagen;
  int posX, posY, tamCelda;

  Cruz() {
    this.imagen = loadImage("cruz1.png");
   
  }

  void dibujar() {
  
      image(this.imagen, this.posX, this.posY, this.tamCelda, this.tamCelda);
    
  }



}
