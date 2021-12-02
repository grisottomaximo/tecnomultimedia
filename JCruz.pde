class JCruz {
  PImage imagen;
  int posX, posY, tamCelda;

  JCruz() {
    this.imagen = loadImage("juego/cruz1.png");
   
  }

  void dibujar() {
  
      image(this.imagen, this.posX, this.posY, this.tamCelda, this.tamCelda);
    
  }



}
