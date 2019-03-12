PImage texture;

Comet com;
Comet com2;

void setup() {
  //canvas
  size(1000, 1000, P3D);
  noStroke();
  //texture and construct a comet
  texture = loadImage("comet.jpg");
  com = new Comet(250.0, 250.0, 75.0, texture);
  com2 = new Comet(0, 1000, 75, texture);
  
  textureMode(NORMAL);
  textureWrap(REPEAT);
}

void draw() {
  background(0);
  directionalLight(172, 196, 242, -1, 0, 0);
  com.display();
  com2.displayacross();
}
