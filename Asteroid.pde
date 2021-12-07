class Asteroid extends Floater 
{
  private double rotSpeed;
  void move() {
    super.move();
    turn(rotSpeed);
  }
  public Asteroid() {
    corners = 12;
    xCorners = new int[] {8, 6, 9, 6, -1, -8, -10, -9, -11, -8, -2, 6};
    yCorners = new int[] {12, 6, -1, -4, -1, -3, -1, 5, 11, 12, 10, 14};
    myCenterX = (int)(Math.random()*751);
    myCenterY = (int)(Math.random()*751);
    myXspeed = (int)(Math.random()*5)+1;
    myYspeed = (int)(Math.random()*10)+1;
    rotSpeed = (int)(Math.random()*7)+1;
    myColor = color(125);
    myPointDirection = 0;
  }
}//end


//copy n paste spot dw bout it
//xCorners[] 
//yCorners[]
//    xCorners[0] = -11;
// yCorners[0] = -8;
//  xCorners[1] = 7;
//  yCorners[1] = -8;
//  xCorners[2] = 13;
//   yCorners[2] = 0;
//    xCorners[3] = 6;
//    yCorners[3] = 10;
//   xCorners[4] = -11;
//    yCorners[4] = 8;
//  xCorners[5] = -5;
//   yCorners[5] = 0;
