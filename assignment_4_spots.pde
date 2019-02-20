Spot a;
Spot b;
ColoredSpot c;
ColoredSpot d;
Two_Spots e;

void setup () {
  
 size (500, 500);
 frameRate(30);
 
 // Vectors
 Vector A = new Vector(10, 10, 5);
 Vector B = new Vector(-10, -10, 4);
 Vector C = new Vector(-10, 10, 3);
 Vector D = new Vector(10, -10, 2);
 Vector E = new Vector(0, 10, 5);
 
 // Spot Initializations
 a = new Spot(0, 0, 100, A);
 b = new Spot(500, 500, 100, B);
 c = new ColoredSpot(500, 0, 100, C, color (255, 0, 0));
 d = new ColoredSpot(0, 500, 100, D, color (0, 255, 0));
 e = new Two_Spots(225, 0, 100, E, color(12, 12, 255));
 
}

void draw() {
  
 clear();
 fill(255);
 
 a.display();
 b.display();
 c.display();
 d.display();
 e.display();
 
 noFill();
 a.move();
 b.move();
 c.move();
 d.move();
 e.move();
}
