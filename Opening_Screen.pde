void OpeningScreen()
{
int color=0;     
    for (int x=0; x<8; x++)
    {
      for (int y=0; y<8; y++)
      {
        color = random (8);
        DrawPx (x,y, color);
      }
        DisplaySlate();
        delay(100);
      }
        ClearSlate ();
}
