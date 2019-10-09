void setup()
{
	size(300,300);
	noLoop();
}
void draw()
{
	Die bob = new Die(25,25);
	bob.roll();
	bob.show();
	bob.dots();
}
void mousePressed()
{
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
		System.out.println(numRoll);
		
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
