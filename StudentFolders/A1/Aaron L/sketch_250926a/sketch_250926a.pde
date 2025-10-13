Cooltext word;

void setup() {
  size(800, 600);
  word = new Cooltext(400, 300, "HELLO");
}

void draw() {
  fill(0, 50);
  rect(0, 0, width, height);

  word.display();

}

void keyPressed() {
 if(key == ' '){
  word.toggleParty();
 }
 if(key == 'p'){
word.togglePulse();
 }
 
    
  }
