Spot a;
Spot b;
ColoredSpot c;
ColoredSpot d;
Two_Spots e;
Two_Spots f;
Person guy1;
Person guy2;
Person guy3;


void setup () {
  
 size (1200, 800);
 frameRate(30);
 
 // Vectors for objects
 Vector A = new Vector(10, 10, 5);
 Vector B = new Vector(-10, -10, 4);
 Vector C = new Vector(-10, 10, 3);
 Vector D = new Vector(10, -10, 2);
 Vector E = new Vector(0, 10, 5);
 Vector F = new Vector(5, 10, 3);
 
 // Spot Initializations
 a = new Spot(0, 0, 100, A);
 b = new Spot(500, 500, 100, B);
 c = new ColoredSpot(500, 0, 100, C, color (255, 0, 0));
 d = new ColoredSpot(0, 500, 100, D, color (0, 255, 0));
 e = new Two_Spots(225, 0, 100, E, color(12, 12, 255));
 f = new Two_Spots(200, 100, 100, F, color(12, 255, 12));
 
 
 //Crowd
 guy1 = new Person(125, 600, 150, 200, color(255, 181, 132), color(7, 255, 139));
 guy2 = new Person(525, 700, 150, 200, color(255, 224, 175), color(255, 255, 255));
 guy3 = new Person(925, 600, 150, 200, color(188, 117, 3), color(0, 49, 247));
 
}

void draw() {
  
 clear();
 fill(255);
 
 //a.display();
 //b.display();
 c.display();
 d.display();
 //e.display();
 //f.display();
 
 //crowd 
 guy1.display();
 guy1.move();
 guy2.display();
 guy2.move();
 guy3.display();
 guy3.move();
 
 
 noFill();
 //a.move();
 //b.move();
 c.move();
 d.move();
 //e.move();
 //f.move();
}
