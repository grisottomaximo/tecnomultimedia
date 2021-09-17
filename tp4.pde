PImage pantallaimg;
int pantallas [] = new int [24];
String[] dialogos = {};
int num;
int cant = 24;
String [] lines;
int contador;
boolean primo;
boolean second;
PFont font;
boolean decision1;
boolean decision2;
boolean trio;













void setup() {
  size(800, 600);
  font = loadFont("font2.vlw");
  lines = loadStrings("dialogos.txt");
  for ( int i = 1; i < cant; i++) {
    pantallas [i] = i;
  }
  for ( int i = 1; i < lines.length; i++) {
    dialogos = append(dialogos, lines[i]);
  }
}



void draw() {
  background(200);


  pantallaimg = loadImage("0" + pantallas [num] + ".jpg");
  image(pantallaimg, 0, 0); 
  noStroke();

  textSize(20);


  if (contador == 1) {  
    num = 1;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [0], 115, 445, 550, height - 40);
  }
  if (contador == 2) { 
    num = 2;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [1], 115, 445, 550, height - 40);
  }  
  if (contador == 3) { 
    num = 3;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [2], 115, 445, 550, height - 40);
  }  
  if (contador == 4) { 
    num = 4;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [3], 115, 445, 550, height - 40);
  }  
  if (contador == 5) { 
    num = 5;


    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [3], 115, 445, 550, height - 40);
    fill(0, 150);
    rect (0, 0, 800, 600);
    fill(255);
    text("    Ben es tan buen amigo, que me vió solo y me dijo -Yo te ayudo a pintar, Tom -.", 
      65, 155, 270, 170);
    text("    Ben quiere que le devuelva su pelota, pero a cambio le dije que me ayude a pintar la cerca.", 
      465, 150, 270, 170);
  }  
  if (contador == 6) { 
    num = 6;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [4], 115, 445, 550, height - 40);
  } 
  if (contador == 7) { 
    num = 7;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [5], 115, 445, 550, height - 40);
  } 
  if (contador == 8) { 
    num = 8;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [6], 115, 445, 550, height - 40);
  } 
  if (contador == 9) { 
    num = 8;


    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [6], 115, 445, 550, height - 40);
    fill(0, 150);
    rect (0, 0, 800, 600);
    fill(255);
    text("    Ocultarse detrás de unas lápidas", 
      65, 155, 270, 170);
    text("    Ocultarse detrás de unos arbustos", 
      465, 150, 270, 170);
  } 
  if (contador == 10) { 
    num = 9;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [7], 115, 445, 550, height - 40);
  } 
  if (contador == 11) { 
    num = 10;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [8], 115, 445, 550, height - 40);
  } 
  if (contador == 12) { 
    num = 10;


    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [8], 115, 445, 550, height - 40);
    fill(0, 150);
    rect (0, 0, 800, 600);
    fill(255);
    text("    Camino de la izquierda", 
      65, 155, 270, 170);
    text("    Camino de la derecha", 
      465, 150, 270, 170);
  } 
  if (contador == 13) { 
    num = 11;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [9], 115, 445, 550, height - 40);
  } 
  if (contador == 14) { 
    num = 12;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [10], 115, 445, 550, height - 40);
  } 
  if (contador == 15) { 
    num = 13;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [11], 115, 445, 550, height - 40);
  } 


  //---------------------Primer Ram


  if (contador == 16) { 
    num = 14;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [12], 115, 445, 550, height - 40);
  } 
  if (contador == 17) { 
    num = 15;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [13], 115, 445, 550, height - 40);
  } 
  //---------------------Segundo Ram  


  if (contador == 18) { 
    num = 16;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [14], 115, 445, 550, height - 40);
  } 
  if (contador == 19) { 
    num = 17;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [15], 115, 445, 550, height - 40);
  } 
  if (contador == 20) { 
    num = 18;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [16], 115, 445, 550, height - 40);
  } 
  if (contador == 21) { 
    num = 19;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [17], 115, 445, 550, height - 40);
  } 
  //---------------------Tercer Ram  


  if (contador == 22) { 
    num = 20;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [18], 115, 445, 550, height - 40);
  } 
  if (contador == 23) { 
    num = 21;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [19], 115, 445, 550, height - 40);
  } 
  if (contador == 24) {  
    num = 22;

    fill(0);
    rect(0, 430, width, height);
    fill(255);
    text(dialogos [20], 115, 445, 550, height - 40);
  }
  if (contador == 25) {  
    num = 23;
  }











  //-----------RESET------------  
  if (second == true) {  
    text(lines[1], 10, 30);
    for ( int i = 1; i < cant; i++) {
      pantallas [i] = i;
    }
    num = 0;
    contador = 0;
  }
  //-----------RESET------------  

  println(contador);
if (contador >= 1 && !(contador == 5) && !(contador == 9) && !(contador == 12)){  
  primo = boton(width/4 * 3, 570);
  //second = Reset(0, 570);
} 
    if (contador == 17 ||contador == 21 || contador == 15 || contador == 24) {
    trio = boton(width/4 * 3, 570);
    primo = false;
  }

  if (contador == 5 ||contador == 9 || contador == 12) {
    
    primo = false;
    decision1 = decisiones(50, 120);
    decision2 = decisiones(450, 120);
  }



  if (contador == 0) {
    primo = false;
    second = false;
    trio = false;
    decision2 = false;
    decision1 = false;
    image(pantallaimg, 0, 0); 
    num = 0;
    if (empezar(300 - 10, width/4 + 45) == true) {
      contador = 1;
    }
    creditos(290, 425);
    fill(255);
    textFont(font, 50);
    text("Empezar", 310, width/4 + 45 + 20, 200 + 15, 80-15);
    text("Creditos", 310, 425 + 20, 200 + 15, 80-15);
    
  }
  if (contador >= 1 && !(contador == 5) && !(contador == 9) && !(contador == 12)){
  fill(0);
  textSize(20);
  text("Siguiente", width - 135, 592);
  }
} 


void  mouseReleased() {

  if (primo == true) {
    contador++;
    decision1 = false;
    decision2 = false;
  }

  if (trio == true) {
         if(contador == 17){
    contador = 7;
     }
              if(contador == 21){
    contador = 11;
     }
                   if(contador == 15){
    contador = 0;
     }
                        if(contador == 24){
                          contador++;
    contador = 0;
     }
  }







  if (decision1 == true) {

     if(contador == 5){
    contador = 6;
     }
    if(contador == 9){
      contador = 10;
    }
                if(contador == 12){
      contador = 13;
    }
  }
  if (decision2 == true) {

    if(contador == 5){
    contador = 16;
    }
        if(contador == 9){
      contador = 18;
    }
            if(contador == 12){
      contador = 22;
    }
  }
}
