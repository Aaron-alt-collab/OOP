import com.prestopy.mrkeyboard.*;
MrKeyboard k;
<<<<<<< Updated upstream
Player p;

void setup() {
  size(800, 600);
  k = new MrKeyboard(this);
  p = new Player(400, 300);
=======

Player p;
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();
ArrayList<Item> items = new ArrayList<Item>();

String gameState = "PLAY";
int obstacleTimer = 0;
int itemTimer = 0;

void setup() {
  size(600, 600);
  k = new MrKeyboard(this);
  resetGame();
}

void resetGame() {
  p = new Player(width/2, height/2);
  obstacles.clear();
  items.clear();
  gameState = "PLAY";
>>>>>>> Stashed changes
}

void draw() {
  background(50);
<<<<<<< Updated upstream
  p.display();
  p.move();
=======

  if (gameState.equals("GAMEOVER")) {
    gameOverScreen();
    return;
  }


  p.move();
  p.update();
  p.display();


  obstacleTimer++;
  if (obstacleTimer > 40) {
    spawnObstacle();
    obstacleTimer = 0;
  }


  for (int i = obstacles.size()-1; i >= 0; i--) {
    Obstacle o = obstacles.get(i);
    o.update();
    o.display();

    if (o.checkCollision(p)) {
      p.heart--;
      obstacles.remove(i);
      continue;
    }

    if (o.offscreen()) obstacles.remove(i);
  }


  itemTimer++;
  if (itemTimer > 200) {
    spawnItem();
    itemTimer = 0;
  }


  for (int i = items.size()-1; i >= 0; i--) {
    Item it = items.get(i);
    it.display();

    if (it.checkCollision(p)) {
      it.effecton(p);
      items.remove(i);
    }
  }


  if (p.heart <= 0) {
    gameState = "GAMEOVER";
  }


  fill(255);
  textSize(20);
  text("Lives: " + p.heart, 20, 30);
}

void gameOverScreen() {
  fill(255, 50, 50);
  textSize(60);
  textAlign(CENTER);
  text("GAME OVER", width/2, height/2 - 20);

  fill(255);
  textSize(20);
  text("Press R to Restart", width/2, height/2 + 40);

  if (k.isKeyDown('R')) {
    resetGame();
  }
}
void spawnObstacle() {
  float x, y, sx, sy;
  int side = int(random(4));

  if (side == 0) {
    x = 0;
    y = random(height);
    sx = random(3, 6);
    sy = 0;
  } else if (side == 1) {
    x = width;
    y = random(height);
    sx = -random(3, 6);
    sy = 0;
  } else if (side == 2) {
    x = random(width);
    y = 0;
    sx = 0;
    sy = random(3, 6);
  } else {
    x = random(width);
    y = height;
    sx = 0;
    sy = -random(3, 6);
  }


  float t = random(1);

  if (t < 0.6) {
    obstacles.add(new Obstacle(x, y, sx, sy, "normal"));
  } else if (t < 0.9) {
    obstacles.add(new Obstacle(x, y, sx * 2.5, sy * 2.5, "bullet"));
  } else {
    obstacles.add(new Obstacle(x, y, 0, 0, "laser"));
  }
}
void spawnItem() {

  float x = random(50, width - 50);
  float y = random(50, height - 50);

  String type;
  if (random(1) < 0.6) type = "speed";   
  else type = "revive";                 

  Item it = new Item(x, y, type);
  it.active = true;  
  items.add(it);
>>>>>>> Stashed changes
}
