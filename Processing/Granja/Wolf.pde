class Wolf extends Animal
{
  Wolf(PVector wolfPosition,PVector wolfSize,color wolfColor)
  {
    super(wolfPosition, wolfSize, wolfColor);
  }
  
  void render()
  {
    fill(c);
    rect(position.x,position.y,size.x,size.y);
  }
}