//https://processing.org/examples/simpleparticlesystem.html
//
class Star {
  PVector acceleration;
  PVector velocity;
  PVector position;
  float mass;
  float increment;
  float angle;
  color c;

  Star(PVector p) {
    position=p.get();
    acceleration =new PVector();
    velocity =new PVector();
    mass = random(.1, 1);
    increment = random(-.0015, .0015);
    angle=0;
    c = color(210,155, 58);
  }

  void activate() {
    move();
    createshape();
  }

  void move() {
    velocity.add(acceleration);
    velocity.limit(5);
    position.add(velocity);
    acceleration.mult(0.12);
  }

  void createshape() {
    fill(c, 200);
    stroke(255);
    strokeWeight(2);

    angle = angle+increment;
    pushMatrix();
    translate(position.x, position.y);
    rotate(degrees(angle));
    beginShape();
    float angle = TWO_PI / 9;
    float halfAngle = angle/2.0;
    for (float a= 0; a < TWO_PI; a+=angle) {
      float sx= 0 + cos(a)*70;
      float sy= 0 + sin(a)*70;
      vertex(sx, sy);
      sx = 0 + cos(a+halfAngle)*30;
      sy = 0 + sin(a+halfAngle)*30;
    vertex(sx, sy);
    }
    endShape(CLOSE);
    popMatrix();
  }

  void putforce(PVector force) {
    PVector pf = PVector.div(force, mass);
    acceleration.add(pf);
  }
  PVector goTo(float x, float y) {
    PVector positionofmouse = new PVector(x, y);
    PVector direction = PVector.sub(positionofmouse, position);
    float distance = direction.mag();
    distance = constrain(distance, 10, 30);
    direction.normalize();
    float combined = (30*mass)/(distance*distance);
    direction.mult(combined);
    return direction;
  }
}
