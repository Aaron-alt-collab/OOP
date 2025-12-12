class Item {
  float x;
  float y;
  float size = 20;
  String type;
  boolean active = true;

  Item(float x, float y, String type) {
    this.x = x;
    this.y = y;
    this.type = type;
  }

  void display() {
    if (!active) return;

    if (type.equals("speed")) fill(200, 150, 0);
    else if (type.equals("revive")) fill(0, 250, 0);
    else fill(0, 0, 255);

    noStroke();
    ellipse(x, y, size, size);
  }

  boolean checkCollision(Player p) {
    if (!active) return false;

    float d = dist(x, y, p.x, p.y);
    if (d < size/2 + p.size/2) {
      active = false;
      return true;
    }
    return false;
  }

  void effecton(Player p) {
    if (type.equals("speed")) {
      p.Speedboost(150);
    }
    if (type.equals("revive")) {
      p.heart = min(p.heart + 1, p.maxlives);
    }
  }
}
