Snake snek;
food foodie;
int score = 0;
PFont f;
int target = 5;

void setup() {
  frameRate(12);
  size(500, 500);
  noStroke();
  background(0);
  snek = new Snake(100, 100);
  foodie = new food(20*(int) random(0, 20), 20*(int) random(0, 20));
  f = createFont("Arial",20, true);
  textSize(20);
}

void draw() {
  background(0);
  snek.keyPressed();
  if (score != target ) {
    snek.move();
  }
  snek.display();
  foodie.show();
  text("Score", 10, 20);
  if (abs(snek.x-foodie.x)<=5 &&abs(snek.y-foodie.y)<=5){
    foodie = new food(20*(int) random(0, 20), 20*(int) random(0, 20));
    score = score + 1;
  }
  
  text(score, 70, 20); //display score
  
  //display win/lose window
  if (score == target) {
      fill(255);
      textFont(f);
      text("YOU WON!", 250, 250);
      text("Press Tab to play again.", 250, 275);
      if (keyPressed) {
        if (key == TAB) {
          reset();
        }
      }
    }
  }

void reset() {
  score = 0; 
}
