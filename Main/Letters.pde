//In this class everything concerning the letters is made.

class Letters {

  //Introducing variables
  float letterX;
  float letterY; //<>//
  float normalHeight;
  float speed;
  float maxY;
  char c;
  float letterSizeMin;
  float letterSizeMax;

  Letters(char initC, float initLetterX, float initLetterY) { 
    letterX = initLetterX;
    letterY = initLetterY;
    normalHeight=initLetterY;
    c=initC;
    speed = random(1, 3);
    maxY = height/2+200;
    letterSizeMin = 20;
    letterSizeMax = 60;
  }

  void updateY() {
    //Make the letters fall down
    if (letterY+speed <maxY) {
      letterY+=speed;
    } else { 
      letterY = maxY;
    }
  }
  void updateX() {
    //make the letters go to the left
    letterX+=-1;

    //make the letters wrap around
    if (letterX<-100) {
      letterX+=totalSentenceLength+500;
      letterY=normalHeight;
    }
    //Make letters move to the left
  }

  void display() {
    fill(255);
    text(c, letterX, letterY);
  }
  
  void textResize(){
    textSize(random(letterSizeMin,letterSizeMax));
  }
}
