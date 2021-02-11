float armL1 = 50;
float armL2 = 35;
float armL3 = 60;
float armL4 = 30;
float armL5 = 10;
float armW2 = 15;
float armW3 = 10;
float armW4 = 8;
float armW5 = 2;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float angle5 = 0;
float angle6 = 0;
float dif1 = 2.5;
float dif2 = 2.0;
float dif3 = 1.5;
float dif4 = 1.0;


void setup(){
  size(1200, 800, P3D);
  
  camera(150,150,150, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
  
 }

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'a'){
      angle1 = angle1 + dif1;
    }
    if(key == 'A'){
      angle1 = angle1 - dif1;
    }
    if(key == 's'){
      angle2 = angle2 + dif2;
    }
    if(key == 'S'){
      angle2 = angle2 - dif2;
    }
    if(key == 'd'){
      angle3 = angle3 - dif3;
    }
    if(key == 'D'){
      angle3 = angle3 + dif3;
    }
    if(key == 'f'){
      angle4 = angle4 - dif3;
    }
    if(key == 'F'){
      angle4 = angle4 + dif3;
    }
    if(key == CODED){
      if(keyCode == LEFT){
        angle5 = angle5 - dif4;
        angle6 = angle6 + dif4;
      }
      if(keyCode == RIGHT){
        angle5 = angle5 + dif4;
        angle6 = angle6 - dif4;
      }
    }
  }
  
  //base(1st link
  rotateZ(radians(angle1));
  translate(0,0,armL1/2);
  fill(175);
  if(keyPressed){
    if(key == 'a' || key == 'A'){
      fill(139,133,255);
    }
  }
  box(20,20,armL1);
  
  //2st link
  translate(0,0,armL1/2-armW2/2);
  rotateY(radians(angle2));
  translate(0,armL2/2+10,0);
  fill(150);
    if(keyPressed){
    if(key == 's' || key == 'S'){
    fill(238,255,133);
    }
    }
  box(armW2,armL2,armW2 );
  
  
  //3nd link
  translate(0,armL2/2-armW3/2,0);
  rotateX(radians(angle3));  
  translate(armW2/2+armW3/2,0,armL3/2-armW2/2);
  fill(125);
    if(keyPressed){
    if(key == 'd' || key == 'D'){
      fill(252,133,255);
    }
    }
  box(armW3,armW3,armL3);
  
  //4th link
  translate(0,0,armL3/2-armW4/2);
  rotateX(radians(angle4));  
  translate(armW3/2+armW4/2,armL4/2-armW3/2,0);
  fill(100);
    if(keyPressed){
    if(key == 'f' || key == 'F'){
      fill(252,133,255);
    }
    }
  box(armW4,armL4,armW4);
  
  //5th link - connect
  translate(0,armL4/2,0);
  fill(75);
  sphere(4);

  //5th link -1
  pushMatrix();
  translate(armW5/2,armW5/2,0);
  rotateZ(radians(angle5));  
  translate(0,armL5/2-armW5/2,0);
  fill(0);
    if(keyPressed){
    if(keyCode == LEFT || keyCode == RIGHT){
      fill(139,133,255);
    }
    }
  box(armW5,armL5,armW5);
  
  //5th link -2
  popMatrix();
  translate(-armW5/2,armW5/2,0);
  rotateZ(radians(angle6));  
  translate(0,armL5/2-armW5/2,0);
  fill(0);
  if(keyPressed){
    if(keyCode == LEFT || keyCode == RIGHT){
      fill(139,133,255);
    }
  }
  box(armW5,armL5,armW5);

    }
