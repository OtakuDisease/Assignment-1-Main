/* This is assignment 1 of group 5 of Programming & Physical Computing
 by: Marnix Lueb, Daisy Baars, Ysbrand Burgstede and Tristan van Marle
 11-11-2020
 
 Program Description:
 This program is made to show an animated greeding card.
 You will be able to scroll through the letters, let the letters drop when hovering over them and watch hopping sheeps.*/

//Introducing variables
String[] lines;
String storeText;
String[] words;
PFont font;

//Reference classes
Words[] wordObjects;
Background background;
Sheep[] sheep;

void setup() {
  //Sketch settings
  size(800, 800);
  font = loadFont("Calibri-48.vlw");
  textFont(font);
  sketchPath("/data");
  lines = loadStrings("data/tekst.txt.txt");
  storeText=join(lines, " ");
  words= split(storeText, " ");

  //Creating new objects
  wordObjects= new Words[words.length];
  background= new Background();
  wordObjects[0]= new Words(words[0], 50, 100);
  for (int i=1; i<wordObjects.length; i++) {
    wordObjects[i]= new Words(words[i], wordObjects[i-1].x+10, wordObjects[i-1].y);
  }
  sheep = new Sheep[2];
  sheep[0] = new Sheep();
  sheep[1] = new Sheep();
}
void draw() {
  background.display();
  sheep[0].display();
  sheep[0].update(); 
  sheep[1].display();
  sheep[1].update();
  for (int i=0; i<words.length; i++) {
    wordObjects[i].update(mouseX, mouseY);
  }
}
void mouseMoved() {
  
}
