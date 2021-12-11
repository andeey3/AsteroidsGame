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
    myXspeed = (int)(Math.random()*2)+1;
    myYspeed = (int)(Math.random()*2)+1;
    rotSpeed = (int)(Math.random()*7)+1;
    myColor = color(125);
    myPointDirection = 0;
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
