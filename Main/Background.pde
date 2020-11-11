class  Background {
  int backgroundX, backgroundY;

  Background() {
    backgroundX = width/2;
    backgroundY= height/2;
    rectMode(CENTER);
  }

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
