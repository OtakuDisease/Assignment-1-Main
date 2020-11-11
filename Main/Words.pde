class Words {
  Letters[] letterObjects;
  String word;
  Words(String initWord) {
    word=initWord;
    letterObjects= new Letters[word.length()];
    for (int i=0; i<word.length(); i++) {
      char c= word.charAt(i);
      letterObjects[i]=new Letters(c, x, y);
    }  
  }
}
