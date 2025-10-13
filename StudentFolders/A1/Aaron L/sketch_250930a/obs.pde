class Obs {
  PVector pos;
  PVector speed;
  float w;
  float h;
color t; 



  Obs() {
    t = 255;
    
    w=30;
    h = 50;
    pos = new PVector(700,550);
    speed = new PVector(0,0);
    
    
  }
  void move() {
    
   speed.x = -10;
   pos.add(speed);
   
  }
  void display() {
    fill(t,0,0);
    rect(pos.x, pos.y, w, h);
  }
}
