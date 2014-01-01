void level1()
{
  DrawPx (xcoord, ycoord, Blue);
  DrawPx (player.x, player.y, White);
  DrawPx (robots[0].x, robots[0].y, Red);
  DrawPx (robots [1].x, robots[1].y, Red);
}

void level2()
{
  level1();
  DrawPx(robots[2].x, robots[2].y, Red);
}

void level3()
{
  level2();
  DrawPx(robots[3].x, robots[3].y, Red);
}

void level4()
{
  level3();
  DrawPx (robots[4].x, robots[4].y, Red);
}

void level5()
{
  level4();
  DrawPx(robots[5].x, robots[5].y, Red);
}

void level6()
{
  level5();
  DrawPx(robots[6].x, robots[6].y, Red);
}

void level7()
{
  level6();
  DrawPx(robots[7].x, robots[7].y, Red);
}

void level8()
{
  level7();
  DrawPx(robots[8].x, robots[8].y, Red);
}


