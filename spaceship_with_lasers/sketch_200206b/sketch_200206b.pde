boolean mPressed=false;
void setup(){
  size(200,200);
}
void draw(){
  background(0);
 
  pushMatrix();
  translate(width/1.5,1);
  rotate(PI/4);
  stroke(0,0,255);
  noFill();
  strokeWeight(1);
  arc(100,100,40,161,radians(-158),radians(158));
  arc(100,100,25,150,radians(-154),radians(153));
  strokeWeight(1);
  
  fill(0,0,255,128);
  ellipse(100,100,70,70);
 
 
  popMatrix();

 
  stroke(255);
  translate(mouseX-70,mouseY-90);
 
  fill(255,75);
  triangle(70,70,60,96,80,96);
 
  fill(0,255,255,75);
  ellipse(70,87,7,12);
 
  fill(255,75);
  rect(58,81,2,15);
  rect(80,81,2,15);
  
  if(mPressed){
   stroke(255,0,0);
    strokeWeight(2);
    line(58,81,58,-400);
    line(80,81,80,-400); 
  }
  
  
  
}



void mousePressed() {
  mPressed = true;
}
 
void mouseReleased() {
  mPressed = false;
}
