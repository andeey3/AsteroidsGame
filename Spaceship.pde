class Spaceship extends Floater  
{   
  public Spaceship() { 
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myColor = color(255, 255, 255);
    myPointDirection = (int)(Math.random()*360); 
    corners = 6;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -4;
    yCorners[3] = 3;
    xCorners[4] = -8;
    yCorners[4] = 0;
    xCorners[5] = -4;
    yCorners[5] = -3;
  }
  public void hyperSpace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
  }

  public void setX(double x) {
    myCenterX = x;
  }
  public void setY (double y) {
    myCenterY = y;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }
}
