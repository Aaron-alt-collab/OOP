import com.prestopy.mrkeyboard.*;
MrKeyboard k;
Player p;

void setup() {
  size(800, 600);
  k = new MrKeyboard(this);
  p = new Player(400, 300);
}

void draw() {
  background(50);
  p.display();
  p.move();
}
