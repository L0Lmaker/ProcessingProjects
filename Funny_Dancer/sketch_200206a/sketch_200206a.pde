float offset=0;
void setup() {

  size(400, 400);
}

void draw() {

  background(0);

  fill(255);

  noFill();

  stroke(255);

  strokeWeight(5);

  float x = map(mouseX, 0, 400, (width/2)-15, (width/2)+15);
  float y = map(mouseY, 0, 400, (height/2)-15, (height/2)+15);

  ellipse(x, y-70, 90, 90);

  bezier(30, 50, mouseX, mouseY, mouseY, mouseX, width-70, height-50);

  bezier(70, height-50, width-mouseX, height-mouseY, mouseY, mouseX, width-30, 50);

  noStroke();
  float col = map(mouseX-(width/2), (-width/2), width/2, 0, 360);
  float col2 = map(mouseY-(height/2), -height/2, height/2, 0, 360);
  colorMode(HSB);
  fill(col, 99, 99, 225);
  float diam = mouseY;
  ellipse(mouseX, mouseY, diam, diam);
  ellipse(width-mouseX, height-mouseY, diam, diam);


  fill(col2, 99, 99, 225);
  ellipse(width-mouseX, mouseY, diam, diam);
  ellipse(mouseX, height-mouseY, diam, diam);
}  
