import java.util.*;
float rd = 10;
//----------------------SETUP--------------------
float barH = 10;
float barW = 10;
float timeOff = 0.1;
float timeX = 100;
float timeY = 100;


void setup() {
  size(800, 800);
  background(0);
  smooth();
 stroke(100, 200, 100, 50);
 //noStroke();
  fill(50, 10, 200, 200);
}
//----------------------END SETUP-----------------

//----------------------DRAW----------------------
void draw() {
  for ( float y = 0; y<height; y+=barH) {
    for (float x = 0; x < width; x+=barW) {
      float bH = map(noise(timeX, timeY), 0, 1, 0, barH+1);
      rect(x, y, bH, bH);
      timeX +=timeOff;
    }//end for x
    timeX=10;
    timeY +=timeOff;
  }//for y
  noLoop();
}//end draw

//------------------------END DRAW--------------------
