PImage img;
PImage Samsung;
Image[5] pics = new PImage[5];

void setup(){
  size(800,600);
  img = loadImage("Apple.png");
  Samsung = loadImage("Samsung.png");
  pics[0].loadImage(:"Nokia.png");
  
  imageMode(CENTER);
}

void draw(){
  image(img, 400, 300);
  image(Samsung, 500, 100);
  image(Nokia, 30, 300);
}
void keyPressed(){
  
