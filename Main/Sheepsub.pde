class Sheep1 extends Sheep {
 
  Sheep1(int i){
   super(i); 
  }
}

void sound(int tempMouseX, int tempMouseY){
  if ((tempMouseX <= sheepX+50) && (tempMouseX >= sheepX-50) && (tempMouseY <=sheepY+50) && (tempMouseY >= sheepY-50)) {
  file.play();
}
}
