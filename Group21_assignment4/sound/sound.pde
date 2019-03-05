//right above the setup function, add the following code
import processing.sound.*;
  
SoundFile file;
//replace the sample.mp3 with your audio file name here
String audioName = "bensound-funkyelement.mp3";
String path;

//runs once when the app first starts
void setup() {
  path = sketchPath(audioName);
  file = new SoundFile(this, path);
  file.play();
}

void draw() {
}
