// Comet global variables
Comet comet;
int cometCount = 3000;
Comet[] comets = new Comet[cometCount];
color globalHue;

// placeholder

// placeholder

void setup() {
 size (800, 800);
 colorMode(HSB, 255);
 reset();
}

void draw() {
 background(10);
 
 // Draw calls for comets
 for(int i = 0; i < 3000; i++) {
  comets[i].move();
  stroke(comets[i].hue, comets[i].bright, 255);
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
