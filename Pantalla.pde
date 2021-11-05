class Pantalla {
  String mensaje;
  
  Pantalla(String mensaje){
    this.mensaje = mensaje;
  }
  void dibujar(){
    textAlign(CENTER);
    text(this.mensaje, width/2, height/2);
  }
  void clickpresionado(){
    
  }
}
