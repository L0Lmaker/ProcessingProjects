float speedX = 2, speedY = 3;
float x=150, y=150, R = 50;

void setup() {
  size(300,300);
  stroke(255); strokeWeight(2); noFill();
  colorMode(HSB,360,100,100);
}  

void draw(){
  
  background(0);
  // move spider-web
  x += speedX;
  y += speedY;
  translate(x,y);
  
  // bounce spider-web
  if(x > width-R || x < R ) speedX = -speedX;
  if(y > height-R || y < R)  speedY = -speedY;

  // draw spider-web
  // REQ1: use loops here to draw many concentric circles. 
  for(R=40; R>0;R-=10){
    stroke(map(R,40,0,360,0),100,100);
    ellipse(0,0,2*R,2*R);
  }
  R=50;
  
  // REQ2: use loops here to draw many lines. Differnt lines have differnt theta values. 
  float theta = 0;
  float x1 = R*cos(theta), y1 = R*sin(theta);
  for(theta=0;theta<2*PI;theta+=radians(30)){
    stroke(map(theta,0,(2*PI),0,360),100,100);
    line(0,0,x1,y1);
    x1 = R*cos(theta); y1 = R*sin(theta);
  }
}
