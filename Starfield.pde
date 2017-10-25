Particle[] aBunch = new Particle[1000];
void setup()
{
  size(500,500);
  for (int i = 0; i < aBunch.length; i++)
  {
    aBunch[i] = new Normal();
  }
  aBunch[0] = new JumboParticle();
  aBunch[2] = new OddballParticle();
}


void draw()
{
  background(200);
  for (int i = 0; i < aBunch.length; i++)
  {
  aBunch[i].move();
  aBunch[i].show();
  }
}


class Normal implements Particle
{
  double myX, myY, theFastestVariableForSpeedOfTheParticleInThisProgranThatImWritingForThisClass, theAngle;
  int myColor;
  Normal()
  {
  myX = 250;
  myY = 250;
  theFastestVariableForSpeedOfTheParticleInThisProgranThatImWritingForThisClass = Math.random()*10;
  theAngle = Math.random()*2*Math.PI;
  fill(255);
  }
  public void move()
  {
  myX += theFastestVariableForSpeedOfTheParticleInThisProgranThatImWritingForThisClass *Math.cos(theAngle);
  myY += theFastestVariableForSpeedOfTheParticleInThisProgranThatImWritingForThisClass *Math.sin(theAngle);
   
  }
  public void show()
  {
  fill(0);
  ellipse((float)myX,(float)myY, 50,50);
  
  }

}
interface Particle
{
  public void move();
  public void show();

}
class OddballParticle implements Particle  //uses an interface
{
  double myX, myY,theFastestVariableForSpeedOfTheParticleInThisProgranThatImWritingForThisClass, theAngle;
  int myColor;
  OddballParticle()
  {
    myX = 150;
    myY = 150;
    fill(255,0,0);
    theFastestVariableForSpeedOfTheParticleInThisProgranThatImWritingForThisClass = (Math.random()*10);
  }
  public void move()
  {
    myX += (Math.random()*10-4) *Math.cos(theAngle);
    myY +=(Math.random()*10-4) *Math.cos(theAngle);

  }
  public void show()
  {
    fill(color((int)(Math.random()*255)+50));
    ellipse((float)myX,(float)myY,10,100);
  }
  
}
class JumboParticle extends Normal//uses inheritance
{
  public void show()
  {
  fill(255,0,0);
  ellipse((float)myX,(float)myY, 100 , 100);
  }
    public void move()
  {
  myX += theFastestVariableForSpeedOfTheParticleInThisProgranThatImWritingForThisClass *Math.cos(theAngle);
  myY += theFastestVariableForSpeedOfTheParticleInThisProgranThatImWritingForThisClass *Math.sin(theAngle);
   
  }
}