class Spot {
 float x, y, radius, speed, directionx, directiony;
 Vector t;
 
 Spot(float xval, float yval, float rval, Vector t) {
   this.x = xval;
   this.y = yval;
   this.radius = rval;
   this.speed = t.magnitude;
   this.directionx = t.x;
   this.directiony = t.y;
 }
 
 void display() {
  ellipse (x, y, radius, radius); 
 }
 
 void setSpeed(float s) {
   this.speed = s;
 }
 
 void move() {
   this.x = x + (speed * directionx);
   this.y = y + (speed * directiony);
   
   if(this.x > 1200) {
    this.directionx = directionx * -1; 
   }
   
   if(this.y > 500) {
    this.directiony = directiony * -1; 
   }
   
   if(this.y < 0) {
    this.directiony = directiony * -1; 
   }
  
   if(this.x < 0) {
    this.directionx = directionx * -1; 
   }
 }
}
