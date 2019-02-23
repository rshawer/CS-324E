class ColoredSpot extends Spot {
  color c;
  
  ColoredSpot (float xval, float yval, float rval, Vector t, color c) {
   super(xval, yval, rval, t);
   this.c = c;
 }
 
 void display() {
  fill(c);
  ellipse (x, y, radius, radius); 
 }
  
}
