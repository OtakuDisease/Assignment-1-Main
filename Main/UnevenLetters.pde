class EvenLetters extends Letters {
  color myColor;
EvenLetters(char initC, float initLetterX, float initLetterY, int textColor){
super(initC, initLetterX, initLetterY);
this.myColor=textColor;
}
void display(){
pushMatrix();
    translate(letterX,letterY);
    rotate(radians(degrees));
    fill(myColor);
    textSize(mySize);
    text(c, 0, 0);
    popMatrix();
}
 void rotateLetter(){
  degrees+=6;
  }
}
