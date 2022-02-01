Square firstSquare;
Square secondSquare;

class Square {
  color c;
  float posY; 
  float posX;
  float w;
  float speedSquare;
  
  Square(color colorCar, float rectPosX, float rectPosY, float widthSquare, float speed){
  c = colorCar;
  posY = rectPosY;
  posX = rectPosX;
  w = widthSquare;
  speedSquare = speed;
  }
  
  void display() {
  stroke(255);
  fill(c);
  rect(posX, posY, w, w);
  }
  
  void move() {
  posX = posX + speedSquare;
  posY = posY + speedSquare;
  if(posX > width) {
  posX = 0;
  }
  if(posY > height) {
  posY = 0;
  }
  }
}

void setup() {
  size(500, 700);
  firstSquare = new Square(color(34, 85, 123), 0, 350, 50, 1.5);
  secondSquare = new Square(color(100, 200, 20), 0, 500, 30, 3);
  
}

void draw() {
  background(55);
  firstSquare.display();
  firstSquare.move();
  secondSquare.display();
  secondSquare.move();
}
