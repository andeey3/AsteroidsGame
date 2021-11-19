Star [] sue;
Spaceship soup;
//your variable declarations here
public void setup() 
{
  //frameRate(144);
  frameRate(60);
  size(500, 500);
  sue = new Star[100];
  soup = new Spaceship();
  for (int i = 0; i < sue.length; i++) {
    sue[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < sue.length; i++) {
    sue[i].show();
  }
  if (keyPressed) {
    if (key == 'a'|| key == 'A') {//left
      soup.turn(-10);
    }
    if (key == 'd' || key == 'D') {//right
      soup.turn(10);
    }
    if (key == CODED) { //the mf speed
      soup.accelerate(0.4);
    }
    if (key == ' ') { //stop everythang 
      soup.setXspeed(0);
      soup.setYspeed(0);
    }
  }
  soup.show();
  soup.move();
}
