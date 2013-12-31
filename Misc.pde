void BeatGameSound()
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

void teleport()
{
  if (ReadPx (player.x, player.y == Blue))
  {
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
    player.x = 7;
    player.y = 7;
    DisplaySlate();
  }
}


