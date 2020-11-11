//In this class everything concerning the letters is made.

class Letters {

  //Introducing variables
  float letterX;
  float letterY; //<>//
  float speed;
  float maxY;
  char c;
  float letterSizeMin;
  float letterSizeMax;

  Letters(char initC, float initLetterX, float initLetterY) { 
    letterX = initLetterX;
    letterY = initLetterY;
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
    //Make letters move to the left
  }
  void updateX(){
  letterX+=-1;
  }

  void display() {
    fill(255);
    textSize(random(letterSizeMin,letterSizeMax));
    text(c, letterX, letterY);
  }
}
