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
	dots();
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
}

void dots() {
	if (numRoll == 1) {
		ellipse(x,y,10,10);
	}
}
