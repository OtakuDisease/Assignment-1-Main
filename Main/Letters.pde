class Letters {
  float letterX;
  float letterY;
  float speed;
  float maxY;
  char c;
  Letters(char initC, float initLetterX, float initLetterY) { //<>// //<>//
    letterX = initLetterX;
    letterY = initLetterY;
    c=initC;
    speed = random(1, 3);
    maxY = height/2+200;
  }

  void updateY() {
    if (letterY+speed <maxY) {
      letterY+=speed;
    } else { 
      letterY = maxY;
    }
  }
  void updateX(){
  letterX+=-1;
  }

  void display() {
    fill(255);
    text(c, letterX, letterY);
  }
}
