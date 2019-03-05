class Two_Spots extends Spot {
  color c;

  
  Two_Spots (float xval, float yval, float rval, Vector t, color c) {
   super(xval, yval, rval, t);
   this.c = c;
 }
 
 void display() {
  fill(c);
  noStroke();
  ellipse (x, y, radius, radius); 
  ellipse (x + radius / 2, y, radius, radius);
 }
  
}
