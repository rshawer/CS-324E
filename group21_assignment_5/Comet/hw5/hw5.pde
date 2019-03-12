PImage texture;
PImage asteroid;

Comet com;
Comet com2;
Comet com3;
Comet com4;
Comet com5;
Comet com6;

void setup() {
  //canvas
  size(1000, 1000, P3D);
  noStroke();
  //texture and construct a comet
  texture = loadImage("comet.jpg");
  asteroid = loadImage("ast.jpg");
  com = new Comet(150.0, 250.0, 50.0, texture, 0, 1);
  com2 = new Comet(345, 500, 30, asteroid, 0, 0);
  com3 = new Comet(500, 900, 25.0, texture, 1, 1);
  com4 = new Comet(900, 3, 20, asteroid, 1, 0);
  com5 = new Comet(734, 65, 15, texture, 1, 0);
  com6 = new Comet(487, 58, 42, asteroid, 0, 1);
  
  textureMode(NORMAL);
  textureWrap(REPEAT);
}

void draw() {
  background(0);
  com.display();
  com2.display();
  com3.display();
  com4.display();
  com5.display();
  com6.display();
}
