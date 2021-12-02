class JCirculo{
  PImage imagen;
  int posX, posY, tamCelda;
  
  JCirculo(){
    this.imagen = loadImage("juego/circulo1.png");
 
  }
  
  void dibujar(){
    image(this.imagen, this.posX,this.posY,this.tamCelda,this.tamCelda);
  }
  

}
