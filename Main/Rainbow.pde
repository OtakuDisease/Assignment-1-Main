class Rainbow{
PImage img;
 color c;
 float x, y;


Rainbow(int initX, int initY){
  img = loadImage("rainbow.png");
  //loadPixels();
  //img.loadPixels();
     x = initX;
   y = initY;
}

void display(){
  //image(img,0,height/18,width,height/5);
  //loadPixels();
  //img.loadPixels();

 
c = img.get(int(x),int(y));
  fill (c);
  ellipse(x,y,20,30);
}
}
