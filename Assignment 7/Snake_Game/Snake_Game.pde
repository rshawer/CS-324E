Snake snek;
food foodie;
int score = 0;
PFont f;
int target = 5;
int life = 3;

void setup() {
  frameRate(15);
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
  if (score != target && life > 0) {
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
  text("Life", 420, 20);
  text(life, 460, 20);
  //display win/lose window
  win();
  lose();
  dead();
  
  
}

void win() {
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

void dead() {
  if (life <= 0) {
      fill(255);
      textFont(f);
      text("YOU LOST!", 250, 250);
      text("Press Tab to play again.", 250, 275);
      if (keyPressed) {
        if (key == TAB) {
          reset();
        }
      }
    }
}

void lose() {
  if (snek.x > 505 || snek.x < -5) {
    life = life - 1;
    reset_snek();
  }
   else if (snek.y > 505 || snek.y < -5) {
     life = life - 1;
     reset_snek();
   }
   
   if (life == 0) {
  }
}
     
     
void reset() {
  score = 0; 
}

void reset_snek(){
  snek.x = (int)random(100, 300);
  snek.y = (int)random(100, 300);
}
