class Saturn{
  color SaturnColor;
  color RingColor;
  color RingColor2;
  float Weight;
  float Size;
  float x;
  float y;
  
  Saturn( color SaturnColor, color RingColor, color RingColor2, float Weight, float Size, float x, float y){
    
    this.SaturnColor=SaturnColor;
    this.RingColor=RingColor;
    this.RingColor2=RingColor2;
    this.Weight=Weight;
    this.Size=Size;
    this.x=x;
    this.y=y;
  }
  
  void display(){
    
    pushMatrix();
    translate(x,y);
    fill(SaturnColor);
    stroke(0);
    strokeWeight(1);
    rotateY(radians(frameCount)*1.25);
    sphere(Size);
    popMatrix();
 
    
    pushMatrix();
    translate(x, y);
    stroke(RingColor);
    strokeWeight(Weight);
    noFill();
    rotateX(HALF_PI-.3);
    rotateY(radians(frameCount)*1.25);
    ellipse(0,0,240,240);
    popMatrix();
    
    pushMatrix();
    translate(x, y);
    stroke(RingColor2);
    strokeWeight(Weight);
    noFill();
    rotateX(HALF_PI-.25);
    rotateY(-radians(frameCount)*1.25);
    ellipse(0,0,360,360);
    popMatrix();
    
  }
  
  
}
