
//reloj
int contador;
int seg;
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
int loteria = round(random(8));

void setup(){
 //800/10 = width/10 = 80
 size(800,600);

  
  Romans = loadFont("TimesNewRomanPS-BoldMT-48.vlw");
  Arial = loadFont("ArialNova-48.vlw");
}
void draw(){
  boolean pantalla_0 = seg >= 0 && seg < 28 ;
  boolean pantalla_1 = seg >= 9 && seg < 38; 
  boolean pantalla_2 = seg >= 22 && seg < 55 ;
  boolean pantalla_3 = seg > 28 && seg < 60 ; 
  boolean pantalla_5 = seg > 32 && seg < 70;
  boolean pantalla_4 = seg > 39;
  boolean lakey = key == '0';
  
  
  
  contador ++;
  if((contador % 60) == 0){seg++;}
  
  
  background(0);
  
  if(mousePressed || lakey){
   imageMode(CENTER);   
   Fondo = loadImage("05-min.jpg");  
   image(Fondo,mouseX ,mouseY + mover);
   mover--;
   
 
  }     else if(keyCode == ' ' && lakey == true){ lakey = false;} 
  
   else if(pantalla_0) {    
    Fondo = loadImage("05-min.jpg");  
    image(Fondo,width/2,mover);
    mover--;
    imageMode(CENTER);

   }
  
     
    imageMode(0);

   
   


//  if(seg == 60){    seg = 0;    min++;  }
  
 //println(seg); 

//Creditos


    textSize(10);
    
    if(pantalla_1){
      
    fill(#f0cd19);
    textSize(20);
    textFont(Romans, 30);
    text("Principales", 580 ,moverfuera +60);
    reja = loadImage("01_-min.jpg");
    image(reja,100,moverfuera + 20);
    fill(255);
    textSize(18);
    
    textFont(Arial, 16);
    text("Tom Sawyer", 580 ,moverfuera +120);
    text("Huckleberry Finn", 580 ,moverfuera +160);
    text("Joe Harper", 580 ,moverfuera +200);
    text("Sid", 580 ,moverfuera +240);
    text("Becky Thatcher", 580 ,moverfuera +280);
    text("Joe", 580 ,moverfuera +320);
    text("Muff Potter", 580 ,moverfuera +360);
    text("Tía Polly", 580 ,moverfuera +400);
    text("Sidney", 580 ,moverfuera +440);
    imageMode(CENTER);    
    moverfuera--;
    
    }
    
    if(pantalla_2){
    imageMode(CENTER);  
    fill(#f0cd19);
    textSize(20);
    textFont(Romans, 30);
    text("Secundarios", 150 ,mover2 -80);
    reja2 = loadImage("02-min.jpg");
    image(reja2, 550 ,mover2 +60);
    fill(255);
    textSize(18);
         
    textFont(Arial, 16);
    text("Mary", 150 ,mover2 + 40);
    text("Billy", 150 ,mover2 + 80);
    text("Johnny Milles", 150 ,mover2 + 120);
    text("Amy Lawrence", 150 ,mover2 + 160);
    text("Juez Thatcher", 150 ,mover2 + 200);
    text("Mr. Walters", 150 ,mover2 + 240);
    text("Jeff Thatcher", 150 ,mover2 + 280);
    text("Ben Rogers", 150 ,mover2 + 320);
    text("Dr. Robinson", 150 ,mover2 + 360);
    text("Jim", 150 ,mover2 + 400);

    mover2--;
    
    }
    
    
        if(pantalla_3){
    fill(#f0cd19);
    textSize(20);
    textFont(Romans, 30);
    text("Artistas", width/2 ,mover3 +80);
    fill(255);
    textSize(18);
    
    textFont(Arial, 16);
    text("Michel Maltonn", width/2 ,mover3 +120);
    text("Tom Sodimm", width/2 ,mover3 +160);
    text("Philip Matt Nilton", width/2 ,mover3 +200);
    imageMode(CENTER);
    
    mover3--;
    
    }
    
         if(pantalla_4){
         imageMode(CENTER);         
    fill(#f0cd19);
    textSize(20);
    textFont(Romans, 30);
    text("Editorial", width/2 ,mover4 +80);
    APC = loadImage("AA.png");
    image(APC,width/2 ,mover4 + 200);
    fill(255);
    textSize(15);

    wiki = loadImage("wiki-1.png"); 
    image(wiki,width/2 ,mover6 + 150);
 
     if(mover6 == 150){
         
         if(loteria == 1 || loteria == 6){ mover6++; tint(opacar); opacar--;}
         if(loteria == 2 || loteria == 5){ mover6++; tint(opacar,255,255); opacar--;}
         if(loteria == 3 || loteria == 4){ mover6++; tint(255,255,opacar); opacar--;}
         if(loteria == 8 || loteria == 7){ mover6++; tint(255,opacar,255); opacar--;}
        
       
  } 

    if(opacar == 0){ mover6--;} 
         //println(opacar);
    textFont(Arial, 15);
    text("American Publishing Company", width/2  ,mover4 +300);
    //text("American Publishing Company", 280  ,mover4 +520);
    mover6--;
    mover4--;
     
    }
          if(pantalla_5){
    fill(#f0cd19);
    textSize(20);
    textFont(Romans, 30);
    text("Autor", width/2 ,mover5 +60);

    fill(255);
    textSize(18);
    
    
         
    textFont(Arial, 17);
    text("Mark Twain", width/2  ,mover5 +230);
    mover5--;
    
    }
    
    textMode(CENTER);
    textAlign(CENTER);
    imageMode(CENTER);
       
  //text("probemos: Siendo nosotros parte de ka historia, bien", 90 ,mover +80);




//Imagenes ((450 - 333 = 117) para X)






  
  
  
    if (keyPressed) {
    /* if (key == '1') { pantalla_0 = true; }   
      
    if (key == '2') { pantalla_2 = true;}    

    if (key == '3')  {seg = 60;}   
    
    if (key == '4')  { seg = 66; pantalla_0 = false; pantalla_1 = false; pantalla_2 = false; pantalla_3 = false; } */  
    
    if (key == 'd')  { mover--; moverfuera--; mover2--; mover3--; mover4--; mover5--; mover6--; }
    if (key == 'a')  { mover++; moverfuera++; mover2++; mover3++; mover4++; mover5++;  }
    }
}
