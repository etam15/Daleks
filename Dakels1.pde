#include <MeggyJrSimple.h>
//Eric Tam
//if numberOfRobots < 8, numberOfRobots++
int numberOfSlags = 0;  //Variables
int numberOfRobots = 2;
int start = random(32)+16;

struct Point
{
  int x;
  int y;
};

Point robots[64] = {};
Point slag[4] = {};

Point player = {3,1};
int xcoord = 0;
int ycoord = 0;
boolean levelup = false;

void setup() //An Opening Graphic
{
  MeggyJrSimpleSetup ( );
  OpeningScreen();
  Logo();  
  Serial.begin(9600);
  fillArray();
}

 
void loop()
{
  drawRobots();
  drawSlag();
  DisplaySlate();
  delay(100);
  ClearSlate();
  movePlayer();
  DrawPx (player.x, player.y, White);
  DrawPx (xcoord, ycoord, Violet);
  RobotsCollision();
    if (levelup == true)
    {
      GameSound();
      fillArray();
      numberOfRobots++;
    }
    
   
    if (RobotTeleport())
    {
      gameOver();
    }
    
    if (playerTeleport())
    { 
       Tone_Start(17293 ,100);
       delay(80);
       ClearSlate();
       player.x = 7;
       player.y = 7;
    }
     
    if (playerHit())
    {
      gameOver();
    }

}

void fillArray()
{
  Point previous = {0,0};
  for (int i = 0; i < 64; i++)
  {
    Point current = {random(8),random(8)};
    while (previous.x == current.x && previous.y == current.y)
    {
      current.x = random(8);
      current.y = random(8);
    }
    robots[i] = current;
  }
}

void drawSlag()
{
  for (int i = 0; i < numberOfSlags; i++)
  {
    DrawPx(slag[i].x, slag[i].y, Yellow);
  }
}

