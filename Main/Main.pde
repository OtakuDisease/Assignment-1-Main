/* This is assignment 1 of group 5 of Programming & Physical Computing
by: Marnix Lueb, Daisy Baars, Ysbrand Burgstede and Tristan van Marle*/

String[] lines;
String storeText;
String[] words;
Words[] wordObjects;
void setup(){
  size(800,800);
  sketchPath("/data");
  lines = loadStrings("data/tekst.txt.txt");
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
}

void mouseMoved(){

}
