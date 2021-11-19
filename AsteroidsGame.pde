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
    if (key == 's' || key == 'S') {//backwards
      soup.accelerate(-0.4);
    }
    if (key == 'd' || key == 'D') {//right
      soup.turn(10);
    }
    if (key == CODED || key == 'w' || key == 'W') { //the mf speed / forward
      soup.accelerate(0.4);
    }
    if (key == ' ') {
      soup.hyperSpace();
    }
  }
  soup.show();
  soup.move();
}
