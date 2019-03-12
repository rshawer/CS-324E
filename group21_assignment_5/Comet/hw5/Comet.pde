//Comet class takes the following input
//center is x and y
//radius r
//texture
//directions of movement posx, posy

class Comet {
  float x;
  float y;
  float r;
  float angle = 0;
  PShape comet;
  PImage tex;
  int posx = 1;
  int posy = 1;
  
  Comet(float x, float y, float r, PImage texture, int posx, int posy) {
    this.x = x;
    this.y = y;
    this.comet = createShape(SPHERE, r);
    this.posx = posx;
    this.posy = posy;
    comet.setTexture(texture);
  }
  
  void display() {
    
    if (x > 1000) {
      posx = 0;
    }
    if (x < 0) {
      posx = 1;
    }
    if (y > 1000) {
      posy = 0;
    }
    if (y < 0) {
      posy = 1;
    }
    
    if (posx == 1) {
      x += 2;
    }
    if (posx == 0) {
      x = x - 2;
    }
    
    if (posy == 1) {
      y += 2;
    }
    if (posy == 0) {
      y = y - 2;
    }
    
    angle += 0.01;
    
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
