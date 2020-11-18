class Rainbow{
PImage img;
 int x, y;
color c;
int imageHeight;
int imageY;
Rainbow(){
  img = loadImage("rainbow.png");
   imageHeight=height/5;
   //imageY=height/18;
   imageY=0;
   c=color(200,30,40);
}

void display(){
  image(img,0,imageY,width,imageHeight);
  loadPixels();
  img.loadPixels();
}

void update(int mouseXPos, int mouseYPos){
   
  if(mouseYPos<imageHeight+imageY && mouseYPos>imageY){
 int loc = mouseXPos + mouseYPos*width;
 //c = img.pixels[loc];
  c=get(mouseXPos,mouseYPos);
  println("within picture");
  fill (c);
  ellipse(width/2,height/2,20,30);
  }
}
}
