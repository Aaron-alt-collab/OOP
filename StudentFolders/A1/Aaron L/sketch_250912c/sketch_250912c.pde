


void setup() {
  size(800, 600);


  for (int x = 0; x <= width; x+= 50) {
    for (int y = 0; y <= height; y+=50) {

      rect(x, y, 40, 40);
    }
  }
}
