//the sheeps and their interactions are created in this class.
class Sheep {
  //Introducing variables
  float sheepX, sheepY;
  float sheepSize, sheepSpeed, sheepHop;
  color sheepColor;
  float gravity;
  float dY;
  Sheep(int i) {
    sheepX = i*(width/amountSheep);
    sheepY=height/2+height/6;
    sheepSize= width/7;
    sheepSpeed = random(width/800, width/600);
    sheepHop = 0.8;
    sheepColor=0;
    dY=0;
    gravity=0.05;
  }

  void display() {

    //Matrix for general sheep  
    pushMatrix();
    translate(sheepX, sheepY);
    noStroke();

    //poten
    fill(149, 106, 11);
    rect(sheepSize/2, sheepSize/3, sheepSize/10, sheepSize/2);
    rect(sheepSize/3, sheepSize/3, sheepSize/10, sheepSize/2);
    rect(sheepSize/-2, sheepSize/3, sheepSize/10, sheepSize/2);
    rect(sheepSize/-3, sheepSize/3, sheepSize/10, sheepSize/2);

    //ears
    pushMatrix();
    translate(sheepSize/2, sheepSize*-0.35);
    fill(240, 197, 133);
    ellipse(0, sheepSize/-3.5, sheepSize/12, sheepSize/6);
    popMatrix();

    //body
    fill(255);
    fill(sheepColor);
    ellipse(0, sheepSize*-0.05, sheepSize/1.2, sheepSize/1.2);
    rect(0, 0, sheepSize*1.2, sheepSize/2, sheepSize*4);

    //head
    ellipse(sheepSize/2, sheepSize*-0.35, sheepSize/2, sheepSize/2);
    fill(240, 197, 133);
    ellipse(sheepSize/1.8, sheepSize*-0.35, sheepSize/2.5, sheepSize/2.5);

    //tail
    ellipse(sheepSize/-1.7, sheepSize/-10, sheepSize/8, sheepSize/8);

    //eye
    pushMatrix();
    translate(sheepSize/2, sheepSize*-0.35);
    fill(0);
    ellipse(sheepSize/8, sheepSize/-20, sheepSize/12, sheepSize/12);

    //nose
    fill(216, 86, 11);
    ellipse(sheepSize/4, sheepSize/20, sheepSize/18, sheepSize/18);
    popMatrix();
    popMatrix();
  }

  void update() {
    if (sheepX>width*1.2) {
      sheepX = width*-0.2;
    } else {
      sheepX += sheepSpeed;  // makes the sheep move from left to right and come back in the screen on the left
    }
    //update the sheepY and the dX based on gravity
    sheepY+=dY;
    dY+=gravity;
    //if the sheep hits the ground make him hop  upwards again
    if (sheepY>background.backgroundY+background.backgroundY/2-50) {
      dY=-2.5;
    }
  }
  //announce the color update method and the shout method for the subclasses
  void updateColor() {
  }
  //method for the sheeps to make noise, this is the method in the super which lets the subclasses use this method.
  void shout(float tempMouseX, float tempMouseY) {
  }
}
