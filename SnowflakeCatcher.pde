Snowflake [] snow;

void setup()

{

  size(500,500);
  snow = new Snowflake[100];
    for (int i = 0; i<snow.length; i++)
    
    {

      snow[i] = new Snowflake();

    }
    
    background(0,0,0);
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
      //snow[i].keyPressed();

    }
}

void mouseDragged()

{

  fill(255,0,0);
  ellipse(mouseX,mouseY,50,50);
  fill(127);

}

//sets conditions
class Snowflake

{

//int keyPressed;
int snowSize;
int myX;
int myY;
boolean isMoving; 

//initilizes snowflakes member variables
  Snowflake()
  {

  snowSize = (int)(Math.random()*17);  
  myX = (int)(Math.random()*500);
  myY = (int)(Math.random()*500);
  isMoving = true;


  }

    //shows snow
    void show()
   
    {

      noStroke();
      fill(255);
      ellipse(myX,myY,snowSize,snowSize);

    }

    //checks if y is at the bottom or top of screen
    void lookDown()
    {

      if (0<=myY && myY<=489 && get(myX, myY+10)!= color(0,0,0))
     
      {

        isMoving = false;

      }
     
      else 
        
        isMoving = true;
      
    }

    void erase()
  
    {

      noStroke();
      fill(0);
      ellipse(myX,myY,snowSize+3,snowSize+3);

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

    /*void keyPressed()
   
    {

      if (key ==SHIFT) 

      {

        background(0);
        System.println("work");

      }  

    }*/

}


