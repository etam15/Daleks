#include <MeggyJrSimple.h>
//Eric Tam
//if numberOfRobots < 8, numberOfRobots++
 //variables
int numberOfSlags = 4;
int numberOfRobots = 2;
int endSlag = 0;

struct Point
{
  int x;
  int y;
};

Point r1 = {3,4};
Point r2 = {4,6};
Point r3 = {5,2};
Point r4 = {0,3};
Point r5 = {2,4};
Point r6 = {1,6};
Point r7 = {6,3};
Point r8 = {7,2};
Point robots[8] = {r1, r2, r3, r4, r5, r6, r7, r8};

Point player = {3,1};
int xcoord = 0;
int ycoord = 0;

void setup() //what shows up when you open it, which is level 1
{
  MeggyJrSimpleSetup ( );
  OpeningScreen();
  Logo();
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
       gameOver();
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
          {
          DrawPx (robots[i].x, robots[i].y, 10);
          DisplaySlate();
          robots[i].x = -6; 
          robots[i].y = -7; 
          robots[j].x = -8;
          robots[j].y = -9; 
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
    

