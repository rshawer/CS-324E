class Star {
  PVector acc, vel, pos;
  float mass, incr, ang;
  color c;

  Star(PVector p) {
    pos = p.get();
    acc =  new PVector();
    vel = new PVector();
    mass = random(.2, 2);
    ang = 0;
    incr = random(-.001, .001);
    c = color(random(255), random(255), 0);
  }

  void run() {
    update();
    render();
  }

  void update() {
    vel.add(acc);
    vel.limit(4);
    pos.add(vel);
    acc.mult(0);
  }

  void render() {
    //rectMode(CENTER);
    fill(c, 200);
    stroke(255);
    strokeWeight(1);

    ang += incr;
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(degrees(ang));
    beginShape();
    float angle = TWO_PI / 5;
    float halfAngle = angle/2.0;
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = 0 + cos(a) * 70;
      float sy = 0 + sin(a) * 70;
      vertex(sx, sy);
      sx = 0 + cos(a+halfAngle) * 30;
      sy = 0 + sin(a+halfAngle) * 30;
    vertex(sx, sy);
    }
    endShape(CLOSE);
    popMatrix();
  }

  void putforce(PVector force) {
    PVector f = PVector.div(force, mass);
    acc.add(f);
  }
  // From Daniel Schiffman's NOC_2_7_attraction_many sketch.
  PVector goTo(float x, float y) {
    PVector mousePos = new PVector(x, y);
    PVector dir = PVector.sub(mousePos, pos);
    float dist = dir.mag();
    dist = constrain(dist, 15, 25);
    dir.normalize();
    // combine gravity and attractor_mass as 1 number
    float f = (30*mass)/(dist*dist);
    dir.mult(f);
    return dir;
  }
}
