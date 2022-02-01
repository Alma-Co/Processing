void setup() {
  size(480, 120);
}

void draw() {
  if(mousePressed) {
    fill(#006699);
  } else {
  fill(#F3D718);
  }
  ellipse(mouseX, mouseY, 80, 80);
}
