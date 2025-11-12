Class Bullet{
  float bx;
  float by;
  float bspeed;
  float bsize;

  Bullet(float startX, float startY, float speed) {

    bx = startX;
    by = startY;
    bspeed = speed;
    bsize = 3;
  }
  void update() {
    y -= speed;
  }

  void display() {
    fill(255, 0, 0);
    noStroke();
    circle(bx, by, bsize);
  }
  
  boolean screen() {
    if(by < 0){
      return true;
    } else {
      return false;
    }
  }
}
