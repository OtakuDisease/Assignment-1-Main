class Sheep2 extends Sheep {

  Sheep2(int i) {
    super(i); 
    sheepX = width/2;
  }


void shout(float tempMouseX, float tempMouseY) {
  if ((tempMouseX <= sheepX+100) && (tempMouseX >= sheepX-100) && (tempMouseY <=sheepY+100) && (tempMouseY >= sheepY-100)) {
    buuh.play();
  }
}
}
