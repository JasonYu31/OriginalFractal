public void setup(){
  size(500,500);
  rectMode(CENTER);
}
public void draw()
{
  background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  myFractal(250,250,500);
}
public void myFractal(float x, float y, float siz)
{
  ellipse(x,y,siz,siz);
  if (siz>15){
    float newSize = siz / 2; 
    myFractal(x - newSize, y, newSize);
    fill(0,255,255);
    myFractal(x + newSize, y, newSize);
    fill(0,0,255);
    myFractal(x, y - newSize, newSize);
    fill(0,0,0);
    myFractal(x, y + newSize, newSize);
 fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
}
