Snake snek;

void setup() {
  size(500, 500);
  noStroke();
  background(0);
  snek = new Snake(100, 100);
}

void draw() {
  background(0);
  snek.keyPressed();
  snek.move();
  snek.display();
}
