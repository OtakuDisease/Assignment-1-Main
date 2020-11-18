//Everything concerning the words is set in this class, there is also a calling of class Letters  //<>//

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
  Words(String initWord, float initX, float initY) {
    word=initWord;
    x=initX;
    y=initY;
    letterObjects= new Letters[word.length()];
    //make all the letterObjects, if it is an even letter in the array give it the first subclass, otherwise the second
    for (int i=0; i<word.length(); i++) {
      c= word.charAt(i);
      if (i%2==0) {
        letterObjects[i]=new EvenLetters(c, x, y, 255);
      } else {
        letterObjects[i]=new UnevenLetters(c, x, y, 0);
      }
      //update the wordwidth and x-position of the next letter by textwidth
      wordWidth+=textWidth(c);
      x=x+textWidth(c);
    }
  }

  //update the letters and if they are hovered over make their word fall.
  void update(float mouseXPos, float mouseYPos) {
    for (int i=0; i<letterObjects.length; i++) {   
      //check if the letter is hovered over and if yes make it fall
      if (mouseXPos>letterObjects[0].letterX && mouseXPos<letterObjects[letterObjects.length-1].letterX && mouseYPos<letterObjects[0].letterY+10&&mouseYPos>letterObjects[0].letterY-50) {
        falling=true;
      }
      if (falling) {
        letterObjects[i].updateY();
      }

      //make the letters wrap around
      if (letterObjects[i].letterX+20<0) {
        int offset=totalSentenceLength+350;

        //make the letters always appear just right outside te window
        if (offset<width) {
          letterObjects[i].letterX+=width;
        }
        letterObjects[i].letterX+=totalSentenceLength+350;

        //reset the y and if the word is falling
        letterObjects[i].letterY=y;
        falling=false;
        letterObjects[i].degrees=0;
      }

      //move the letters to the left and show them
      letterObjects[i].updateX();
    }
  }
  void show() {
    for (int i=0; i<word.length(); i++) {
      letterObjects[i].display();
    }
  }

  //resize all the letters of this word
  void textResize() {
    for (int i=0; i<word.length(); i++) {
      letterObjects[i].textResize();
    }
  }
  //update the colors of all the letters in this word
  void updateColor() {
    for (int i=0; i<word.length(); i++) {
      letterObjects[i].updateColor(falling);
    }
  }
}
