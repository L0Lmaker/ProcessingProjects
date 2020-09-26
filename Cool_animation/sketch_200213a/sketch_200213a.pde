float scale = 0;
float rot = 120;
float transp = 255;
void setup(){
  size(300,300);
  rectMode(CENTER);
  textAlign(CENTER,CENTER);
  noFill();
  smooth(5);
  frameRate(30);
}

void draw(){
  
  background(0);
  pushMatrix();
  
  stroke(0,0,255,transp);
  strokeWeight(4);
  translate(width/2,height/2);
  rotate(radians(rot));
  scale(scale);
  

  fill(63,114,105,transp);
  stroke(31,74,255,transp);
  ellipse(0,0,80,80);
  noFill();
  stroke(56,0,225,transp);
  ellipse(0,0,85,85);
  
  strokeWeight(7);
  rect(0,0,200,200);
  rotate(PI/6);
  rect(0,0,200,200);
  rotate(PI/6);
  rect(0,0,200,200);
  
  rotate(-PI/3);
  fill(255,transp);
  textSize(32);
  text("L0L",0,0);
  popMatrix();
  
  if(!(frameCount%3==0))
    transp--;
  rot+=2;
  scale+=0.0075;
  
  
}
