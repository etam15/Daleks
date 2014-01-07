void movePlayer() //How to move the player.
{
  CheckButtonsPress(); //checks buttons
  if (Button_Up)  //Button Commands
  {
    Tone_Start(ToneG5, 100);  
    player.y++;
    moveRobots(); //this method must be put in here and not someplace else so that the robots can move upon player actions
  }
  if (Button_Down)
  { 
    Tone_Start(ToneG5, 100); 
    player.y--;
    moveRobots();
  }      
  
  if (Button_Left)
  { 
    Tone_Start(ToneG5, 100); 
    player.x--;
    moveRobots();
  }      
  
  if (Button_Right) 
  {      
    Tone_Start(ToneG5, 100);
    player.x++;
    moveRobots();
  }  
  
  if (Button_B) //Teleport Button
  {
    Tone_Start(17293 ,100);
    delay(80);
    ClearSlate();
    player.x = 7;
    player.y = 7;
  }
  
  if (Button_A) //Killing yourself
  {
    gameOver();
  }
  
  if (player.x > 7) //Let the player wrap around the screen to make it easier
  {
    player.x = 0;
  }
  
  if (player.x < 0)
  {
    player.x = 7;
  }
  
  if (player.y > 7)
  {
    player.y = 0;
  }
  
  if (player.y < 0)
  {
    player.y = 7;
  }
}

boolean playerHit() //Checks to see if a player hits a robot
{
  for (int i = start; i < start+numberOfRobots; i++)
  {
    if ( (player.x == robots[i].x) && (player.y == robots[i].y) )
     return true;
  }
 return false;
} 

boolean playerTeleport() //Checks to see if the player comes across a teleporter
{
    if ( (player.x == xcoord) && (player.y == ycoord) )
    {
      return true;
    }
      return false;
}


