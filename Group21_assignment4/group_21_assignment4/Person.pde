class Person {
  color skinColor;
  color shirtColor;
  float x;
  float y;
  float width;
  float height;
  float speed;
  
  Person(float x, float y, float width, float height, color skinColor, color shirtColor) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.skinColor = skinColor;
    this.shirtColor = shirtColor;
    this.speed = 5;
  }
  
  //upper left corner of torso is the reference point for all shapes
  void display() {
    fill(shirtColor);
    rect(x, y, width, height);
    noStroke();
    
    //arms up if jumping, arms to the side if falling
    if(speed == 5) {
    quad(x - 75, y - 50, x + 75, y + 50, x + 37.5, y + 75, x - 100, y);
    quad(x + width + 75, y - 50, x + width - 75, y + 50, x + width - 37.5, y  + 75, x + width + 100, y); 
    }
    if(speed == -5) {
    quad(x - 100, y, x, y, x, y + 50, x - 100, y + 50);
    quad(x + width + 100, y, x + width, y, x + width, y + 50, x + width + 100, y + 50);
    }
    
    fill(skinColor);
    ellipse(x + 75, y - 75, 150, 150);
  }
  
  
  //bounces up and down, emulating cheering
  void move() {
    this.y = y - speed;
    if(y > 700) {
     speed = 5; 
    }
    if(y < 620) {
     speed = -5; 
    }
  }
}
