class Sheep1 extends Sheep {
  Sheep1(int i) {
    super(i); 
    sheepX = 0;
  }


void shout(float tempMouseX, float tempMouseY) {
  if ((tempMouseX <= sheepX+100) && (tempMouseX >= sheepX-100) && (tempMouseY <=sheepY+100) && (tempMouseY >= sheepY-100)) {
    beeh.play();
  }
}
}
