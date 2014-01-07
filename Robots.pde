void drawRobots() //Drawing the robots
{ 
  int numdead = 0; // Record the number dead
  for (int i = start; i<start+numberOfRobots; i++)
  {
    if ((robots[i].x > -1) && (robots[i].y > -1)) //Draw only the alive ones
    {      
      DrawPx(robots[i].x, robots[i].y, Blue); 
    }
    else numdead++; //add one to the amount dead
  }
  if (numdead == numberOfRobots) //To determine you completed the level
  {
    levelup = true; 
  }
}


void RobotsCollision() //Checks if robots collide into each other
{
  for (int i = start; i < start+numberOfRobots; i++)
  {
    for (int j = start; j < start+numberOfRobots; j++) //to distinguish one robot from another
    {
    
      if (i != j && robots[i].x != -1) 
      {
        if(robots[i].x == robots[j].x && robots[i].y == robots[j].y)
        {
          Point s = {robots[i].x, robots[i].y}; //Point the slag to where it's going to be drawn
          slag[numberOfSlags] = s;
          numberOfSlags++;       
          robots[i].x = -1; //Kaboom. Kill the robots.
          robots[j].x = -1;
        }
      }
    }
  }
}


void moveRobots() //Moving the robots
{
  for (int i = start; i < start+numberOfRobots; i++)
  {
     if (robots[i].y < player.y && robots[i].y >= 0) 
     {
       robots[i].y++; 
     }
     else if (robots[i].y > player.y && robots[i].y > 0)
     {
      robots[i].y--;
     }
  
     if (robots[i].x > player.x && robots[i].x > 0)
     {
       robots[i].x--;
     }
     else if (robots[i].x < player.x && robots[i].x != -1)
     {
       robots[i].x++;
     }
     
     if (robots[i].x > 7) //Set boundaries for those robots
     {
       robots[i].x = 7;
     }
     
       
     if (robots[i].y > 7)
     {
       robots[i].x = 7;
     }
 }
   
}






 

