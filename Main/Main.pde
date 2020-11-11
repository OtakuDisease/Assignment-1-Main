/* This is assignment 1 of group 5 of Programming & Physical Computing
by: Marnix Lueb, Daisy Baars, Ysbrand Burgstede and Tristan van Marle*/

String[] lines;
void setup(){
  size(800,800);
  sketchPath("/data");
  lines = loadStrings("data/tekst.txt");
  
}
void draw(){
 text(lines[0], 100,100);
 rect(100,100,100,100);
}

void mouseMoved(){

}
