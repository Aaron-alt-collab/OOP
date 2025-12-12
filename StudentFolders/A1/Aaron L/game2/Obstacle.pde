class Obstacle {
<<<<<<< Updated upstream
  float speed;
  float x;
  float y;
  Obstacle(float StartX, float StartY, float z){
    x = StartX;
    y = StartY;
    speed = z;
    
  }
  void update(){
    x = speedX;
    y = 
}
 
=======
  float x, y;
  float speedX, speedY;
  float size;
  String type;
  int life = 60;

  Obstacle(float x, float y, float sx, float sy, String type) {
    this.x = x;
    this.y = y;
    speedX = sx;
    speedY = sy;
    this.type = type;

    if (type.equals("normal")) size = random(20, 40);
    else if (type.equals("bullet")) size = 15;
    else if (type.equals("laser")) size = 200; // length of laser
  }

  void update() {
    if (!type.equals("laser")) {
      x += speedX;
      y += speedY;
    } else {
      life--;
    }
  }

  void display() {
    if (type.equals("normal")) {
      fill(255, 255, 0);
      ellipse(x, y, size, size);
    } else if (type.equals("bullet")) {
      fill(255, 0, 0);
      rectMode(CENTER);
      rect(x, y, size * 2, size / 1.5);   // rectangle bullet
    } else if (type.equals("laser")) {
      fill(255, 50, 50, 180);
      rectMode(CENTER);
      rect(x, y, size, 15);
    }
  }

  boolean checkCollision(Player p) {
    if (type.equals("laser")) {
      return dist(x, y, p.x, p.y) < 100;
    }
    return dist(x, y, p.x, p.y) < (size/2 + p.size/2);
  }

  boolean offscreen() {
    if (type.equals("laser")) return life <= 0;
    return (x < -60 || x > width + 60 || y < -60 || y > height + 60);
  }
}
>>>>>>> Stashed changes
