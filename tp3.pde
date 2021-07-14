
//https://youtu.be/vSPE-7EJcgw

int distancia = 98;
int Cirdistancia = 98;

int tam = 80;
int Cirtam = 30;

int columnas = 6;
int filas = 6;

int Circolumnas = 5;
int Cirfilas = 5;

int comienzo = 89;
int desfase = 25;


boolean presionado;

 void setup(){
   size(500,500);
  
}



void draw(){
  background(153);
  noStroke();

  
  for(int i = 0; i<columnas; i++){
    for(int j =0; j<filas; j++){
  fill(0);
  rect(i * distancia - desfase,j * distancia - desfase,tam,tam);
    }
  }
  
  //fill(255); ellipse(89 ,89 ,Cirtam,Cirtam);

  for(int k = 0; k<Circolumnas; k++){
    for(int c = 0; c<Cirfilas; c++){
  fill(255);
  ellipse(k * Cirdistancia + comienzo - desfase,c * Cirdistancia +comienzo - desfase,Cirtam,Cirtam);
    }
  }
  
  //  if(keyPressed == true){background(153);noStroke();  } 

}
void keyPressed(){

  distancia = 98;
  Cirdistancia = 98;
  tam = 80;
  Cirtam = 30;
  columnas = 6;
  filas = 6;
   Cirfilas = 5;
  Circolumnas = 5;
  comienzo = 89;
  desfase = 25;
}

void mouseDragged(){
 if(mouseX < width/2){
 tam = round(map(mouseX, 0, width/2, 0, 200));
 }else if(mouseX > width/2){
  Cirtam = round(map(mouseX, width/2, width, 0, 100)); 
 }

}
