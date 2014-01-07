void OpeningScreen() //Opening screen graphic
{
int color=0;     
    for (int x=0; x<8; x++)
    {
      for (int y=0; y<8; y++)
      {
        DrawPx (x,y, Blue);
      }
        DisplaySlate();
        delay(20);
      }
        ClearSlate();
        
      
}

void Logo() //The game logo, which is a big D
{
  DrawPx(2,0, White);
  DrawPx(2,1, White);
  DrawPx(2,2, White);
  DrawPx(2,3, White);
  DrawPx(2,4, White);
  DrawPx(2,5, White);
  DrawPx(2,6, White);
  DrawPx(2,7, White);
  DrawPx(3,1, White);
  DrawPx(3,6, White);
  DrawPx (4,2, White);
  DrawPx (4,5, White);
  DrawPx (5,3, White);
  DrawPx (5,4, White);
  delay(40);
}
