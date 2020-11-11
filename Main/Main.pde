/* This is assignment 1 of group 5 of Programming & Physical Computing //<>//
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
int totalSentenceLength;
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
  wordObjects= new Words[words.length];
  drawSentence();
  sheep = new Sheep[2];
  sheep[0] = new Sheep(0);
  sheep[1] = new Sheep(width/2);
}
void draw() {
  background.display();
  for (int i=0; i<sheep.length; i++) {
    sheep[i].display();
    sheep[i].update();
  }
  for (int i=0; i<words.length; i++) {
    wordObjects[i].update(mouseX, mouseY);
  }
}

void drawSentence() {
  //Creating new objects
  background= new Background();
  wordObjects[0]= new Words(words[0], 100, 200);
  for (int i=1; i<wordObjects.length; i++) {
    wordObjects[i]= new Words(words[i], wordObjects[i-1].x+10, wordObjects[i-1].y);
    totalSentenceLength+=wordObjects[i].wordWidth;
  }
}
void keyPressed() {
  scramble();
}

void scramble() {
  //copy the wordObjects array to an arraylist
  ArrayList<Words> newWords = new ArrayList<Words>();
  for (int i=0; i<words.length; i++) {
    newWords.add(wordObjects[i]);
  }

  for (int i=0; i<words.length; i++) {
    //take a random index and therefore word from the new arraylist and assign it to the words array
    int randomIndex= int(random(0, newWords.size()-1));
    Words randomWord = newWords.get(randomIndex);
    words[i]=randomWord.word;
    //remove the word from the list of possible words to be picked next
    newWords.remove(randomIndex);
  }
  //redraw the words on screen accorsing to the new arrangement from words[]
  drawSentence();
}
