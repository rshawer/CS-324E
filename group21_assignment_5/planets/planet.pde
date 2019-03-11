class Planet {
  PImage texture;
  PImage moonTexture;
  PImage moonTexture2;
  PImage moonTexture3;
  float x;
  float y;
  float r;
  float height;
  float angle = 1;
  PShape planet;
  PShape moon1;
  PShape moon2;
  PShape moon3;
  
  Planet(float x, float y, float r, float speed, PImage planetTexture, PImage moonTexture, PImage moonTexture2, PImage moonTexture3) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.texture = planetTexture;
    this.moonTexture = moonTexture;
    this.angle = speed;
    this.planet = createShape(SPHERE, r);
    this.moon1 = createShape(SPHERE, r / 6);
    this.moon2 = createShape(SPHERE, r / 4);
    this.moon3 = createShape(SPHERE, r / 3);
    planet.setTexture(texture);
    moon1.setTexture(moonTexture);
    moon2.setTexture(moonTexture2);
    moon3.setTexture(moonTexture3);
  }
  
  void display() {
    angle += .01;
    
    pushMatrix();
    translate(x, y, 0);
    rotateY(angle);
    shape(planet);
    popMatrix();
    
    pushMatrix();
    translate(x, y, 0);
    rotateX(angle);
    rotateY(angle);
    translate(r, r, 0);
    shape(moon1);    
    popMatrix();
    
        
    pushMatrix();
    translate(x, y, 0);
    rotateX(angle);
    rotateY(angle);
    translate(-r * 1.25, -r * 1.25, 0);
    shape(moon2);  
    popMatrix();
    
    pushMatrix();
    translate(x, y, 0);
    rotateY(angle);
    translate(r * 1.75, 0, 0);
    shape(moon3);  
    popMatrix();
    
    
    
  }
}
