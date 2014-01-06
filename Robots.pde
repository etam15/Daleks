void drawRobots()
{ 
  int numdead = 0;
  for (int i = start; i<start+numberOfRobots; i++)
  {
    if ((robots[i].x > -1) && (robots[i].x > -1))
    {      
      DrawPx(robots[i].x, robots[i].y, Blue);
    }
    else numdead++;
  }
  if (numdead == numberOfRobots)
  {
    levelup = true;
  }
}


boolean RobotTeleport()
{
  for (int i = 0; i < numberOfRobots; i++) 
  {
    if ((robots[i].x == xcoord) && (robots[i].y == ycoord))
    return true;
  }
  return false;
}

void RobotsCollision()
{
  for (int i = 0; i < numberOfRobots; i++)
  {
    for (int j = 0; j < numberOfRobots; j++)
    {
      if (i != j && robots[i].x == robots[j].x && robots[i].y == robots[j].y)
      {
        Point s = {robots[i].x, robots[i].y};
        slag[numberOfSlags] = s;
        numberOfSlags++;
        robots[i].x = -1;
        robots[i].y = -1;
      }
    }
  }
}


void moveRobots()
{
  for (int i = 0; i < numberOfRobots; i++)
  {
     if (robots[i].y < player.y) 
     {
       robots[i].y++; 
     }
     else if (robots[i].y > player.y)
     {
      robots[i].y--;
     }
  
     if (robots[i].x > player.x)
     {
       robots[i].x--;
     }
     else if (robots[i].x < player.x)
     {
       robots[i].x++;
     }
     
     if (robots[i].x > 7)
     {
       robots[i].x = 7;
     }
     
       
     if (robots[i].y > 7)
     {
       robots[i].x = 7;
     }
     
       
     if (robots[i].x < 0)
     {
       robots[i].x = 0;
     }
     
       
     if (robots[i].x < 0)
     {
       robots[i].x = 0;
     }
     
 }
   
}






 

