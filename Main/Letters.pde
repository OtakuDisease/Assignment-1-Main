//In this class everything concerning the letters is made. //<>// //<>//

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
    } else { 
      letterY = maxY;
    }
  }
  void rotateLetter(){
  degrees+=6;
  }
  void updateX() {

    //make the letters go to the left
    letterX+=-1;
    
  }

  //show the letters according to size
  void display() {
    pushMatrix();
    translate(letterX,letterY);
    rotate(radians(degrees));
    fill(255);
    textSize(mySize);
    text(c, 0, 0);
    popMatrix();
  }

  //give this letter a new random size
  void textResize() {
    mySize=int(random(letterSizeMin, letterSizeMax));
  }
}
