ArrayList<Bouncer> bouncyboiz = new ArrayList<Bouncer>();

void setup(){
  
 size(800,600);
 for(int i = 0; i<3; i++){
   bouncyboiz.add(new Bouncer());
 }
}
 void draw(){
   for(int i = 0; i < bouncyboiz.size(); i++){
     bouncyboiz.get(i).display();
     bouncyboiz.get(i).move();
   }
 }
 void keyPressed(){
    for(int i = 0; i < bouncyboiz.size(); i++){
      bouncyboiz.get(i).displayColor();
    }
 }
