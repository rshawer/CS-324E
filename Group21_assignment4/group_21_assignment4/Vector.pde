class Vector {
 float x, y;
 float magnitude;
 
 Vector( float x, float y, float magnitude) {
  this.x = x;
  this.y = y;
  this.magnitude = magnitude;
 }
 
 float dot(Vector a) {
   return this.x * (a.x) + this.y * (a.y);
 }
 
}
