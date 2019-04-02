Planet[] planets;
int num_planets = 5;

void setup() {
  size(800, 800);
  planets = new Planet[num_planets];
  for (int i = 0; i < num_planets; i++) {
    PVector position = new PVector(random(0,width), random(0, height));
    float radius = random(40, 80);
    planets[i] = new Planet(position, radius);
  }
  noStroke();
  fill(0,255,255);
}

void draw() {
  background(10);
  for (int i = 0; i < num_planets; i++) {
    planets[i].applyforces();
    planets[i].display();
  }
}

//changes screen configuration of planets
void mousePressed() {
    for(int i = 0; i < num_planets; i++) {
      planets[i].warp();
    }
}
