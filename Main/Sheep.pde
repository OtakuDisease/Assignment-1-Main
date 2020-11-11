class Sheep {
  float sheepX, sheepY;
  float sheepSize, sheepSpeed;

  Sheep() {
    sheepX=width/2;
    sheepY=height/2+height/6;
    sheepSize= width/4;
    sheepSpeed = 1;
  }


  void display() {
    pushMatrix();
    translate(sheepX, sheepY);
    noStroke();
    fill(255);
    //head
    ellipse(sheepSize/2, sheepSize*-0.35, sheepSize/2, sheepSize/2);
    //body
    ellipse(0, sheepSize*-0.05, sheepSize/1.2, sheepSize/1.2);
    rect(0, 0, sheepSize*1.2, sheepSize/2, sheepSize*4);
    //poten
    popMatrix();
  }

  void update() {
    if (sheepX>width*1.1) {
      sheepX = width*-0.1;
    } else {
      sheepX += sheepSpeed;
    }
  }
}
