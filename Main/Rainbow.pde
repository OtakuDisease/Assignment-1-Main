class Rainbow {
  PImage img;
  color c;
  int imageHeight;
  int imageY;

  Rainbow() {
    img = loadImage("rainbow.png"); //loads the image
    imageHeight=height/5;
    imageY=height/18;
    c=color(255); //makes the start color white
  }

  void display() {
    image(img, 0, imageY, width, imageHeight);
    loadPixels();
  }

  void update(float mouseXPos, float mouseYPos) {
    if (mouseYPos<imageHeight+imageY && mouseYPos>imageY) { //if the mouse is in these parameters then:
      int loc = floor(mouseXPos) + (floor(mouseYPos)-1)*width; //gets the location of the pixels
      c = pixels[loc]; //changes the color to the color of the pixel location
    }
  }
}
