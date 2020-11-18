//subclass EvenLetters of super Letters.
//In here the rotation of the even letters and their coloring is handled.
color myColor;
class UnevenLetters extends Letters {
  UnevenLetters(char initC, float initLetterX, float initLetterY, int initMyColor) {
    super(initC, initLetterX, initLetterY);
    myColor=initMyColor;
  }
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
   void updateColor(boolean falling) {
    if (!falling) {
      myColor=color(255-red(rainbow.c), 255-green(rainbow.c), 255-blue(rainbow.c));
    }
  }
  void rotateLetter() {
    degrees+=-6;
  }
}
