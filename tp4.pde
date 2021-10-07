// Video:
// https://youtu.be/-5J5QwqP0dM

// PDF:
// https://drive.google.com/file/d/1o1q_5PV6UYCk9ow4fioOwiqpkySmg0sM/view?usp=sharing

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
int Gate;

boolean decision1;
boolean decision2;
boolean trio;





//----------------CREITOS-------------------
boolean credits;

//reloj
int contador1 = 0;
int seg = 0;
int min;

//espacio
int mover = 1070;
int moverfuera = 1070;
int mover2 = 1070;
int mover3 = 1070;
int mover4 = 1070;
int mover5 = 1070;
int mover6 = 1470;
PFont Romans;
PFont Arial; 

//imagenes
PImage wiki;
PImage reja;
PImage reja2;
PImage Fondo;
PImage seis;
PImage APC;

int opacar = 255;
int loteria = 1;


//----------------CREITOS-------------------
void setup() {
  size(800, 600);
  
//----------------CREITOS-------------------  
    Romans = loadFont("TimesNewRomanPS-BoldMT-48.vlw");
  Arial = loadFont("ArialNova-48.vlw");
//----------------CREITOS-------------------  
  
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


  if(Gate == 0){
  pantallasAll();
  }

  //-----------RESET------------  
  if (seg == 68) {  
    Gate = 0;
    seg = 0;
    primo = false;
    second = false;
    trio = false;
    decision2 = false;
    decision1 = false;
    num = 0;
    contador = 0;
    contador1 = 0;
    imageMode(CORNER);
      textMode(CORNER);
     textAlign(CORNER);
  

  }
  //-----------RESET------------  

  println(seg);
  
  if (contador >= 1 && !(contador == 5) && !(contador == 9) && !(contador == 12)) {  
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



  if (contador == 0 && Gate == 0) {
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
   if (creditos(290, 425) == true) {
      
      Gate = 1;
    }
    


    fill(255);
    textFont(font, 50);
    text("Empezar", 310, width/4 + 45 + 20, 200 + 15, 80-15);
    text("Creditos", 310, 425 + 20, 200 + 15, 80-15);

}
    
  
  if (contador >= 1 && !(contador == 5) && !(contador == 9) && !(contador == 12)) {
    fill(0);
    textSize(20);
    text("Siguiente", width - 135, 592);
  }
           //----------------------------------------------
if (Gate == 1){
  CreditosON();
}  
    //----------------------------------------------  
    
} 


void  mouseReleased() {

  if (primo == true) {
    contador++;
    decision1 = false;
    decision2 = false;
  }

  if (trio == true) {
    if (contador == 17) {
      contador = 7;
    }
    if (contador == 21) {
      contador = 11;
    }
    if (contador == 15) {
      contador = 0;
    }
    if (contador == 24) {
      contador++;
      contador = 0;
    }
  }







  if (decision1 == true) {

    if (contador == 5) {
      contador = 6;
    }
    if (contador == 9) {
      contador = 10;
    }
    if (contador == 12) {
      contador = 13;
    }
  }
  if (decision2 == true) {

    if (contador == 5) {
      contador = 16;
    }
    if (contador == 9) {
      contador = 18;
    }
    if (contador == 12) {
      contador = 22;
    }
  }
  

  
}
