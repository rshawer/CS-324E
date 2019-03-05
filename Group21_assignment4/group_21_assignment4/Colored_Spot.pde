class ColoredSpot extends Spot {
  color c;
  
  ColoredSpot (float xval, float yval, float rval, Vector t, color c) {
   super(xval, yval, rval, t);
   this.c = c;
 }
 
 void display() {
  fill(c);
  ellipse (x, y, radius, radius); 
  fill(255);
  triangle(x, (y - (radius / 2)), x - (radius / 3.14), (y + (radius / 3.14)), x + (radius / 3.14), (y + (radius / 3.14)));
 }
 
 //added rotation functionality
 void move() {
   super.move();
   rotate(PI / 2);
 }
}
