class Arena extends Block
{
 Body body;
 Arena(PVector arenaPosition, PVector arenaSize, color arenaColor)
 {
   super(arenaPosition,arenaSize,arenaColor);
   body = new Body(new PVector(position.x, position.y), new PVector(position.x+size.x, position.y+size.y));
 }
 
 void render()
 {
   fill(c);
   rect(position.x, position.y, size.x, size.y);
 }
 
  void update()
  {
  body.updateBody(new PVector(position.x, position.y), new PVector(position.x+size.x, position.y+size.y));
  render();
  }
  
}