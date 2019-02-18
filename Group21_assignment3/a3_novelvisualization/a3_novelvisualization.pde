import java.util.Random;

//these colors were chosen from a novel cover for Sherlock Holmes
color[] colorPallete = {#D39367,#43110A, #99865E};
PFont theFont;
int cur_x = 0;
int cur_y= 64;
int y_inc = 64;
int max_x = 700;
int max_y = 600;
String[] lines;
int numWords;
int wordSpace = 20;
boolean pageFilled = false;

void setup(){
  size(700, 600);
  lines = loadStrings("uniquewords.txt");
  numWords = lines.length;
  theFont = createFont("Old English Text MT", y_inc);
  textFont(theFont);
  background(240);
}

void draw(){
  fillPage();
}

void mouseClicked(){
  background(240);
  pageFilled = false;
  cur_x = 0;
  cur_y= 64;
  fillPage();
}

float wordSize(String word){
  //String[] wordarray = array(word);
  int wordWidth = 0;
  for(int i = 0; i<word.length(); i++){
    char c = word.charAt(i);
    wordWidth += textWidth(c);
  }
  wordWidth += wordSpace;
  return wordWidth;
}

color pickColor(String word){
  if(word.charAt(0) < 'h'){
    return colorPallete[0];
    //color c = colorPallete[0];
  }
  else if(word.charAt(0) > 'h' && word.charAt(0) < 'q'){
    return colorPallete[1];
    //color c = colorPallete[1];
  }
  else{
    return colorPallete[2];
     //color c = colorPallete[2];
   }
   //return c;
}

void fillPage(){
  while(!pageFilled){
    Random rand = new Random();
    int n = rand.nextInt(numWords);
    String curWord = (lines[n]);
    fill(pickColor(curWord));
    float lenWord = wordSize(curWord);
    if(lenWord > max_x - cur_x){
      cur_x = 0;
      cur_y += y_inc;
    }
    if(cur_y > max_y){
      pageFilled = true;
    }
    if(!pageFilled){
      text(curWord, cur_x, cur_y);
      cur_x += lenWord + wordSpace;
    }
  }   
}


     
