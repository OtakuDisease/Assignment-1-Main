class Letters {
  float letterX;
  float letterY;
  float speed;
  float maxY;
  int c;
  Letters(int c, float letterX, float letterY) {
    letterX = width/2;
    letterY = height/2;
    speed = 3;
    maxY = height/2;
  }

  void update() {
    if (letterY+speed <maxY) {
      letterY+=speed;
    } else { 
      letterY = maxY;
    }
  }

  void display() {
    text(c, letterX, letterY);
  }
}
