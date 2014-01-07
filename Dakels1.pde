#include <MeggyJrSimple.h>
//Eric Tam
//FINAL VERSION

int numberOfSlags = 0;  //Variables
int numberOfRobots = 2;
int start = random(32)+16; 

struct Point
{
  int x;
  int y;
};

Point robots[64] = {}; //array of robots
Point slag[4] = {}; //array of slags

Point player = {3,1}; 
int xcoord = 0;
int ycoord = 0;
boolean levelup = false; // so that it doesn't change the level ALL the time

void setup() //An Opening Graphic
{
  MeggyJrSimpleSetup ( );
  OpeningScreen();
  Logo();  
  fillArray();
  Serial.begin(9600);
}

 
void loop()
{
  DrawPx (player.x, player.y, White);
  DrawPx (xcoord, ycoord, Violet);
  drawRobots();
  drawSlag();
  DisplaySlate();
  delay(100);
  ClearSlate();
  if (playerHit()) //If a player hits a robot
  {
    gameOver();
  }
  movePlayer();
  RobotsCollision();
  
    if (levelup == true) //To check that the player can go one level up
    {
      GameSound(); 
      ClearSlate();
      fillArray();
      player.x = 3; //Original position of player
      player.y = 1;
      numberOfRobots++; //Progression of level: one robot is added everytime   
      numberOfSlags = 0; //No more slags
      levelup = false; 
    }
    
    
    if (playerTeleport()) //Player may teleport through
    { 
       Tone_Start(17293 ,100);
       delay(80);
       ClearSlate();
       player.x = 7;
       player.y = 7; //What makes it teleport to another point.
    }
     

}

void fillArray() //Establish the robot points in random places.
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

void drawSlag() // method to draw a slag at the point of collision (when the robots collide, of course)
{
  for (int i = 0; i < numberOfSlags; i++)
  {
    DrawPx(slag[i].x, slag[i].y, Yellow); //A slag appears!
    
    if (player.x == slag[i].x && player.y == slag[i].x) //make the slag a killer to the player upon contact
    {
      gameOver();
    }
    
    for (int j = start; j < start+numberOfRobots; j++) //make the slag kill the robots if touched
    {
      if (robots[j].x != -1) //So that slags don't accumulate unnecesarily
      {
        if (robots[j].x == slag[i].x && robots[j].y == slag[i].y)
        {
          robots[j].x = -1; //Kill it.
        }
      }
    }
  }
}

