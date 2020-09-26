float Xb, Yb, r, speedX, speedY;    //ball location, size, and speed
float Xp, Yp, w, h;                 //paddle location, wdith and height 
float Xp2, Yp2, w2, h2;

boolean isGameOver = false;         // when true, just draw the GameOver message and stop the animation loop to end the game  
int score1 = 0;
int score2 = 0;

void setup() {
  size(400, 400);

  // initialize ball attributes
  Xb = random(r, width-r);      
  Yb = 50;                         
  r = 15;
  speedX = int(random(2, 4));   
  speedY = int(random(2, 4));

  // initialize paddle attributes
  w = 30; 
  h = 8;
  Xp = width/2;  
  Yp = height - h;
  
  w2 = 30; 
  h2 = 8;
  Xp2 = width/2;  
  Yp2 = h+h+h;
  
  
  // hide mouse cursor
  noCursor();
}

void draw() {  
background(0);

if (!isGameOver) {              //play as long as it is not game over

// DRAW game elements
    // draw Ball
    fill(255);   noStroke();
    ellipse(Xb, Yb, 2*r, 2*r);
    // draw paddle
    stroke(0, 255, 0);  strokeCap(ROUND);  strokeWeight(h);
    line(Xp-w, Yp, Xp+w, Yp);
    // draw score
    fill(255, 0, 0); textAlign(LEFT);  textSize(16);
    text("Player1: " + score1, 5, 15);
    
    // draw paddle 2
    stroke(0, 255, 0);  strokeCap(ROUND);  strokeWeight(h);
    line(Xp2-w, Yp2, Xp2+w, Yp2);
    // draw score 2
    fill(255, 0, 0); textAlign(RIGHT);  textSize(16);
    text("Player2: " + score2, width-5, 15);

// MOVE game elements
    // move Paddle
    Xp = mouseX;
    // move ball 
    Xb += speedX;
    Yb += speedY;
    
    //paddle 2
    
    if(keyPressed){
     if(keyCode==LEFT)
       Xp2=constrain(Xp2-5,w,width-w);
     if(keyCode==RIGHT)
      Xp2=constrain(Xp2+5,w,width-w);
    }

// CHECK for collisions
    // REQ1: Add code to bounce the ball off the two sides and the top edge        [+2 marks]
    
    
    // REQ2: Add code to check if ball lands on the paddle. Here is the pseudo-code:
    // if the ball is at the bottom edge (hint: check Yb)                          [+1 mark]  
  
    //     if ball lands on paddle (hint: see the assignment on how to check this) [+2 marks]  
    //         increment score, bounce ball up, and increase speed by 10%          [+2 marks]
    //     else                                                                    
    //         set isGameOver to true;                                             [+1 mark]


    if (Yb<h+h+h+r){
      if((Xb<=Xp2+w && Xb>=Xp2-w)){
       speedY=-speedY;
       speedX=speedX*(1.1);
       speedY=speedY*(1.1);
      }else{
       score1++; 
       Xb = random(r, width-r);      
       Yb = 50;  
       speedX = int(random(2, 4));   
       speedY = int(random(2, 4));
      }
    }
    
    if(Xb<r || Xb>width-r)
      speedX=-speedX;
    if(Yb<r)
      speedY=-speedY;
    
    // REQ2: Add code to check if ball lands on the paddle. Here is the pseudo-code:
    // if the ball is at the bottom edge (hint: check Yb)                          [+1 mark]  
  
    //     if ball lands on paddle (hint: see the assignment on how to check this) [+2 marks]  
    //         increment score, bounce ball up, and increase speed by 10%          [+2 marks]
    //     else                                                                    
    //         set isGameOver to true;                                             [+1 mark]


    if (Yb>height-h-r){
      if((Xb<=Xp+w && Xb>=Xp-w)){
       speedY=-speedY;
       speedX=speedX*(1.1);
       speedY=speedY*(1.1);
      }else{
       score2++; 
       Xb = random(r, width-r);      
       Yb = 50;
       speedX = int(random(2, 4));   
       speedY = int(random(2, 4));
      }
    }

} else { // if game over
    //REQ3: Add code for putting the GameOver message and stoping the animation loop [+2 marks]
    textAlign(CENTER);
    textSize(40);
    text("GAME OVER!",width/2,height/3);
    text("Final Score: "+score1,width/2,(height/3)*2);
    noLoop();
    cursor();
  }
}

//no other functions are required! (e.g. don't implement mousePressed, keyPressed, etc)
