

boolean RobotTeleport()
{
  for (int i = 0; i < numberOfRobots; i++) 
  {
    if ((robots[i].x == xcoord) && (robots[i].y == ycoord))
    return true;
  }
  return false;
}

boolean RobotsCollision()
{
  for (int i = 0; i < numberOfRobots; i++)
  {
    for (int j = 0; j < numberOfRobots; j++)
    {
      if (i != j && robots[i].x == robots[j].x && robots[i].y == robots[j].y)
       return true;
    }
      return false;
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






 

