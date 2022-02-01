void setup() {
  size(500, 500);
  stroke(255);
}

void draw() {
 line(0, 0, 500, 500);
 line(0, height/3, width/3, height/3);
 line(width/3, height/3, width/3, 0);
 
 rectMode (CENTER);
 rect(375, 125, 90, 90);
 rect(125, 375, 90, 90);
 
stroke(0);
rectMode(CENTER);
rect(100,100,20,100);
ellipse(100,70,60,60);
ellipse(81,70,16,32);
ellipse(119,70,16,32);
line(90,150,80,160);
line(110,150,120,160);

ellipse(375, 375, 90, 110);
ellipse(355, 355, 25, 40);
ellipse(395, 355, 25, 40);

}
