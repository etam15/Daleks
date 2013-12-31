#include <MeggyJrSimple.h>
//if numberOfRobots < 8, numberOfRobots++
 //variables
int numberOfRobots = 2;

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

void setup() //what shows up when you open it, which is level 1
{
  MeggyJrSimpleSetup ( );
  Serial.begin(9600);
}

void gameOver()
{
  Tone_Start(18182, 100);
   int color=0;     
    for (int x=0; x<8; x++)
    {
      for (int y=0; y<8; y++)
      {
        DrawPx (x,y, Red);
      }
        DisplaySlate();
        delay(80);
        ClearSlate();
    }
  player.x = 3;
  player.y = 1;
  robots[0].x = 3;
  robots[0].y = 4;
  robots[1].x = 4;
  robots[1].y = 6;
}  

void loop()
{
  DrawPx (player.x, player.y, White);
  DrawPx (robots[0].x, robots[0].y, Red);
  DrawPx (robots [1].x, robots[1].y, Red);
  DisplaySlate();
  delay(100);
  ClearSlate();
    movePlayer();
    Serial.print("X = ");
    Serial.println(player.x);
    Serial.print("Y = ");
    Serial.println(player.y);
    
      //if (collisionRobots() == true) 
    // {
     //  Tone_Start(ToneC5, 100);
  //   }

    
    if (playerHit())
    {
      gameOver();
    }
}
    

