void setup()
{

  size(500,500);
 
}
void draw()
{
  //your code here
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
int myX;
int myY;
boolean isMoving; 

  Snowflake()
  {

  myX = (int)(Math.random()*500);
  myY = (int)(Math.random()*500);
  isMoving = true;

    }
    void show()
    {
      //your code here
    }
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

      fill(0,0,0);
      ellise(myX,myY,7,7);

    }
    void move()
    {

      if (isMoving == true)
      {

        y++;

      }

    }
    void wrap()
    {

      if (myY == 500)
      {

        myY = 0;
        myX = (int)(Math.random()*500);


      }  

    }
}


