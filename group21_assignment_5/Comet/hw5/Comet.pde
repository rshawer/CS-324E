class Comet {
  float x;
  float y;
  float r;
  float angle = 0;
  PShape comet;
  PImage tex;
  
  Comet(float x, float y, float r, PImage texture) {
    this.x = x;
    this.y = y;
    this.comet = createShape(SPHERE, r);
    comet.setTexture(texture);
  }
  
  void display() {
    x += 2;
    angle += 0.01;
    
    if (x > 1000) {
      x = 0;
    }
    pushMatrix();
    translate(x, y, 0);
    rotateY(angle);
    shape(comet);
    popMatrix();
  }
  
  void displayacross() {
    x += 2;
    y += 2;
    angle += 0.01;
    
    if (x > 1000) {
      x = 0;
    }
    if (y > 1000) {
      y = 0;
    }
    pushMatrix();
    translate(x, y, 0);
    rotateY(angle);
    rotateX(angle);
    shape(comet);
    popMatrix();
  }
    
}
