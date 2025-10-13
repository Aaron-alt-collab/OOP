float x = 400;
float y = 300;
float speed = 0;
void setup(){
  size(800,600);
  noStroke();
}
void draw(){
  background(50);
  circle(x,y,100);
  triangle(x-40, y-30, x+40, y-30, x, y-110);
 
   
  if(y < -25){
    x = random(0,800);
    y = 550;
   
    speed += 0.1;
    y += speed;
    
    if(y>height + 50);
    x = random(0,width);
    y = -50;
    speed = 0;
    
     println((400-mouseX) + " " + (300-mouseY));
    
  }
}
