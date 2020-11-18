//subclass UnevenLetters of super Letters.
//In here the rotation of the uneven letters and their coloring is handled.

class EvenLetters extends Letters {
  color myColor;
  EvenLetters(char initC, float initLetterX, float initLetterY, int textColor) {
    super(initC, initLetterX, initLetterY);
    this.myColor=textColor;
  }
  //display the letters at the right place and rotation
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
  //if the letter is not falling update its color when the mouse is clicked over the rainbow
  void updateColor(boolean falling) {
    if (!falling) {
      myColor=rainbow.c;
    }
  }
  //make the letter rotate when it is falling
  void rotateLetter() {
    degrees+=6;
  }
}
