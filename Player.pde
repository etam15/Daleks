void movePlayer()
{
  CheckButtonsPress(); //checks buttons
  if (Button_Up)  //Button Commands
  {
    Tone_Start(ToneG5, 100);  
    player.y++;
    moveRobots();
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
  
  
  
  if (player.x > 7)
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

boolean playerHit()
{
  for (int i = 0; i < numberOfRobots; i++)
  {
    if ( (player.x == robots[i].x) && (player.y == robots[i].y) )
     return true;
  }
 return false;
} 

boolean playerTeleport()
{
    if ( (player.x == xcoord) && (player.y == ycoord) )
    {
      return true;
    }
      return false;
}


