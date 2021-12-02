//Video: https://www.youtube.com/watch?v=tOF4yn_dxg8

Novela novela;

void setup() {
  size(800, 600);
  novela = new Novela();
}

void draw() {
  
  novela.dibujar();
}

void mouseReleased() {
  novela.mouseClickeado(); 
}
