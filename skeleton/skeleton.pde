float sw, sh, touchX, touchY;
float w,h;
int start_app = 0;
PImage logo,shelf,leafimg;


void setup(){
  size(displayWidth, displayHeight, P3D);
  sw = displayWidth;
  sh = displayHeight;
  w = width/2;
  h = height/2;
  logo = loadImage("bladerunner.jpg");
  leafimg = loadImage("fern.jpg");
  shelf = loadImage("wooden-shelf.jpg");
}

void draw(){
  //Homescreen
  background(0);
  image(logo, sw/4, sh/3);
  
  textAlign(CENTER);
  textSize(72);
  text("KAI - ZEN", sw/2,sh/3); 
  noFill();
  stroke(255,0,0);
  strokeWeight(5);
  
  if(start_app == 0){
    ellipse(touchX, touchY, sw/4, sw/4);

    if((touchX-sw/2)*(touchX-sw/2)+(touchY-sh/2)*(touchY-sh/2) < 100)
      start_app = 1;
  }
  
  else if(start_app == 1){
     background(0);
    
     image(shelf, 0, 0,sw,sh);
     
     image(leafimg,80,40,200,200);
//Images for other objects go here  
     if(touchX < 200 && touchY < 200 && start_app == 1){
      start_app = 2;
     }
  }
  else if(start_app == 2){
  }
}

void mouseDragged() {
  touchX = mouseX;
  touchY = mouseY;
}
