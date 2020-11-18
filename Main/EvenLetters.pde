class UnevenLetters extends Letters {
  int myColor;
UnevenLetters(char initC, float initLetterX, float initLetterY, int myColor){
super(initC, initLetterX, initLetterY);
this.myColor=myColor;
}
void display(){
pushMatrix();
    float middleX=letterX+(textWidth(c)/2);
    translate(middleX,letterY);
    rotate(radians(degrees));
    fill(myColor);
    textSize(mySize);
    text(c, 0-(textWidth(c)/2), 0);
    popMatrix();
}
 void rotateLetter(){
  degrees+=-6;
  }
}
