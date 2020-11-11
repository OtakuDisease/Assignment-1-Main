/* This is assignment 1 of group 5 of Programming & Physical Computing
by: Marnix Lueb, Daisy Baars, Ysbrand Burgstede and Tristan van Marle*/

String[] lines;
char c;
String storeText;
String[] words;
Words[] wordObjects;
void setup(){
  size(800,800);
  sketchPath("/data");
  lines = loadStrings("data/tekst.txt.txt");
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
