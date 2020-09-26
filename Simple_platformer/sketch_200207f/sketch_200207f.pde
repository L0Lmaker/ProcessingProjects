PImage img1,img2,img3,img4,castleTopFlag,
castleTopFrameRight1,castleTopFrameLeft1,
castleTopFrameLeft,castleTopFrameRight,
castleTopFrameBlock,castleTopSideRight,
castleTopSideLeft,openWindow,castleTop,
castleSideLeft,bannerEnd,castleSideRight,door,
bannerStart,castleBlock,bannerMiddle,player;





boolean check=true,check1=false, checkUpside=false;
int x;
float y1=128;
float ySpeed = 0;
int y2=0;
void setup(){
  frameRate(60);
  img1 = loadImage("background_0.png");
  img2 = loadImage("platform_13.png");
  img3 = loadImage("platform_14.png");
  img4 = loadImage("player_0.png");
  castleSideLeft = loadImage("medievalTile_066.png");
  castleSideRight = loadImage("medievalTile_068.png");
  door = loadImage("medievalTile_057.png");
  size(512,512);
  //noCursor();
  bannerStart = loadImage("medievalTile_024.png");
  castleBlock = loadImage("medievalTile_065.png");
  bannerMiddle = loadImage("medievalTile_046.png");
  bannerEnd = loadImage("medievalTile_070.png");
  openWindow = loadImage("medievalTile_053.png");
  castleTop = loadImage("medievalTile_019.png");
  castleTopSideLeft = loadImage("medievalTile_016.png");
  castleTopSideRight = loadImage("medievalTile_017.png");
  
  
  castleTopFrameLeft = loadImage("medievalTile_014.png");
  castleTopFrameRight = loadImage("medievalTile_015.png");
  castleTopFrameBlock = loadImage("medievalTile_009.png");
  castleTopFrameLeft1 = loadImage("medievalTile_012.png");
  castleTopFrameRight1 = loadImage("medievalTile_013.png");
  
  castleTopFlag = loadImage("medievalTile_235.png");
}


void draw(){
  
  background(img1);
  if (checkUpside)
    ultaCastle();
  else

    castle();
  floor();
  /*
  if(mouseX>448)
    x = 448-32;
  else
    x=mouseX-32;
    */
    x=constrain(mouseX,0,width-64);
  if (check1 && mouseX>=width-128){
    y1=128+20*(sin(radians(y2)));
    y2+=10;
    if(y2==180){
      check1=false;
      y2=0;}
  }else if(mouseX<width-192)
    y1=128;
   
   if(mouseX>=width-80){
     ySpeed=1;
     y1-=ySpeed;
   }else{
     ySpeed=0;
     y1=128;
   }
     
  image(img4,x,height-y1);
  if(y1==0)
    checkUpside=!checkUpside;
  
}


void mousePressed(){
  
  check1 = true;
  
}

void floor(){
  
  for (int i=0;i<7;i++){
    image(img2,(i-1)*64,height-64);
  }
  image(img3,width-128,height-64);
}


void castle(){
  int y;
  for(int i=0;i<4;i++){
    y=192+(64*i);
    image(castleSideLeft,128,y);
    image(castleSideRight,268,y);
  }
  image(door,198,height-128);
  image(bannerStart,198,height-384);
  image(bannerMiddle, 198, height-320);
  image(bannerEnd, 198, height-256);
  image(openWindow, 198, height-192);
  
  
  image(castleTopFlag, 58+140+35,height-440-70);
  image(castleTopFrameLeft,58,height-440);
  image(castleTopFrameBlock,58+70,height-440);
  image(castleTopFrameBlock,58+70+70,height-440);
  image(castleTopFrameBlock,58+70+140,height-440);
  image(castleTopFrameRight,58+70+140+70,height-440);
  
  image(castleTop, 128, height-384);
  image(castleTop, 268, height-384);
  
  
  
  
  image(castleTopSideLeft, 58, height-384);
  image(castleTopSideRight, 338, height-384);
}

void ultaCastle(){
  
  
  
}
