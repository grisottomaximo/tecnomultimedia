Juego juego;



void setup() {
  size(500, 500);
  juego = new Juego();
  juego.clickPresionado();
}

void draw() {
  background(#ab9472);
  juego.dibujar();
}

void mouseReleased() {
  juego.clickPresionado();
}
