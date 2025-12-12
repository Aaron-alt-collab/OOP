class Player {
<<<<<<< Updated upstream
  float x;
  float y;
  float speed;
  int heart;
=======
  float x, y;
  float speed = 5;
  float size = 40;
  int heart = 5;  
  int maxlives = 5;
  int speedBoostDuration = 0;
>>>>>>> Stashed changes

  Player(float startX, float startY) {
    x = startX;
    y = startY;
<<<<<<< Updated upstream
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
=======
  }

  void move() {
    if (k.isKeyDown('W')) y -= speed;
    if (k.isKeyDown('S')) y += speed;
    if (k.isKeyDown('A')) x -= speed;
    if (k.isKeyDown('D')) x += speed;
  }

  void update() {
    if (speedBoostDuration > 0) {
      speedBoostDuration--;
      if (speedBoostDuration == 0) {
        speed = 5;
      }
    }
  }

  void Speedboost(int frames) {
    speed = 9;
    speedBoostDuration = frames;
  }

  void display() {
    fill(255);
    ellipse(x, y, size, size);
>>>>>>> Stashed changes
  }
}
