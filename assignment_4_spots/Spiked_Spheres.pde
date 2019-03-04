class SpikedSpheres extends ColoredSpot{
  color spikecolor;
  
  
  SpikedSpheres(float xval, float yval, float rval, Vector t, color c, color spikecolor){
    super(xval, yval, rval, t, c);
    this.spikecolor = spikecolor;
    
    
  }
  void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
  }
  void display(){
     
     fill(spikecolor);
     //pushMatrix();
     //translate(width,height);
     //rotate(frameCount/400);
     star(x,y, 60, 140, 5);
     //popMatrix();
     fill(c);
     ellipse (x, y, radius, radius); 
     
  
  }
  
  void move() {
   super.move();
   rotate(PI / 2);
 }
  
}
  
  
  
  
  
  
  
  
