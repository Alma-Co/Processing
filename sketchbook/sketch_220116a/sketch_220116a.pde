 
int num = 10;
float mx[] = new float[num];
float my[] = new float[num];

void setup() {
size(600, 600);
noStroke();
background(255);

float divived = 4;
color blue = color(65, 208, 218);
color yellow = color(255, 195, 0);
color pinkinsh = color(232, 55, 88);
pushMatrix();
fill(blue);

triangle(width / divived, height / divived - 70, (width / divived) - 60, (height / divived) + 100, (width / divived) + 100, (height / divived) + 100); 
popMatrix();

pushMatrix();
fill(pinkinsh);
curve(width / 2, height /3 ,width / 5, 400, width / 1.80, height / 3, 10, 10);
curve(width / 2, height /3 ,width / 3, 400, width / 1.3, height / 3.5, 100, 200);
popMatrix();

pushMatrix();
noStroke();
fill(yellow);
triangle(18, 18, 18, 560, 100, 360);
popMatrix();

pushMatrix();
noStroke();
fill(yellow);
triangle(20, 570, 90, 400, 580, 570);
popMatrix();

pushMatrix();
fill(pinkinsh);
popMatrix();
}

void draw() {
  
  
  // Cycle through the array, using a different entry on each frame. 
  // Using modulo (%) like this is faster than moving all the values over.
  int which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;
  
  for (int i = 0; i < num; i++) {
    // which+1 is the smallest (the oldest in the array)
    int index = (which+1 + i) % num;
    ellipse(mx[index], my[index], i, i);
  }
}
