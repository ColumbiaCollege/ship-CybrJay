//Ship Project 
//Justin Whitfield

//Datatype to create image and variables for ship movement and control
PImage img;
float f;
float x;
float y;
float easing = 0.05;

//Setup used to create size for window, load ship image, and create variable for ship
void setup() { 
  size(900, 500);
 img = loadImage("ship.png");
  f = height/2;  
}

//Draw used to store background,functions,variables, and position for image
void draw() {  

  //Background for image and function to prevent ship from stuttering
  background(0);  
  f = f - 0.5;
  if (f < 0) {
    f = height;
}    
  //Variables and functions for ship that let move across the X and Y axis
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;

  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;

  //Positioning and width and height for image 
  image(img, x, y, 80, 80);
}
