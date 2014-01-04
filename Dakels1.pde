#include <MeggyJrSimple.h>
//Eric Tam
//if numberOfRobots < 8, numberOfRobots++
 //variables
int numberOfRobots = 2;
int endSlag = 4;

struct Point
{
  int x;
  int y;
};

Point s1 = {3,4};
Point s2 = {4,6};
Point s3 = {0,4};
Point s4 = {5,2};
Point s5 = {1,2};
Point s6 = {0,7};
Point s7 = {2,5};
Point s8 = {4,1};
Point robots[8] = {s1, s2, s3, s4, s5, s6, s7, s8};
Point player = {3,1};
int xcoord = 0;
int ycoord = 0;

void setup() //what shows up when you open it, which is level 1
{
  MeggyJrSimpleSetup ( );
  Serial.begin(9600);
}

 
void loop()
{
  level1();
  DisplaySlate();
  delay(100);
  ClearSlate();
    movePlayer();
    Serial.print("X = ");
    Serial.println(player.x);
    Serial.print("Y = ");
    Serial.println(player.y);
    
    
   
    if (RobotTeleport())
    {
      for (int i = 0; i < numberOfRobots; i++)
      {
       Tone_Start(18203, 100);
       delay(80);
       ClearSlate();
       robots[i].x = 7;
       robots[i].y = 7;
       DisplaySlate();
      }
    }
    
    if (RobotsCollision())
    {
      for (int i = 0; i < numberOfRobots; i++)
      {
        for (int j = 0; j < numberOfRobots; j++)
        {
          if (i != j)
        {
          Point newSlag = {robots[i].x, robots[i].y};
          slag[endSlag] = newSlag; //adds new slag to pile
          endSlag++; // moves marker
          robots[i].x = -6; 
          robots[i].y = -7; 
          robots[j].x = -8;
          robots[j].y = -9;         
          DisplaySlate();
        }
         void DrawSlag()
         {
           for (int i = 0; i < endSlag; i++)
           {
             DrawPx(slag[i].x,slag[i].y,Orange);
           }
         }
     
      if (robots[i].x < -5)
      {
        robots[i].x = -5;
      }
      
      if (robots[i].y < -5)
      {
        robots[i].y = -5;
      }
      
      if (robots[j].x < -5)
      {
        robots[j].x = -5;
      }
      
      if (robots[j].y < -5)
      {
        robots[j].y = -5;
      }
      }  
    }
  }

    
    if (playerTeleport())
    { 
       Tone_Start(17293 ,100);
       delay(80);
       ClearSlate();
       player.x = 7;
       player.y = 7;
       DisplaySlate();
    }
     
    if (playerHit())
    {
      gameOver();
    }

}
    

