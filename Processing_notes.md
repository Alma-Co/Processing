PROCESSING

// FORMS

size(width, height);

line(firstPointX, firstPointY, secondPointX, secondPointY);

rect(topLeftX, topLeftY, width, height);

rectMode (CENTER);
rect(centerX, centerY, width, height);

ellipse(centerX, centerY, width, height);

ellipseMode (CORNER);
ellipse(topLeftX, topLeftY, width, height);

// OBJECTS

declare objects; // just declare as variables

declare class Object {

ObjectConstructorWithArgs(...args) {
var1 = arg1;
var2 = arg2; etc..
}

void display() {}

void method2() {} etc...

} 

void setup() { size, call object with args for constructor} // Construct elements of the scene

void draw() {object1.display(); object1.methid2()} // Add Action

// MOUSE KEYBOARD FUNCTION

void draw() {
  background(204);
  line(mouseX, mouseY, pmouseX, pmouseY); // Draw a line from the previous mouse position to the current position 
  
  if (mousePressed == true) 
  if (mouseButton == LEFT)
  if (keyPressed == true) 
  (key == 'A') case sensitive 
  
- mousePressed() 
- mouseReleased() 
- mouseMoved() 
- mouseDragged()
- keyPressed() 
- keyReleased() 
  
//TEXT

void setup() {
  size(100, 100);
  textSize(60);
}

void draw() {
  background(0);
  text(key, 20, 75); // Draw at coordinate (20,75)
}
}

// ANGLES

float angle = 0;
arc(50, 50, 66, 66, 0, radians(angle))

// ARRAYS

int num = 50;
int[] arrayHorizontal = new int[num];
int[] arrayVertical = new int[num];

void setup() {
  size(500, 500);
  noStroke();
  fill(255, 102);
}

void draw() {
  background(0);
  // Shift the values to the right
  for (int i = num-1; i > 0; i--) {
    arrayHorizontal[i] = arrayHorizontal[i-1];
    arrayVertical[i] = arrayVertical[i-1];
  }
  // Add the new values to the beginning of the array
  arrayHorizontal[0] = mouseX;
  arrayVertical[0] = mouseY;
  // Draw the circles
  for (int i = 0; i < num; i++) {
    ellipse(arrayHorizontal[i], arrayVertical[i], i/2.0, i/2.0);
  }
}

//  ring buffer

int num = 50;
int[] x = new int[num];
int[] y = new int[num];
int indexPosition = 0;

void draw() {
  background(0);
  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;
  // Cycle between 0 and the number of elements
  indexPosition = (indexPosition + 1) % num;
  for (int i = 0; i < num; i++) {
    // Set the array position to read
    int pos = (indexPosition + i) % num;
    float radius = (num-i) / 2.0;
    ellipse(x[pos], y[pos], radius, radius);
  }
}

The append() function expands an array by one element, adds data to the new position, and returns the new array:

String[] trees = { "ash", "oak" };
trees = append(trees, "maple");
printArray(trees);

The shorten() function decreases an array by one element by removing the last element:

String[] trees = { "lychee", "coconut", "fig" };
trees = shorten(trees);

The expand() function increases the size of an array. It can expand to a specific size, or if no size is specified, the array's length will be doubled:

int[] x = new int[100]; // Array to store x-coordinates
int count = 0; // Positions stored in array
void setup() {
  size(100, 100);
}
void draw() {
  x[count] = mouseX; // Assign new x-coordinate to the array
  count++; // Increment the counter
  if (count == x.length) { // If the x array is full,
    x = expand(x); // double the size of x
    println(x.length); // Write the new size to the console
  }
}

PD !! arrays behave differently than data types such as int and char. As with objects, when an array is used as a parameter to a function, the address (location in memory) of the array is transferred into the function instead of the actual data. No new array is created, and changes made within the function affect the array used as the parameter. Then, take care to create a new variable to assign the value of the function, it won't be changed:
float[] data;
float[] halfData;
halfData = halve(data);



// Arcs

arc(x, y, width, height, start, stop);
The first four parameters are the same as the ones for ellipse(); they define the boundary box for your arc. The last two parameters are the starting and ending angle for the arc.

// Curves

cpx1, cpy1 - Coordinates of the first control point
x1, y1 - Coordinates of the curve's starting point
x2, y2 - Coordinates of the curve's ending point
cpx2, cpy2 - Coordinates of the second control point

curve(cpx1, cpy1, x1, y1, x2, y2, cpx2, cpy2);

// Spline Curve

using the curveVertex() function. You can only use this function when you are creating a shape with the beginShape() and endShape() functions.

  beginShape();
  curveVertex(40, 40); // the first control point
  curveVertex(40, 40); // is also the start point of curve
  curveVertex(80, 60);
  curveVertex(100, 100);
  curveVertex(60, 120);
  curveVertex(50, 150); // the last point of curve
  curveVertex(50, 150); // is also the last control point
  endShape();

// Bezier Curves

bezier(x1, y1, cpx1, cpy1, cpx2, cpy2, x2, y2);

x1, y1 - Coordinates of the curve's starting point
cpx1, cpy1 - Coordinates of the first control point
cpx2, cpy2 - Coordinates of the second control point
x2, y2 - Coordinates of the curve's ending point

bezier(50, 75, 25, 25, 125, 25, 100, 75);



bezierVertex(cpx1, cpy1, cpx2, cpy2, x, y);


In order to make two curves A and B smoothly continuous, the last control point of A, the last point of A, and the first control point of B have to be on a straight line. 

size(200, 200);
background(255);
beginShape();
vertex(30, 70); // first point
bezierVertex(25, 25, 100, 50, 50, 100);
bezierVertex(20, 130, 75, 140, 120, 120);
endShape();
  


