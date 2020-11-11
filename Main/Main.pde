/* This is assignment 1 of group 5 of Programming & Physical Computing
by: Marnix Lueb, Daisy Baars, Ysbrand Burgstede and Tristan van Marle*/

String[] lines;
char c;
String storeText;
String[] words;
Words[] wordObjects;
PFont font;
void setup(){
  size(800,800);
  sketchPath("/data");
  lines = loadStrings("data/tekst.txt.txt");
  c = lines[0].charAt(8);
  storeText=join(lines," ");
  words= split(storeText," ");
  c = lines[0].charAt(3);
  for(int i=0;i<words.length;i++){
  println(words[i]);
  

  font = loadFont("Calibri-48.vlw");
  textFont(font);
  }

  storeText=join(lines," ");
  words= split(storeText," ");
  for(int i=0;i<words.length;i++){
  wordObjects[i]= new Words(words[i]);
  }
  c = lines[0].charAt(3);
}
void draw(){
 text(lines[0], 100,100);
}

void mouseMoved(){

}
