class Bouncer {
  PVector pos;
  PVector vel;
  float size;
  color c;
  Bouncer() {
    pos = new PVector(random(100, 700), random(100, 500));
    vel = new PVector(random(-3, 3), random(-3, 3));
    size =random(10, 40);
    c = color(255, 0, 0);
  }
  void move() {
    pos.add(vel);
    if (pos.x < size/2 || pos.y > width - (size/2)) {
      vel.x = -vel.x;
    }
    if (pos.y < size/2 || pos.y > height - (size/2)) {
      vel.y = -vel.y;
    }
    displayColor();
  }
  void display() {
    fill(255);
    circle(pos.x, pos.y, size);
  }

  void displayColor() {
    c=color(random(255), random(255), random(255), 10);
  }
}
