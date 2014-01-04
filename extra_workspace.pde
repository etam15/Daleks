void checkCollide()
{
  for (int i = 0; i < marker; i++)
  { // iterate through bot array
    for (int j = 0; i < marker; j++)
    { //test each robot against others
      if (i != j && robots[i].x == robots[j].x && robots[i].y == robots[j].y)
      { //doesn't check robot against itself, 
        // and only triggers if both x and y coords are the same
        Point newSlag = {robots[i].x, robots[i].y}; // create a new Point for this location
        slag[endSlag] = newSlag; //adds new slag to pile
        endSlag++; // moves marker
        robots[i] = null; // this might cause errors but if it works it's the simplest way to make the robot inactive
        robots[j] = null; // deactivates the other robot
        // the other ways you could do it would be to set each robot's x and y to -1
        // and then when you draw robots from the array add an if statement so you only DrawPx if the value is greater than or equal to zero.
        // Or you could modify the Point struct to have a boolean flag called active
        // and only draw points whose active is set to true.
      }
    for (int j = 0; j < slagEnd; j++)
    { // checks for collisions with slag
      if (robots[i].x == slag[j].x && robots[i].y == slag[j].y){
        robots[i] = null; // or however you want to deactivate the robot
        // slag pile stays where it is
    }
  }
}
void DrawSlag(){
  for (int i = 0; i < endSlag; i++){
    DrawPx(slag[i].x,slag[i].y,Orange);
  }
}
