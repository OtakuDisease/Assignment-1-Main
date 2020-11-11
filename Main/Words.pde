class Words { //<>//
  Letters[] letterObjects;
  String word;
  int wordWidth;
  float x;
  float y;
  char c;
  float mouseXPos, mouseYPos;
  boolean falling=false;
  Words(String initWord, float initX, float initY) {
    word=initWord;
    x=initX;
    y=initY;
    letterObjects= new Letters[word.length()];
    for (int i=0; i<word.length(); i++) {
      c= word.charAt(i);
      letterObjects[i]=new Letters(c, x, y);
      wordWidth+=textWidth(c);
      x=x+textWidth(c);
    }
  }

  void update(float mouseXPos, float mouseYPos) {
    for (int i=0; i<letterObjects.length; i++) {
      if (mouseXPos>letterObjects[0].letterX && mouseXPos<letterObjects[letterObjects.length-1].letterX && mouseYPos>letterObjects[0].letterY-30&& mouseYPos>letterObjects[0].letterY+30) {
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
