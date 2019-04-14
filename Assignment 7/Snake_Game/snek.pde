class Snake {
 boolean Right;
 boolean Left;
 boolean Up;
 boolean Down;
 int x;
 int y;
 int cells;
 int preMillis;
 boolean IM;
 int Cell_Width;
 int Cell_Height;
 int w;
 
 Snake(int x, int y) {
  this.x = x;
  this.y = y;
  this.cells = 1;
  this.Right = false;
  this.Left = false;
  this.Up = false;
  this.Down = false;
  this.IM = false;
  this.Cell_Width = 12;
  this.Cell_Height = 12;
  this.w = 10;
 }
 
 void Clear() {
  Right = false;
  Left = false;
  Up = false;
  Down = false;
 }
 
 void keyPressed() {
   
  if(keyCode == RIGHT && Left == false) {
   if(!Left || cells == 1) {
     Down = false;
     Left = false;
     Up = false;
     Right = true;
   }
  }
  
  if(keyCode == LEFT && Right == false) {
   if(!Left || cells == 1) {
     Down = false;
     Up = false;
     Right = false;
     Left = true;
   }
  }
  
  if(keyCode == UP && Down == false) {
   if(!Left || cells == 1) {
     Down = false;
     Left = false;
     Right = false;
     Up = true;
   }
  }
  
  if(keyCode == DOWN && Up == false) {
   if(!Left || cells == 1) {
     Up = false;
     Left = false;
     Right = false;
     Down = true;
   }
  }
  
  if(key == ' '){
    x = 0;
    y = 0;
    preMillis = 0;
    Clear();
  }
 }
 
 boolean illegal_move() {
   if(x < 0 || x > Cell_Width - 1 || y < 0 || y > Cell_Height - 1) {
     return true;
   }
   return false;
 }
 
 void display() {
  fill(0, 255, 0);
  noStroke();
  rect(x, y, 10, 10);
 }
 
 void move(){
  if(Right == true) {
   x += 4; 
  }
  if(Left == true) {
   x -= 4; 
  }
  if(Up == true) {
   y -= 4; 
  }
  if(Down == true) {
   y += 4; 
  }
 }
}
