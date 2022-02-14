//Taylor Milam 12/2/2021
//Example of a programmer using Adobe
PImage img;
int pointillize = 10; //broken into random dots
void setup() {
  size(361,240);
  img = loadImage("sunflower.jpg");
  background(0,120,120);
  
}

void draw() {//every cycle thru draw() one ellipse at a random location
int x = int(random(img.width));
int y = int(random(img.height));
int loc = x + y * img.width;

img.loadPixels();
float r = red(img.pixels [loc]);
float g = green(img.pixels [loc]);
float b = blue(img.pixels [loc]);
noStroke();
fill(r,g,b, 50);
ellipse(x,y, pointillize, pointillize);
}
  
