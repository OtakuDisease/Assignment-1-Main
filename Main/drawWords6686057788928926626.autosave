//A class for drawing the words and scrambling the wordpositions. 
class DrawWords {
  void drawSentence() {
    //reset the physical(pixel) length of the sentence
    totalSentenceLength=0;
    //reset and make the wordObject array;
    wordObjects= new Words[words.length];
    //Creating new objects
    wordObjects[0]= new Words(words[0], 100, 350);
    //make for every wordObject a word and calculate the total sentence width
    for (int i=1; i<wordObjects.length; i++) {
      wordObjects[i]= new Words(words[i], wordObjects[i-1].x+10, wordObjects[i-1].y);
      totalSentenceLength+=wordObjects[i].wordWidth;
    }
  }

  void scramble() {
    //copy the wordObjects array to an arraylist
    ArrayList<Words> newWords = new ArrayList<Words>();
    for (int i=0; i<words.length; i++) {
      newWords.add(wordObjects[i]);
    }
    for (int i=0; i<words.length; i++) {
      //take a random index and therefore word from the new arraylist and assign it to the words array
      int randomIndex= int(random(0, newWords.size()-1));
      Words randomWord = newWords.get(randomIndex);
      words[i]=randomWord.word;
      //remove the word from the list of possible words to be picked next
      newWords.remove(randomIndex);
    }
    //redraw the words on screen accorsing to the new arrangement from words[]
    drawSentence();
  }
}
