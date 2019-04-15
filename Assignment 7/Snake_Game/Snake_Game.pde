Snake snek;
food foodie;
int score = 0;
boolean flag;
boolean reset;
import java.lang.Math;

void setup() {
  frameRate(12);
  size(500, 500);
  noStroke();
  background(0);
  snek = new Snake(100, 100);
  foodie = new food(20*(int) random(0, 20), 20*(int) random(0, 20));
}

void draw() {
  background(0);
  snek.keyPressed();
  snek.move();
  snek.display();
  foodie.show();
  text("Score", 10, 20);
  if (abs(snek.x-foodie.x)<=5 &&abs(snek.y-foodie.y)<=5){
    foodie = new food(20*(int) random(0, 20), 20*(int) random(0, 20));
    score = score + 1;
  }
  text(score, 50, 20); //display score
  
  //display win/lose window
  /*
  if ((snek.x > 500) || (snek.x < 0)) {
    flag = true;
    fill(0);
    while (flag) {
      text("You lost!", 250, 250);
      if (keyPressed) {
        flag = false;
      }
    }
  }
  else if((snek.y > 500) || (snek.y < 0)) {
    flag = true;
    fill(0);
    while (flag) {
      text("You lost!", 250, 250);
      if (keyPressed) {
        flag = false;
        reset = true;
      }
    }
  }
  */

}
