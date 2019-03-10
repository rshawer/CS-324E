class SunFlower{
  color suncolor;
  float x;
  float y;
  float z;
  float speed;
  float size;
  PShape s= loadShape("rose.obj");
  
  
  SunFlower(float x, float y, float z, float speed, float size, color suncolor){
    this.x=x;
    this.y=y;
    this.z=z;
    this.speed=10;
    this.suncolor=suncolor;
    this.size=size;
    //this.s= s;
    
  }
  void display(){
    float t = frameCount * 0.01;
    float thalf = t * 0.5;
    float t2 = t * 2.0;
    //float t3 = t * 3.0;
    //fill(suncolor);
    pushMatrix();
    translate(x,y,z);
    rotateX(thalf); rotateY(-t2); rotateZ(t); 
    scale(50.0);
    fill(0xffff7f00); 
    box(1.0);
    popMatrix();
   
  }
  
}
  

  
  
  
  
  
  
  
  
  
  
  
  
