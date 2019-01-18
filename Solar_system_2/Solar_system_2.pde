//Here I defined my variable
float rot=0;
PImage background;
//imported the music
import ddf.minim.*;
Minim minim;
AudioPlayer player;

//Here I defined each variable and directed the computer to multiply them in order to create the star effect. This saves many repetitive lines of code from taking place. 
int X=100;

float []a=new float[100] ;
float []b=new float[100] ;
float []speed=new float[100];


void setup()
{
  //directed the computer to use the 3D mode. 
  size(800, 800, P3D); 
  //uploaded the background image
  background=loadImage("background.jpg");
  // uploaded the music 
  minim = new Minim(this);
  player = minim.loadFile("calm.mp3");
  //loop the music
  player.loop();

  //This describes the color of the snow
  stroke(255);
  //The Strokeweight is describing the size of each dot. I put it at 5, however, increasing the numebr can make it bigger. 
  strokeWeight(5);

  int i=0;
  // This is a statement that I formed to make sure that the dots are random, but are in the frame.
  while (i<100)
  {
    a[i]=random(0, width);
    b[i]=random(0, height);
    speed[i]=random(1, 5);
    i=i+1;
  }
}


void draw()
{
  image(background, 0, 0, 800, 800);


  // third from the left
  //This is a series of actions that place the sphere in it's position. It created the effect of push and pull
  pushMatrix();
  lights();
  translate(400, 455, 500);
  rotateY(rot);
  fill(100, 100, 120);
  sphere(15);
  popMatrix();

  // the sun
  //Another sphere that was hard coded
    strokeWeight(.5);
  stroke(255);
  pushMatrix();
  lights();
  translate(400, 420, 400);
  rotateY(rot);
  fill(200, 225, 0);
  sphere(35);
  popMatrix();
 
  // This is the ring
  strokeWeight(5);
  stroke(255);
  fill(255, 255, 255, 0);
  ellipse(400, 400, 1000, 400);

  //This is the 2n ring
  strokeWeight(5);
  stroke(255);
  fill(255, 255, 255, 0);
  ellipse(400, 500, 1000, 400);


  //This describde the thickness of the grid lines of the sphere
  strokeWeight(.5);
  stroke(255);


//left second
  pushMatrix();
  lights();
  translate(350, 452, 550);
  rotateY(rot);
  fill(0, 0, 255);
  sphere(10);
  popMatrix();

  rot+=PI/60;

//left up first
  pushMatrix();
  lights();
  translate(350, 365, 550);
  rotateY(rot);
  fill(10, 90, 255);
  sphere(10);
  popMatrix();


  //This describes the width of the stroke of the spheres. 
  //third one from left( up)
  //strokeWeight(0);
  pushMatrix();
  lights();
  translate(400, 360, 550);
  rotateY(rot);
  fill(10, 90, 255);
  sphere(10);
  popMatrix();
  // This resets is back to normal. I did this because I wanted to create a variety. 
  strokeWeight(.5);

  //fourth from left( up)
  pushMatrix();
  lights();
  translate(450, 360, 550);
  rotateY(rot);
  fill(10, 90, 255);
  sphere(10);
  popMatrix();



//fourth from left
  pushMatrix();
  lights();
  translate(450, 425, 550);
  rotateY(rot);
  fill(0, 225, 255);
  sphere(15);
  popMatrix();

 //first from right
  pushMatrix();
  lights();
  translate(430, 383, 550);
  rotateY(rot);
  fill(0, 225, 255);
  sphere(11);
  popMatrix();

//first from left
  pushMatrix();
  lights();
  translate(330, 395, 550);
  rotateY(rot);
  fill(0, 225, 255);
  sphere(11);
  popMatrix();
  
  
    pushMatrix();
  lights();
  translate(380, 380, 550);
  rotateY(rot);
  fill(0, 0, 255);
  sphere(11);
  popMatrix();
  
  
      pushMatrix();
  lights();
  translate(460, 455, 550);
  rotateY(rot);
  fill(0, 0, 255);
  sphere(11);
  popMatrix();
  
      pushMatrix();
  lights();
  translate(350, 430, 550);
  rotateY(rot);
  fill(0, 0, 255);
  sphere(11);
  popMatrix();
  
  
      pushMatrix();
  lights();
  translate(465, 390, 550);
  rotateY(rot);
  fill(0, 0, 255);
  sphere(11);
  popMatrix();
  
        pushMatrix();
  lights();
  translate(405, 460, 550);
  rotateY(rot);
  fill(0, 0, 255);
  sphere(9);
  popMatrix();


  int i=0;
  while (i<100)
  {
    strokeWeight(5);
    // These lines of code make sure that each star has a random speed
    point(a[i], b[i]);
    a[i] =a[i]-speed[i];
    if ( a[i]<0)
    {
      a[i]=width;
    } 
    i=i+1;
  }
  strokeWeight(.5);
}
