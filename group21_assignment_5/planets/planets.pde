//planet textures downloaded from https://www.solarsystemscope.com/textures/

PShape sphere;
PImage sunTex;
PImage neptuneTex;
PImage earthTex;
PImage moonTex;
PImage goldTex;

float angle;

Planet bizarro;
Planet sun;
Planet neptune;

void setup() {
  size (1000, 1000, P3D);
  noStroke();
  
  sunTex = loadImage("sun.jpg");
  neptuneTex = loadImage("neptune.jpg");
  earthTex = loadImage("earth.jpg");
  moonTex = loadImage("moon.jpg");
  goldTex = loadImage("gold.jpg");
  
  bizarro = new Planet(300, 300, 75, 0, sunTex, neptuneTex, earthTex, goldTex);
  
  angle = 0;
  textureMode(NORMAL);
  textureWrap(REPEAT);
}

void draw() {
  background(0);
  angle += 0.01;
  
  //sun.display();
  //neptune.display();
  bizarro.display();
  
}
