boolean  boton(int posx, int posy) {
  int ancho = width/2;
  int alto = 100;
  boolean Click = false;

  fill(255);
  if (mouseX > posx && mouseX < posx + ancho && mouseY > posy && mouseY < posy + alto) {
    fill(50);
  }
  if (mousePressed && mouseX > posx && mouseX < posx + ancho && mouseY > posy && mouseY < posy + alto) {
    fill(0);

    Click = true;
  }    

  rect(posx, posy, ancho, alto);

  return Click;
}


boolean Reset(int posx, int posy) {
  int ancho = width/2;
  int alto = 100;
  boolean Click = false;
  fill(255);
  if (mouseX > posx && mouseX < posx + ancho && mouseY > posy && mouseY < posy + alto) {
    fill(50);
  }
  if (mousePressed && mouseX > posx && mouseX < posx + ancho && mouseY > posy && mouseY < posy + alto) {
    fill(0);
    Click = true;
  }
  rect(posx, posy, ancho, alto);

  return Click;
}

boolean  empezar(int posx, int posy) {
  int ancho = 200 + 30;
  int alto = 80;
  boolean Click = false;


  fill(#ffc428, 200);
  if (mouseX > posx && mouseX < posx + ancho && mouseY > posy && mouseY < posy + alto) {
    fill(#725b1e, 200);
  }
  if (mousePressed && mouseX > posx && mouseX < posx + ancho && mouseY > posy && mouseY < posy + alto) {
    fill(0, 200);

    Click = true;
  }    

  rect(posx, posy, ancho, alto,250);
  return Click;
}

boolean  creditos(int posx, int posy) {
  int ancho = 230;
  int alto = 80;
  boolean Click = false;

  fill(#ffc428, 200);
  if (mouseX > posx && mouseX < posx + ancho && mouseY > posy && mouseY < posy + alto) {
    fill(#725b1e, 200);
  }
  if (mousePressed && mouseX > posx && mouseX < posx + ancho && mouseY > posy && mouseY < posy + alto) {
    fill(0, 200);

    Click = true;
  }    

  rect(posx, posy, ancho, alto,250);
  return Click;
}

boolean  decisiones(int posx, int posy) {
  int ancho = 300;
  int alto = 150;
  boolean Click = false;

  fill(0,50);
  if (mouseX > posx && mouseX < posx + ancho && mouseY > posy && mouseY < posy + alto) {
    fill(0, 200);
  }
  if (mousePressed && mouseX > posx && mouseX < posx + ancho && mouseY > posy && mouseY < posy + alto) {
    fill(0);

    Click = true;
  }    

  rect(posx, posy, ancho, alto);

  
  return Click;
}
