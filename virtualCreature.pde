
PImage img;
PImage img2;
PImage img3;
PImage bg;
float locX = 0;
float locY = 0;
float speedX = 5;
float speedY = 5;
float bounceX = 1;
float bounceY = 1;
float moveX = 0;
float moveY = 0;
void setup(){
  size(800,600,P2D);
  ellipseMode(CENTER);
  img = loadImage("joe.png");
  img2 = loadImage("joe2.png");
  img3 = loadImage("joe3.png");
  bg = loadImage("forest.png");
  bg.resize(800,600);
}

void draw() {
  background(bg);
  stroke(214,212,212);
  strokeWeight(2);
  fill(255,22,22);
  triangle(20, 40, 30, 40, 24, 50);
  triangle(300, 300, 310, 290, 315, 300);
  triangle(120, 300, 125, 310, 110, 300);
  triangle(400, 50, 410, 60, 405, 70);
  triangle(700, 500, 690, 510, 705, 505);
  triangle(350, 400, 355, 390, 340, 385);
  triangle(650, 200, 640, 190, 655, 195);
  triangle(200, 550, 190, 560, 205, 565);
  triangle(575, 450, 565, 440, 580, 450);
  
  if(!mousePressed) {
    locX +=  speedX * bounceX;
    locY +=  speedY * bounceY;
    image(img, locX, locY, 150, 150);
    if (locX > width-100 || locX < 0) {
      bounceX *= -1;
    }
    else if (locY > height-100 || locY < 0) {
      bounceY *= -1;
  }
  }
  
  else if(mousePressed){
    fill(247,255,26);
    
    
    moveX = mouseX - locX;
    moveY = mouseY - locY;
    locX += moveX * 0.05;
    locY += moveY * 0.05;
    image(img2,locX,locY,150,150);
    tint(255, 127);
    
    ellipse(mouseX, mouseY, 90, 90);
    
    
  }
  if(locX < 28 && locY< 48 && locX > 20 && locY > 21){
    image(img3,locX,locY,150,150);
  }
  else if(locX < 311 && locY< 399 && locX > 304 && locY > 291){
    image(img3,locX,locY,150,150);
  }
  else if(locX < 121 && locY< 309 && locX > 114 && locY > 201){
    image(img3,locX,locY,150,150);
  }
  else if(locX < 409 && locY< 64 && locX > 401 && locY > 26){
    image(img3,locX,locY,150,150);
  }
  else if(locX < 702 && locY< 509 && locX > 694 && locY > 401){
    image(img3,locX,locY,150,150);
  }
  else if(locX < 352 && locY< 396 && locX > 344 && locY > 288){
    image(img3,locX,locY,150,150);
  }
  else if(locX < 652 && locY< 199 && locX > 644 && locY > 121){
    image(img3,locX,locY,150,150);
  }
  else if(locX < 202 && locY< 572 && locX > 194 && locY > 464){
    image(img3,locX,locY,150,150);
  }
  else if(locX < 577 && locY< 451 && locX > 571 && locY > 343){
    image(img3,locX,locY,150,150);
  }
}
