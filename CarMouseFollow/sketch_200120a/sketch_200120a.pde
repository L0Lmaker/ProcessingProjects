
int dist;
void setup(){
  size(600,300);
  background(220);
}

void draw(){
  background(220);
  pushMatrix();
  translate(mouseX-300,mouseY-150);
  fill(225,250,220);
  quad(115,211,97,200,96,159,115,148);
  
  colorMode(HSB);
  fill(131,7,53);
  triangle(115,148,480,132,249,100);
    colorMode(RGB);

  fill(255);
  
  line(480,132,473,189);
  line(473,189,451,214);
  line(451,214,121,214);
  line(121,214,115,211);
  
  arc(154,211,77,77,PI,(365*(PI/180)));
  arc(412,211,77,77,(176*(PI/180)),(365*(PI/180)));
  
  colorMode(HSB);
  fill(41,9,75);
  bezier(179,180,179,180,151,90,375,199);
  colorMode(RGB);
  fill(255);
  
  line(178,180,375,199);
  line(253,187,249,100);
  
  strokeWeight(2);
  stroke(255);
 fill(32,32,29);
  ellipse(412,211,65,65);
  ellipse(154,211,65,65);
  
  fill(64,66,67);
  ellipse(412,211,55,55);
  ellipse(154,211,55,55);
  stroke(0);
  strokeWeight(1);
  popMatrix();
  
  int xchange=abs(pmouseX-mouseX);
  int ychange=abs(pmouseY-mouseY);
  
  dist+=xchange+ychange;
  textSize(25);
  fill(0);
  text("Distance Driven: "+dist,0,20);
  textSize(12);
  text("The more you move your car around with the mouse, the more you drive",0,30);
}
