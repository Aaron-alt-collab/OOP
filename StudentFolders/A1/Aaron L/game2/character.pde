class Player {
  float x;
  float y;
  float speed;
  int heart;

  Player(float startX, float startY) {
    x = startX;
    y = startY;
    speed = 5;
  }
  void move() {
    if (k.isKeyDown('W')) {
      y -= speed;
    }
    if (k.isKeyDown('s')) {
      y += speed;
    }
    if (k.isKeyDown('a')) {
      x -= speed;
    }
    if (k.isKeyDown('d')) {
      x += speed;
    }
  }

  void display() {
    fill(255);
    circle(x, y, 100);
  }
  void lives() {
  }
}
