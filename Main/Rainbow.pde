class Rainbow{
PImage img;
 int x, y;


Rainbow(){
  img = loadImage("rainbow.png");
  //loadPixels();
  //img.loadPixels();
  x = 10;
  y= 20;

   
}

void display(){
  image(img,0,height/18,width,height/5);
  //loadPixels();
  //img.loadPixels();
  int loc = x + y*5000;

 color c = img.pixels[loc];

  fill (c);
  ellipse(x,y,20,30);
}
}
