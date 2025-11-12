
boolean ammo = false;
float speed = 1.5;
float x = 400;
float y = 575;
import java.util.HashSet;
HashSet <Integer> keysDown = new HashSet <Integer>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
void setup() {
  size(800, 600);
}
void draw() {
  background(50);
  circle(x, y, 50);
  customPress();

  //for(int i = bullets.size - 1; i >= 0;
  for (Bullet b : bullets) {
    b.update();
    b.display();
  }
}


void customPress() {
  if (keysDown.contains(16)) {
    speed = 6.27;
  } else {
    speed = 1.5;
  }
  for (Integer k : keysDown) {

    if (k == int('D')) {
      x += speed;
    }
    if (k == int('A')) {
      x -= speed;
    }
  }
  if (x <25) {
    x = 25;
  }
  if (x > width - 25) {
    x = width - 25;
  }
}






void keyPressed(KeyEvent e) {
  println(e.getKeyCode());
  keysDown.add(e.getKeyCode());


  if (key == ' ') { //if the spacebar is pressed, add a bullet to the array
    if (ammo == false) {
      bullets.add(new Bullet(startX, StartY));
    } else {
      bullets.add(new Bullet(startX, startY, 0.5));
      bullets.add(new Bullet(startX, startY, -0.5));
    }
  }

  void keyReleased(KeyEvent e) {
    keysDown.remove(e.getKeyCode());
  }

  boolean keyDown(int kcode) {
    return keysDown.contains(kcode);
  }
