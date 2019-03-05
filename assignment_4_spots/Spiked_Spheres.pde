class SpikedSpheres extends ColoredSpot{
  color spikecolor;
  String time;
  
  
  SpikedSpheres(float xval, float yval, float rval, Vector t, color c, color spikecolor){
    super(xval, yval, rval, t, c);
    this.spikecolor = spikecolor;
    //this.time = time;
    
    
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
     pushMatrix();
     fill(spikecolor);
     //pushMatrix();
     //translate(width,height);
     //rotate(frameCount/400);\
     //star(x,y, 60, 140, 5);
     //if(time=="night"){
      // scale(1);
     //}
     //if(time=="day"){
       //scale(0.5);
     //}
     translate(width/12, height/12);   // Move coordinate system to center of sketch
 
     rotate(millis() * 0.0001 * TWO_PI / 10.0);   // Move 360 degrees in ten second
    
     translate(80, 0); // Move away from the center
    
     rotate(millis() * 0.0001 * TWO_PI); 
     star(x,y, 60, 140, 5);
     //pushMatrix();
     fill(c);
     ellipse (x, y, radius, radius); 
     popMatrix();
     //scale(1);
  
  }
  
  void move() {
    //rotate(radians(45));
   super.move();
   //rotate(radians(45));
   
 }

  
}
  
  
  
  
  
  
  
  
