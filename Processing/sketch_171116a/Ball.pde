class Ball extends GameObject
{
  Ball(PVector ballPosition, PVector ballSize, color ballColor)
  {
    super(ballPosition, ballSize, ballColor);
  }
  
void render()
{
  stroke(#F7F7FA);
  fill(c);
  ellipse(position.x, position.y, size.x, size.y);
}

}