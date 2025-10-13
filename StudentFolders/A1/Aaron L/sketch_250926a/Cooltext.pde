class Cooltext {

  PVector pos;
  String text;
  float size;
  float maxSize;
  float minSize;
  color c;
  boolean flash;
  float change;
  boolean pulseControl;



  Cooltext(float x, float y, String text) {
    this.text = text;
    pos=new PVector(x, y);
    size = 30;
    maxSize = 60;
    minSize = 10;
    c = color(255);
    flash = false;
    pulseControl = false;
    change = -3;
  }

  void display() {
   pulse();
    if (size > maxSize || size < minSize) {
      change = -change;
    }

    if (flash == true) {
      partyTime();
    }
    if (pulseControl == true) {
      pulse=!pulse;
    }
    void pulse(){
       size = size + change;
    }
void toggl






    fill(c);
    textAlign(CENTER, CENTER);
    textSize(size);
    text(text, pos.x, pos.y);
  }
  void partyTime() {
    c = color(random(255), random(255), random(255));
  }
  void toggleParty() {
    flash = !flash;
  }
}
