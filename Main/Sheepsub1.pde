//subclass of super Sheep.

class Sheep1 extends Sheep {
  Sheep1(int i) {
    super(i);
  }

  //method shout which lets the first sheep make a beeh sound.
  void shout(float tempMouseX, float tempMouseY) {
    if ((tempMouseX <= sheepX+100) && (tempMouseX >= sheepX-100) && (tempMouseY <=sheepY+100) && (tempMouseY >= sheepY-100)) {
      beeh.play();
    }
  }
  //make the color the inverted color of the rainbow when the mouse is over the rainbow
  void updateColor() {
    if (rainbow.isOverRainbow()) {
      sheepColor=color(255-red(rainbow.c), 255-green(rainbow.c), 255-blue(rainbow.c));
    } else {
      sheepColor=255;
    }
  }
}
