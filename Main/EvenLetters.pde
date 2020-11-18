class UnevenLetters extends Letters {
  int myColor;
UnevenLetters(char initC, float initLetterX, float initLetterY, int myColor){
super(initC, initLetterX, initLetterY);
this.myColor=myColor;
}
void display(){
pushMatrix();
    float middleX=letterX+(textWidth(c)/2);
    float middleY=letterY-(textWidth(c)/3);
    translate(middleX,middleY); 
    rotate(radians(degrees));
    fill(rainbow.c); // has to be rainbow
    textSize(mySize);
    text(c, 0-(textWidth(c)/2), 0+(textWidth(c)/3));
    popMatrix();
}
 void rotateLetter(){
  degrees+=-6;
  }
}
