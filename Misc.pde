void GameSound()
{
  Tone_Start( ToneG5, 400 );
  delay(600);
  Tone_Start( ToneG5, 100 );
  delay(150);
  Tone_Start( ToneG5, 100 );
  delay(150);
  Tone_Start( ToneB5, 200 );
  delay(300);
  Tone_Start( ToneD6, 400 );
  delay(600);
  Tone_Start( ToneG6, 600 );
  delay(800);
}

void gameOver()
{
  Tone_Start(ToneD3, 500);    
    for (int x=0; x<8; x++)
    {
      for (int y=0; y<8; y++)
      {
        DrawPx (x,y, Blue);
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
     robots[2].x = 5;
     robots[2].y = 2;
      robots[3].x = 0;
     robots[3].y = 3;
      robots[4].x = 2;
     robots[4].y = 4;
      robots[5].x = 1;
     robots[5].y = 6;
      robots[6].x = 6;
     robots[6].y = 3;
      robots[7].x = 7;
     robots[7].y = 2;
} 

    
void ZapARobot()
{
}

