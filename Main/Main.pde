/* This is assignment 1 of group 5 of Programming & Physical Computing
 by: Marnix Lueb, Daisy Baars, Ysbrand Burgstede and Tristan van Marle*/
String[] lines;
String storeText;
String[] words;
Words[] wordObjects;
PFont font;
void setup(){
  size(800,800);
  sketchPath("/data");
  lines = loadStrings("data/tekst.txt.txt");

  storeText=join(lines," ");
  words= split(storeText," ");

  for(int i=0;i<words.length;i++){
  println(words[i]);
  

  font = loadFont("Calibri-48.vlw");
  textFont(font);
  }

  storeText=join(lines," ");
  words= split(storeText," ");
  int aantalWoorden= words.length;
  wordObjects= new Words[aantalWoorden];
  for(int i=0;i<words.length;i++){
  wordObjects[i]= new Words(words[i]);
  }
}
void draw(){
 text(lines[0], 100,100);
 for(int i = 0; i<= 3; i++){
  text(lines[i], 100,100+10*i);
 }
}

void mouseMoved() {
}
