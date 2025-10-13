float[] x = new float[5];
float[] w = new float[5];
float[] h = new float[5];
float y;
void setup() {
  size(800, 600);
    for (int i = 0; i < 5; i++) {
    x[i] = random(300, width-100);
    w[i] = random(200, 600);
    h[i] = random(100, 300);
    y=height-h[i];}
}
void draw() {
 background(0); 
  for (int i = 0; i < 5; i++) {
    rect(x[i], y, w[i], h[i]);
  }
}
