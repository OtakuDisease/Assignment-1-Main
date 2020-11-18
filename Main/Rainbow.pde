class Rainbow{
PImage img;
 int x, y;
color c;

Rainbow(){
  img = loadImage("rainbow.png");
   
}

void display(){
  image(img,0,height/18,width,height/5);
  loadPixels();
  img.loadPixels();
  
}

void update(float mouseXPos, float mouseYPos){
  if(mouseYPos<height/5 && mouseYPos >height/18){
 float loc = mouseXPos + mouseYPos*width-height/18;
  c = img.pixels[int(loc)];
   fill (c);
  ellipse(200,100,20,30);
  println(mouseXPos,mouseYPos);
  }
}
}
