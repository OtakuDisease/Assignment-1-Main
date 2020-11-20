/* This is assignment 1 and 2 of group 5 of Programming & Physical Computing  //<>//
 by: Marnix Lueb, Daisy Baars, Ysbrand Burgstede and Tristan van Marle
 11-11-2020
 additions: 18/11/2020
 
 Program Description:
 This program is made to show an animated greeding card.
 You will be able to scramble the words in the sentence by pressing the up-arrowkey, give every letter a random size by pressing the down-arrowkey,
 let the words drop when hovering over them and watch hopping sheeps. Click on them to hear them Bleeeeh!
 Give your letter a color by hovering over the rainbow, checking the color-pallete on the sheep and the when your satisfied clicking on the ranbow to make the letters that colorscheme*/

//import the Processing Sound library

import processing.sound.*; 
//Introducing variables
String[] lines;
String storeText;
String[] words;
PFont font;
int totalSentenceLength;
float ourMouseX, ourMouseY;
int amountSheep;

//Reference classes
Words[] wordObjects;
Background background;
Sheep[] sheep;
DrawWords wordsDraw;
SoundFile beeh;
SoundFile buuh;
Rainbow rainbow;
void setup() {
  amountSheep=5;
  background= new Background();
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
  sheep = new Sheep[amountSheep];
  rainbow = new Rainbow();
  //make the sheep
  for (int i=0; i<sheep.length; i++) {
    if (i%2==0) {
      sheep[i]= new Sheep1(i);
    } else {
      sheep[i]= new Sheep2(i);
    }
  }
}

void draw() {
  //display the background and rainbow and which color is underneath the mouse when over the rainbow
  background.display();
  rainbow.display();
  rainbow.update(int(ourMouseX), int(ourMouseY));
  //display and update the sheep
  for (int i=0; i<sheep.length; i++) {
    sheep[i].display();
    sheep[i].update();
    sheep[i].updateColor();
  }//display and update the words
  for (int i=0; i<words.length; i++) {
    wordObjects[i].show();
    wordObjects[i].update(ourMouseX, ourMouseY);
  }
}
//scramble the words randomly in the sentence when the up arrow is pressed
void keyPressed() {
  if (keyCode == UP) {
    wordsDraw.scramble();
  }
  //resize all the letters when the down key is pressed
  if (keyCode == DOWN) {
    for (int i=0; i<wordObjects.length; i++) {
      wordObjects[i].textResize();
    }
  }
}
//update our mouse variables
void mouseMoved() {
  ourMouseX=mouseX;
  ourMouseY=mouseY;
}
//check if the mouseclick was over a sheep to play the sound and update the color of the words to the rainbow color
void mouseClicked() {
  for (int i=0; i<sheep.length; i++) {
    sheep[i].shout(mouseX, mouseY);
  }
  if (rainbow.isOverRainbow()) {
    for (int i=0; i<wordObjects.length; i++) {
      wordObjects[i].updateColor();
    }
  }
}
