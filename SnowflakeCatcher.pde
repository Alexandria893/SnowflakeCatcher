Snowflake [] snow;

void setup()
{

  size(500,500);
  snow = new Snowflake[5];
    for (int i = 0; i<snow.length; i++)
    {

      snow[i] = new Snowflake();

    }
}

void draw()
{
    for (int i = 0; i<snow.length; i++)
    
    {
      
      snow[i].erase();
      snow[i].lookDown();
      snow[i].move();
      snow[i].wrap();
      snow[i].show();

    }
}

void mouseDragged()
{

  fill(255,0,0);
  ellipse(mouseX,mouseY,50,50);

}

//sets conditions
class Snowflake
{
int myX;
int myY;
boolean isMoving; 


//initilizes snowflakes member variables
  Snowflake()
  {

  myX = (int)(Math.random()*500);
  myY = (int)(Math.random()*500);
  isMoving = true;

    }

    //shows snow
    void show()
    {

      fill(255);
      ellipse(myX,myY,5,5);

    }

    //checks if y is at the bottom or top of screen
    void lookDown()
    {
      if (0<=myY && myY<=500)
      {

        isMoving = false;

      }
      else 
        
        isMoving = true;
      
    }
    void erase()
    {

      background(127);
      fill(0,0,0);
      ellipse(myX,myY,7,7);

    }
    void move()
    {

      if (isMoving == true)
      {

        myY++;

      }

    }
    void wrap()
    {

      if (myY > 500)
      {

        myY = 0;
        myX = (int)(Math.random()*500);


      }  

    }
}


