float x = 500;
float y = 600;
float xy = -5;
float speed = 0;

void setup(){
  size(800, 600);
  
}
  void draw(){
    background(50);
   circle(x,y,20);
   y += speed;
   
   if(y < -25){
     x = random(0, 800);
     y = 550;
     speed = 0;
   }
   
   
  }
  void keyPressed(){
    if(key == ' '){
       speed = -5;
     }
    }
  
