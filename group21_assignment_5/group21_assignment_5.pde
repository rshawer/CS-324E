SunFlower flower1;




void setup(){
  
  size(1000,1000,P3D);
  //frameRate(30);
  noStroke();
  flower1 = new SunFlower(500,500,150,10,100,color(90,58,150));
}

void draw(){
   background(0xffffffff);
  //directionalLight(255, 255, 255, 0.0, 0.6, -0.8);

  flower1.display();
}
