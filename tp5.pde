// video: https://www.youtube.com/watch?v=JPOj8apKkY4&ab_channel=MaximoGrisotto

Juego juego;



void setup() {
  size(500, 500);
  juego = new Juego();
  
}

void draw() {
  background(#ab9472);
  juego.dibujar();
}

void mouseReleased() {
  juego.clickPresionado();
}
