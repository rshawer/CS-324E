class Planet {
  PVector pos, v, a;
  float r, m, inc, ang;
  color c;
  int dir_x = 1;
  int dir_y = 1;
  float k = .7;
  
  Planet(PVector p, float radius) {
    pos = p.get();
    r = radius;
    c = color(random(255), random(255), random(255));
    m = random(.2,2);
    v = new PVector();
    a = new PVector();
    //ang =  0;
    //inc = random(-.001, .001);
  }
  
  void display()  {
    if (pos.x > width) {
      dir_x = 0;
    }
    if (pos.x < 0) {
      dir_x = 1;
    }
    if (pos.y > height) {
      dir_y = 0;
    }
    if (pos.y < 0) {
      dir_y = 1;
    }
    
    if (dir_x == 1) {
      pos.x += 2;
    }
    if (dir_x == 0) {
      pos.x -= 2;
    }
    
    if (dir_y == 1) {
      pos.y += 2;
    }
    if (dir_y == 0) {
      pos.y -= 2;
    }
    
    fill(c);
    ellipse(pos.x, pos.y, r, r);
  }
  
  void applyforces() {
    v.add(a);
    v.limit(4);
    pos.add(v);
    a.mult(0);
  }
  //warps the planets to a different location on the screen
  //and changes its color
  void warp() {
    pos.x = random(0, width);
    pos.y = random(0, height);
    c = color(random(255), random(255), random(255));
  }
}
