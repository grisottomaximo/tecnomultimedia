class Circulo{
  PImage imagen;
  int posX, posY, tamCelda;
  
  Circulo(){
    this.imagen = loadImage("circulo1.png");
 
  }
  
  void dibujar(){
    image(this.imagen, this.posX,this.posY,this.tamCelda,this.tamCelda);
  }
  

}
