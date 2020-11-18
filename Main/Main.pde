import processing.sound.*;  //<>//
/* This is assignment 1 of group 5 of Programming & Physical Computing 
 by: Marnix Lueb, Daisy Baars, Ysbrand Burgstede and Tristan van Marle
 11-11-2020
 
 Program Description:
 This program is made to show an animated greeding card.
 You will be able to scramble the words in the sentence by pressing the up-arrowkey, give every letter a random size by pressing the down-arrowkey,
 let the words drop when hovering over them and watch hopping sheeps.*/

//Introducing variables
String[] lines;
String storeText;
String[] words;
PFont font;
int totalSentenceLength;
float ourMouseX, ourMouseY;


//Reference classes
Words[] wordObjects;
Background background;
Sheep[] sheep;
DrawWords wordsDraw;
SoundFile beeh;
SoundFile buuh;
Rainbow rainbow;
void setup() {
  beeh = new SoundFile(this, "Sheep-Lamb-Bah.mp3");
  buuh = new SoundFile(this, "Buuh.mp3");
  //Sketch settings
  wordsDraw= new DrawWords(); 
  size(800, 800);
  font = loadFont("Calibri-48.vlw");
  textFont(font);
  sketchPath("/data");
  lines = loadStrings("data/tekst.txt.txt");
  storeText=join(lines, " ");
  words= split(storeText, " ");
  wordsDraw.drawSentence();
  sheep = new Sheep[2];
  rainbow = new Rainbow();

  for (int i=0; i<sheep.length; i++) {
    sheep[0]= new Sheep1(i);
    sheep[1]= new Sheep2(i);
  }
  background= new Background();
}

void draw() {
  background.display();
  rainbow.display();
  rainbow.update(int(ourMouseX), int(ourMouseY));
  for (int i=0; i<sheep.length; i++) {
    sheep[i].display();
    sheep[i].update();
    sheep[i].updateColor();
  }
  for (int i=0; i<words.length; i++) {
    wordObjects[i].show();
    wordObjects[i].update(ourMouseX, ourMouseY);
  }
}

void keyPressed() {
  if (keyCode == UP) {
    wordsDraw.scramble();
  }
  if (keyCode == DOWN) {
    for (int i=0; i<wordObjects.length; i++) {
      wordObjects[i].textResize();
    }
  }
}

void mouseMoved() {
  ourMouseX=mouseX;
  ourMouseY=mouseY;
}

void mouseClicked() {
  for (int i=0; i<sheep.length; i++) {
    sheep[0].shout(mouseX, mouseY);
    sheep[1].shout(mouseX, mouseY);
  }
  for (int i=0; i<wordObjects.length; i++) {
    wordObjects[i].updateColor();
  }
}
