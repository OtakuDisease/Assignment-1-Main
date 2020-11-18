//subclass of super Sheep.

class Sheep2 extends Sheep {

  Sheep2(int i) {
    super(i); 
    sheepX = width/2;
  }

  //method shout which lets the first sheep make a buuh sound.
  void shout(float tempMouseX, float tempMouseY) {
    if ((tempMouseX <= sheepX+100) && (tempMouseX >= sheepX-100) && (tempMouseY <=sheepY+100) && (tempMouseY >= sheepY-100)) {
      buuh.play();
    }
  }
}
