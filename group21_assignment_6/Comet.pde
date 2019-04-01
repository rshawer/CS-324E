public class Comet {
  PVector lastPos;
  PVector pos;
  PVector vel;
  PVector acc;
  PVector drag;
  color hue;
  color bright;
  
  //initialize
  Comet(float x, float y) {
    this.lastPos = new PVector (x,y);
    this.pos = new PVector(x,y);
    this.vel = new PVector(0, 0);
    this.vel.mult(random(0.1));
    this.acc = new PVector(0, 0);
    this.drag = new PVector(0.98, .99);
    this.hue = int(random(-40, 40) % 255); 
  }
  
  //movement function
  void move() {
   this.lastPos.x = this.pos.x;
   this.lastPos.y = this.pos.y;
   
   // add air drag
   this.vel.mult(this.drag.x);
   
   // push away from mouse
   float mouseDist = dist(this.pos.x, this.pos.y, mouseX, mouseY);
   float mouseThresh = 300;
   
   float mult = 0.001;
   if(mousePressed && mouseButton == CENTER) {
    mult *= -1; 
   }
   
   //normalize mouse push effect
   if(mouseDist < mouseThresh) {
     PVector push = new PVector(this.pos.x, this.pos.y);
     push.sub(new PVector(mouseX, mouseY));
     push.normalize();
     push.mult((mouseThresh - mouseDist) * mult);
     this.acc.add(push);
   }
   
   //Move comet
   this.vel.add(this.acc);
   this.vel.limit(6);
   this.pos.add(this.vel);
   this.acc.mult(0);
   
   //Checks borders
   if(this.pos.x < 0) {
    this.pos.x = width;
    this.lastPos.x = width;
   }
   else if(this.pos.x > width) {
    this.pos.x = 0;
    this.lastPos.x = 0;
   }
   
   if(this.pos.y < 0) {
    this.pos.y = height;
    this.lastPos.y = height;
   }
    else if(this.pos.y > height) {
     this.pos.y = 0;
     this.lastPos.y = 0;
    }
   }
   
  }
