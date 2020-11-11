class Words{
  Letters[] letterObjects;
 String word;
Words(String initWord){
word=initWord;
println(word);
for(int i=0; i<word.length();i++){
char c= word.charAt(i);
println(c);
}
}

}
