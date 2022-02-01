
void setup()
{
  size(200, 200);
  smooth();
  frameRate(30);
}

void draw()
{
  background(255);
  ellipseGreen();
  ellipsePink();
}


void ellipseGreen()
{
  noStroke();
  fill(50, 168, 160);
  ellipse(width/2, height/2, 50, 50);
  
}

void ellipsePink()
{
  noStroke();
  fill(193, 20, 196);
  rotate(radians(5));
  rect(width/1.5, height/1.5, 5, 90);
  
  
}
