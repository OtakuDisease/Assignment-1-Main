//This is a class where the background of our animated card is created

class  Background {

  //Introducing variables
  int backgroundX, backgroundY;

  Background() {
    backgroundX = width/2;
    backgroundY= height/2;
    rectMode(CENTER);
  }
  //draw the background
  void display() {
    background(5, 195, 245);
    pushMatrix();
    translate(backgroundX, backgroundY);
    fill(26, 160, 19);
    noStroke();
    rect(0, backgroundY, width, backgroundY);
    popMatrix();
  }
}
