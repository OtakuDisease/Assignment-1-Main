class Words {
  Letters[] letterObjects;
  String word;
  int wordWidth;
  int x;
  int y;
  Words(String initWord, int initX, int initY) {
    word=initWord;
    x=initX;
    y=initY;
    letterObjects= new Letters[word.length()];
    for (int i=0; i<word.length(); i++) {
      char c= word.charAt(i);
      wordWidth+=textWidth(c);
      x+=textWidth(c);
      letterObjects[i]=new Letters(c, x, y);
    }  
  }
  
  void update(){
  for (int i=0; i<letterObjects.length; i++) {
    letterObjects[i].update();
    letterObjects[i].display();
  }
  }
}
