
Spot[] spotsArray;

void setup() {
  size(700, 100);
  int numSpots = 70;
  int diameterSpot = width / numSpots;
  int radius = diameterSpot/2;
  spotsArray = new Spot[numSpots];
  for (int i = 0; i < spotsArray.length; i++) {
    float x = i*diameterSpot + radius;
    float rate = random(0.1, 2.0);
    // Create each object
    spotsArray[i] = new Spot(x, 50, diameterSpot, rate);
  }
  noStroke();
 
}
void draw() {
  fill(250, 10);
  rect(0, 0, width, height);

  for (Spot s : spotsArray) {
  s.move();
  s.display();
  s.colorChange();
}
}
class Spot {
  float x, y;         // X-coordinate, y-coordinate
  float diameter;     // Diameter of the circle
  float speed;        // Distance moved each frame
  int direction = 1; // Direction of motion (1 is down, -1 is up)
  float colorA = 155;

  // Constructor
  Spot(float xpos, float ypos, float dia, float sp) {
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = sp;
  }

  void move() {
    y += (speed * direction);

    if ((y > (height - diameter/2)) || (y < diameter/2)) {
      direction *= -1;
    }
  
  }
  
  void colorChange() {
  float rate = random(0.1, 2.0); 
  colorA += (speed * 2);
  
  }

  void display() {
    ellipse(x, y, diameter, diameter);
    fill(colorA, 30, colorA);
     fill(colorA/4, 30, colorA);
  }
}
