PShape sphere;
PImage sunTex;
PImage mercuryTex;
PShape sun;
PShape mercury;
float angle;

void setup() {
  size (500, 500, P3D);
  noStroke();
  sunTex = loadImage("sun.jpg");
  mercuryTex = loadImage("mercury.jpg");
  sun = createShape(SPHERE, 50);
  mercury = createShape(SPHERE, 60);
  sun.setTexture(sunTex);
  mercury.setTexture(mercuryTex);
  angle = 0;
  textureMode(NORMAL);
  textureWrap(REPEAT);
}

void draw() {
  background(0);
  translate(100, 200, 0);
  rotateY(angle);
  angle += 0.01;
  shape(sun);
  shape(mercury, 200, 200);
}
