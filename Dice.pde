int sum = 0;
void setup()
{
  size(350,400);
  noLoop();
}
void draw()
{
	background(145, 141, 125);
  for (int x = 25; x < 300; x += 60) {
    for (int y = 25; y < 300; y += 60) {
      Die bob = new Die(x,y);
      bob.roll();
      bob.show();
      bob.dots();
      sum = sum + bob.numRoll;
    }
  }
  textSize(30);
  text("The total sum is " + sum + ".", 20,380);
  if (sum >= 100) {
  	fill(0,0,255);
  	textSize(30);
  	text("You win!", 105, 350);
  }
  else {
  	fill(255,0,0);
  	textSize(30);
  	text("You lose!", 105, 350);
  }
}
void mousePressed()
{
  sum = 0;
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, numRoll;
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    numRoll = 0;
  }
  void roll()
  {
    numRoll = (int)(Math.random()*6)+1; 
  }
  void show()
  {
    fill(255);
    rect(myX, myY,50,50,10);
  }

  void dots() {
    fill(0);
    if (numRoll == 1) {
      ellipse(myX+25,myY+25,10,10);
    }
    if (numRoll == 2) {
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);
    }
    if (numRoll == 3) {
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);
      ellipse(myX+25,myY+25,10,10);
    }
    if (numRoll == 4) {
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);
      ellipse(myX+10,myY+40,10,10);
      ellipse(myX+40,myY+10,10,10);
    }
    if (numRoll == 5) {
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);
      ellipse(myX+10,myY+40,10,10);
      ellipse(myX+40,myY+10,10,10);
      ellipse(myX+25,myY+25,10,10);
    }
    if (numRoll == 6) {
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);
      ellipse(myX+10,myY+40,10,10);
      ellipse(myX+40,myY+10,10,10);
      ellipse(myX+10,myY+25,10,10);
      ellipse(myX+40,myY+25,10,10);
    }
}
}
