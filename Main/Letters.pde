//In this class everything concerning the letters is made. //<>// //<>// //<>// //<>// //<>//

class Letters {

  //Introducing variables
  float letterX;
  float letterY;
  float normalHeight;
  float speed;
  float maxY;
  char c;
  float letterSizeMin;
  float letterSizeMax;
  int mySize;
  float degrees;
  Letters(char initC, float initLetterX, float initLetterY) { 
    letterX = initLetterX;
    letterY = initLetterY;
    normalHeight=initLetterY;
    c=initC;
    speed = random(1, 3);
    maxY = height/2+200;
    letterSizeMin = 20;
    letterSizeMax = 60;
    mySize=50;
    degrees=0;
  }

  void updateY() {
    //Make the letters fall down
    if (letterY+speed<maxY) {
      letterY+=speed;
      rotateLetter();
    } else { 
      letterY = maxY;
    }
  }
  void rotateLetter() {
  }
  void updateX() {
    //make the letters go to the left
    letterX+=-1;
  }

  //show the letters according to size
  void display() {
  }
  void updateColor() {
  }
  //give this letter a new random size
  void textResize() {
    mySize=int(random(letterSizeMin, letterSizeMax));
  }
}
