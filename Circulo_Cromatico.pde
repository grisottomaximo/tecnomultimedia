void setup(){
   size(700,600);
   
  
}


void draw(){
  line(350,0,350,700);
  line(0,300,700,300);
  triangle(175,400,350,115,525,400); //eje y
  triangle(190,210,350,490,510,210); //eje -y
  triangle(260,150,260,480,550,300);  //eje x
  triangle(460,500,150,300,460,150);  //eje -x
  
}
