Star [] sue;
Spaceship soup = new Spaceship();
ArrayList <Asteroid> amy = new ArrayList <Asteroid>();
//ArrayList <Bullet> bob = new ArrayList <Bullet>();
int x = (int)(Math.random()*20)+15;
int i;
//your variable declarations here
public void setup() 
{
  //frameRate(144);
  frameRate(75);
  size(500, 500);
  sue = new Star[100];
  for (int i = 0; i < sue.length; i++) 
    sue[i] = new Star();
  for (int i = 0; i < x; i++) {
    amy.add(new Asteroid());
  }
}

public void draw() 
{
  background(0);
  for (int i = 0; i < sue.length; i++) {
    sue[i].show();
  }
  for (int i = 0; i < amy.size(); i++) {
    //amy.add(new Asteroid());
    amy.get(i).show();
    amy.get(i).move();
    float d = dist((float)soup.getX(), (float)soup.getY(), (float)amy.get(i).getX(), (float)amy.get(i).getY());
    if (d < 10)
      amy.remove(i);
    //for ( i = 0; i < bob.size(); i++) {
    //  bob.get(i).move();
    //  bob.get(i).move();
  }

  soup.show();
  soup.move();
  ///////////////
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
    if (key == 'f' || key == 'F') { //pew
      //bob.add(new Bullet(soup));
    }
  }
}
