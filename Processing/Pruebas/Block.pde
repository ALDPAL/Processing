class Block extends GameObject
{
  Body body;
  
  Block(PVector blockPosition, PVector blockSize)
  {
    super(blockPosition, blockSize);
    body = new Body(new PVector(position.x, position.y), new PVector(position.x + size.x, position.y + size.y));
  }
  
  void render()
  {
    stroke(#FFFFFF);
    noFill();
    rect(position.x, position.y, size.x, size.y);
  }
  
   void update()
  {
    body.updateBody(new PVector(position.x, position.y), new PVector(position.x + size.x, position.y + size.y));
    render();
  }
  
  
}