// Comet global variables
float max_vel = 15.0;
float max_accel = 0.5;
Comet comet;
int cometCount = 3000;
Comet[] comets = new Comet[cometCount];
color globalHue;
Star[] stars;

// placeholder

// placeholder

void setup() {
 size (800, 800);
 colorMode(HSB, 255);
 sphereDetail(16);
 stars = new Star[20];
 for(int i = 0; i < 20; i++){
    PVector s = new PVector(random(0, width), random(0, height));
    stars[i] = new Star(s);
 }
 noStroke();
 fill(0,255,255);
 reset();
}

void draw() {
 background(10);
 lights();
 for (int i = 0; i < 20; i++) {
    stars[i].putforce(stars[i].goTo(mouseX, mouseY));
    stars[i].activate();
  }
 // Draw calls for comets
 for(int i = 0; i < 3000; i++) {
  comets[i].move();
  stroke(random(0, 255), random(0, 255), 255);
  //Vector shift
  PVector newPos = comets[i].pos.copy();
  newPos.sub(comets[i].lastPos);
  newPos.mult(15);
  newPos.add(comets[i].pos);
  
  line(newPos.x, newPos.y, comets[i].pos.x, comets[i].pos.y);
  circle(newPos.x, newPos.y, 2);
 }
 
 // placeholder
 
 // placeholder
 
}

void mouseClicked() {
 reset(); 
}

// Resets comet animiation
void reset() {
 globalHue = int(random(255));
 
 for(int i = 0; i < 3000; i++) {
  comets[i] = new Comet(random(width), random(height)); 
 }
 
 // Mouse Delay
 mouseX = -9999;
 mouseY = -9999;
 
 background(10);
 
}
