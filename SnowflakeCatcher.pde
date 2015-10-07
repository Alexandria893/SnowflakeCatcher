Snowflake [] snow;

void setup()
{

  size(500,500);
  snow = new Snowflake[10];
    for (int i = 0; i<snow.length; i++)
    {

      snow[i] = new Snowflake();

    }
    background(127,127,127);
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

  fill(0,255,0);
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
      noStroke();
      fill(255);
      ellipse(myX,myY,20,20);

    }

    //checks if y is at the bottom or top of screen
    void lookDown()
    {

      if (0<=myY && myY<=500 && get(myX, myY+=12)!= color(127,127,127))
      {

        isMoving = false;
        System.out.println(isMoving);

      }
      else 
        
        isMoving = true;
      
    }

    void erase()
    {

      noStroke();
      fill(127);
      ellipse(myX,myY,22,22);

    }
    void move()
    {

      if (isMoving == true)
      {

       // myY++;

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


