//Everything concerning the words is set in this class, there is also a calling of class Letters

class Words {

  //Reference classes
  Letters[] letterObjects;

  //Introducing variables
  String word;
  int wordWidth;
  float x;
  float y;
  char c;
  float mouseXPos, mouseYPos;
  boolean falling=false;
  Words(String initWord, float initX, float initY, float initMouseXPos, float initMouseYPos) {
    word=initWord;
    x=initX;
    y=initY;
    mouseXPos=initMouseXPos;
    mouseYPos=initMouseYPos;
    letterObjects= new Letters[word.length()];
    for (int i=0; i<word.length(); i++) {
      c= word.charAt(i);
      letterObjects[i]=new Letters(c, x, y);
      wordWidth+=textWidth(c);
      x=x+textWidth(c);
    }
  }

  void update() {
    //Showing of the letters
    for (int i=0; i<letterObjects.length; i++) {
      if (mouseXPos>letterObjects[0].letterX&&mouseXPos<letterObjects[letterObjects.length-1].letterX) {
        falling=true;
      }
      if (falling) {
        letterObjects[i].updateY();
      }
      letterObjects[i].updateX();
      letterObjects[i].display();
    }
  }
}
