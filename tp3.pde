
//https://youtu.be/oFTR2ygLGCk

int distancia = 52 + 52;
int distanciafil = 52 + 52;

int tam = 52;
int Cirtam = 13;

int columnas = 12;
int filas = 12;


int comienzoX = 13;
int comienzoY = 52;
int desfase = 40;
int desfil = 52;


boolean presionado;

 void setup(){
   size(700,500);
  
}


void draw(){
  background(153);
  stroke(108);
  strokeWeight(7);
  
for(int i = 0; i<columnas; i++){ 
  for(int j =0; j<filas; j++){
    fill(255);
  triangle( i * distancia  - desfase , j * distanciafil,  tam  + i * distancia  - desfase , j * distanciafil,tam  + i * distancia  -desfase ,tam + j * distanciafil);
  triangle( i * distancia   - desfase , j * distanciafil,  0 + i * distancia  - desfase , tam + j * distanciafil,tam + i * distancia  - desfase ,tam + j * distanciafil);
  triangle( tam + i * distancia  - desfase , tam + j * distanciafil,  tam*2 + i * distancia  - desfase , j * distanciafil,tam*2 + i * distancia  - desfase ,tam + j * distanciafil);
  triangle( tam + i * distancia  - desfase , j * distanciafil,  tam*2 + i * distancia  - desfase , j * distanciafil,tam + i * distancia  - desfase ,tam + j * distanciafil);
  
  triangle( i * distancia  - desfase  , tam + j * distanciafil + desfil,  i * distancia - desfase, j * distanciafil + desfil,tam + i * distancia  -desfase  ,j * distanciafil + desfil);
  triangle( i * distancia   - desfase, tam + j * distanciafil + desfil,  tam + i * distancia - desfase, tam + j * distanciafil + desfil,tam + i * distancia  - desfase, j * distanciafil + desfil);
  triangle( tam + i * distancia  - desfase, j * distanciafil + desfil,  tam*2 + i * distancia - desfase, j * distanciafil + desfil,tam*2 + i * distancia  - desfase,tam + j * distanciafil + desfil);
  triangle( tam + i * distancia  - desfase, j * distanciafil + desfil,  tam*2 + i * distancia - desfase, tam + j * distanciafil + desfil ,tam + i * distancia  - desfase,tam + j * distanciafil + desfil);
  }
}  

for(int i = 0; i<columnas; i++){ 
  for(int j =0; j<filas; j++){
    fill(0);
    strokeWeight(1);
    stroke(255);
    ellipse(comienzoX + i * tam*4,comienzoY + j * tam*4,Cirtam,Cirtam);
    
  }
}
}
void keyPressed(){

 distancia = 52 + 52;
 distanciafil = 52 + 52;

 tam = 52;
 Cirtam = 13;

 columnas = 12;
 filas = 12;


 comienzoX = 13;
 comienzoY = 52;
 desfase = 40;
 desfil = 52;
}

void mouseDragged(){
 if(mouseY > height/2){
 desfil = round(map(mouseX, 0, width, 0, 104));
 }else if(mouseY < height/2){
  Cirtam = round(map(mouseX, 0, width, 0, 60)); 
 }

}
/*
 BKP
 for(int i = 0; i<columnas; i++){ 
  triangle( i * distancia , 0,  tam  + i * distancia, 0,tam  + i * distancia,tam);
  triangle( i * distancia , 0,  0 + i * distancia, tam,tam + i * distancia,tam);
  triangle( tam + i * distancia, tam,  tam*2 + i * distancia, 0,tam*2 + i * distancia,tam);
  triangle( tam + i * distancia, 0,  tam*2 + i * distancia, 0,tam + i * distancia,tam);


  INVERSO
  triangle( 0 , tam,  0 , 0,tam ,0);
  triangle( 0, tam,  tam, tam,tam,0);
  triangle( tam, 0,  tam*2, 0,tam*2,tam);
  triangle( tam, 0,  tam*2, tam ,tam,tam);




*/
