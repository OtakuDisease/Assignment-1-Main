class EvenLetters extends Letters {
color myColor;
EvenLetters(char initC, float initLetterX, float initLetterY, int textColor){
super(initC, initLetterX, initLetterY);
this.myColor=textColor;
}

void display(){
pushMatrix();
    float middleX=letterX+(textWidth(c)/2);
    float middleY=letterY-(textWidth(c)/3);
    translate(middleX,middleY); 
    rotate(radians(degrees));
    fill(myColor);
    textSize(mySize);
    text(c, 0-(textWidth(c)/2), 0+(textWidth(c)/3));
    popMatrix();
}
 void rotateLetter(){
  degrees+=6;
  }
}