PVector pos = new PVector(400,300);




void setup(){
  size(800,600);
}
void draw(){
  background(50);
  circle(pos.x,pos.y,50);
}
void keyPressed(){
  if(key == 'w'){
    pos.y -= 10;
  }
  if(key == 's'){
    pos.y += 10;
  }
  if(key == 'a'){
    pos.x -= 10;
  }
  if(key == 'd'){
   pos.x += 10;
  }
  
}
