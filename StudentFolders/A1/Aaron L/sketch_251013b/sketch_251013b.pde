<<<<<<< Updated upstream
void setup(){
  size(800,600);
  
}
void draw(){
  background(50);
  if(pointCircle(mouseX, mouseY,400, 350, 50)==true){
  fill(125,0,0);
  }else{
    fill(0);
  }
  circle(400,200,20);
  
}
  void mousePressed(){
  
  
}

boolean pointCircle(float px, float py, float cx, float cy, float cr){
  
  
  
=======
int counter = 0;
int counter2 = 0;
int counter3 = 0;

void setup() {
  size(800, 600);
 textAlign(CENTER, CENTER);
}
void draw() {
  background(150);
  if (pointCircle(mouseX, mouseY, 400, 300,25)==true) {
    fill(225, 0, 0);
  } else {
    fill(0);
  }
  circle(400, 300, 50);
  fill(0);
  text(counter, 400, 300);
  
  
  if (pointCircle(mouseX, mouseY, 200, 150, 15)==true) {
    fill(225, 0, 0);
  } else {
    fill(0);
  }
  circle(200, 150, 30);
  fill(3);
  text(counter2, 200, 150);
  
  if (pointCircle(mouseX, mouseY, 100, 500,50)==true) {
    fill(225, 190, 0);
  } else {
    fill(0);
}
circle(100,500,100);
fill(10);
text(counter3, 100, 500);
}
void mousePressed() {
  if (pointCircle(mouseX, mouseY, 400, 300, 50) == true) {
    counter++;
  }
  if (pointCircle(mouseX, mouseY, 200, 150, 30)==true) {
    counter2++;
  }
    
    if (pointCircle(mouseX, mouseY, 100, 500, 100)==true) {
    counter3++;
  }
}
boolean pointCircle(float px, float py, float cx, float cy, float cr) {
  if (dist(px, py, cx, cy) < cr) {
    return true;
  } else {
    return false;
  }
}
>>>>>>> Stashed changes
