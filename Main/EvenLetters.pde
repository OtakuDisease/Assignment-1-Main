//subclass EvenLetters of super Letters.
//In here the rotation of the even letters and their coloring is handled.
class UnevenLetters extends Letters {
  color myColor;
  //call the constructor of letters
  UnevenLetters(char initC, float initLetterX, float initLetterY, int initMyColor) {
    super(initC, initLetterX, initLetterY);
    myColor=initMyColor;
  }
  //draw the letters in the right spot and when rotate them to their degree
  void display() {
    pushMatrix();
    float middleX=letterX+(textWidth(c)/2);
    float middleY=letterY-(textWidth(c)/3);
    translate(middleX, middleY); 
    rotate(radians(degrees));
    fill(myColor); // makes the letters rainbow
    textSize(mySize);
    text(c, 0-(textWidth(c)/2), 0+(textWidth(c)/3));
    popMatrix();
  }
  //update the color of the letters when not falling/fallen
  void updateColor(boolean falling) {
    if (!falling) {
      myColor=color(255-red(rainbow.c), 255-green(rainbow.c), 255-blue(rainbow.c));
    }
  }
  //rotate the letter when falling
  void rotateLetter() {
    degrees+=-6;
  }
}
