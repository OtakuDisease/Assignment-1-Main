//subclass of super Sheep.

class Sheep2 extends Sheep {
  Sheep2(int i) {
    super(i);
  }

  //method shout which lets the first sheep make a buuh sound.
  void shout(float tempMouseX, float tempMouseY) {
    if ((tempMouseX <= sheepX+100) && (tempMouseX >= sheepX-100) && (tempMouseY <=sheepY+100) && (tempMouseY >= sheepY-100)) {
      buuh.play();
    }
  }
  //make the color the color of the rainbow when the mouse is over the rainbow
  void updateColor() {
    if (rainbow.isOverRainbow()) {
      sheepColor=rainbow.c;
    } else {
      sheepColor=0;
    }
  }
}
