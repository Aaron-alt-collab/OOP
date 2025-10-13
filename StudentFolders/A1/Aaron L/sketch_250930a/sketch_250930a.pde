Dino d;
ArrayList<Obs> obstacles = new ArrayList<Obs>();
boolean gameOver = false;



  void setup() {
  size(800, 600);
  d = new Dino();
  textAlign(CENTER,CENTER);
}

void draw() {
if(!gameOver){
  mainGame();
}else{
  gameOver();
}
  
  
  
  background(255);
  d.display();
  d.update();
  for (int i = 0; i< obstacles.size(); i++) {
    Obs o = obstacles.get(i);
    o.move();
    o.display();
  }


  //for(Obs o : obstacles){
  //o.move();
  //o.display();
}

void keyPressed() {
  if(key == ' '){
    d.jump();
}
if(key == 'x'){
  obstacles.add(new Obs());
}
}
  void mainGame(){
    background(255);
    d.display();
    d.update();
   for(int i = 0; i < obstacles.size(); i++){
     Obs o = obstacles.get(i);
      o.move();
      o.display();
      
   }
  }
  
  void gameOver(){
    background(255,0,0);
    fill(255);
    text("U DED",400,300);
  
  }
