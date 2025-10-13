void setup(){
  size(800,600);
  
}
void draw(){
  background(50);
  if(pointCircle(mouseX, mouseY,400, 350, 50)==true){
  fill(125,0,0);
  }else{
    fill(0);
  }
  circle(400,200,20);
  
}
  void mousePressed(){
  
  
}

boolean pointCircle(float px, float py, float cx, float cy, float cr){
  
  
  
