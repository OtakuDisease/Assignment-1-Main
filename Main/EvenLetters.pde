//subclass EvenLetters of super Letters.
//In here the rotation of the even letters and their coloring is handled.

class UnevenLetters extends Letters {
  UnevenLetters(char initC, float initLetterX, float initLetterY, int myColor) {
    super(initC, initLetterX, initLetterY);
    }
  void display() {
    pushMatrix();
    float middleX=letterX+(textWidth(c)/2);
    float middleY=letterY-(textWidth(c)/3);
    translate(middleX, middleY); 
    rotate(radians(degrees));
    fill(rainbow.c); // makes the letters rainbow
    textSize(mySize);
    text(c, 0-(textWidth(c)/2), 0+(textWidth(c)/3));
    popMatrix();
  }
  void rotateLetter() {
    degrees+=-6;
  }
}
