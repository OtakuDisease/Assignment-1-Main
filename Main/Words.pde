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

  void update() {
    //Showing of the letters
    for (int i=0; i<letterObjects.length; i++) {
      letterObjects[i].update();
      letterObjects[i].display();
    }
  }
}
