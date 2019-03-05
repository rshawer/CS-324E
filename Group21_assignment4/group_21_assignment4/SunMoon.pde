class SunMoon {
  float x, y, r, speed;
  String time;
  
  SunMoon(float xx, float yy, float rr, float s, String t) {
    this.x = xx;
    this.y = yy;
    this.r = rr;
    this.speed = s;
    this.time = t;
  }
  
  void display() {
    if (time == "day") {
      fill(250, 246, 114);
      ellipse(this.x, y, r*2, 2*r);
    }
    else {
      fill(195, 202, 203);
      ellipse(this.x, y, r*2, 2*r);
    }
  }
  
  void move() {
   this.x = x + speed;
   if (this.x >= 1200) {
     this.x = 0;
     if (this.time == "day") {
       this.time = "night";
     }
     else {
       this.time = "day";
     }
   }
  }
}
