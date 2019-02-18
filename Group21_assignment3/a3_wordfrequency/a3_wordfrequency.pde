import java.util.Random;

String[] lines;
int numWords;
int largestFrequency;
String[] values;
color[] colorPallete = {#f42424,#1e65ff, #28ff50, #ff16dc, #e7f21d};


void setup(){
 size(700, 600);
 lines = loadStrings("wordfrequency.txt");
 numWords = lines.length;
 background(255);
 fill();
}

void draw(){
  
}

void fill() {
 //stores largest frequency value
 values = lines[0].split(": ");
 largestFrequency = Integer.parseInt(values[1]);
 
 //scales x value for rectangle
 float ratioX = largestFrequency / 700.0;
 int ratioY = 600 / numWords;
 
 for(int k = 0; k < numWords; k++) {
   values = lines[k].split(": ");
   float width = Integer.parseInt(values[1]);
   float height = Integer.parseInt(values[0]);
   width = width / ratioX;
   fill(colorPallete[(k % 4)]);
   rect(350 - (width/2), 600 - ((k+1) * ratioY), width, ratioY);
 }
}
