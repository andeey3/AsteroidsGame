class Star { //note that this class does NOT extend Floater
 private int myX, myY, myColor;
  Star() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  public void show() {
    fill(myColor);
    noStroke();
    ellipse(myY, myX, 5, 5);
  }
}//end 
