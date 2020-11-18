//a class to make the ranbow and pick the color underneath the mouse when it is over it
class Rainbow {
  PImage img;
  color c;
  int imageHeight;
  int imageY;
  float mouseXPos;
  float mouseYPos;
  Rainbow() {
    img = loadImage("rainbow.png"); //loads the image
    imageHeight=height/5;
    imageY=height/18;
    c=color(255); //makes the start color white
  }
  //diplay the image
  void display() {
    image(img, 0, imageY, width, imageHeight);
    loadPixels();
  }
  //when the mouse is over the rainbow calculate over which pixel and get the color of that pixel out of the pixel array
  void update(float initMouseXPos, float initMouseYPos) {
    mouseXPos=initMouseXPos;
    mouseYPos=initMouseYPos;
    if (isOverRainbow()) { //if the mouse is in these parameters then:
      int loc = floor(mouseXPos) + (floor(mouseYPos)-1)*width; //gets the location of the pixels
      c = pixels[loc]; //changes the color to the color of the pixel location
    }
  }
  //returns true when the mouse is over the rainbow
  boolean isOverRainbow() {
    boolean isOver=false;
    if (mouseYPos<imageHeight+imageY && mouseYPos>imageY) { //if the mouse is in these parameters then:
      isOver=true;
    }
    return isOver;
  }
}
