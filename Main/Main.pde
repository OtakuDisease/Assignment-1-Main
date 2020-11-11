/* This is assignment 1 of group 5 of Programming & Physical Computing
 by: Marnix Lueb, Daisy Baars, Ysbrand Burgstede and Tristan van Marle*/
String[] lines;
String storeText;
String[] words;
Words[] wordObjects;
Background background;
Sheep sheep;
PFont font;
void setup() {
  size(800, 800);
  font = loadFont("Calibri-48.vlw");
  textFont(font);
  sketchPath("/data");
  lines = loadStrings("data/tekst.txt.txt");
  storeText=join(lines, " ");
  words= split(storeText, " ");
  int aantalWoorden= words.length;
  wordObjects= new Words[aantalWoorden];
  background= new Background();
  sheep = new Sheep();
  for (int i=0; i<words.length; i++) {
    wordObjects[i]= new Words(words[i], 100,100);
  }
}
void draw() {
  background.display();
  sheep.display();
  sheep.update();
  for (int i=0; i<words.length; i++) {
    wordObjects[i].update();
  }
}

void mouseMoved() {
}
