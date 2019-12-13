class Block
{   
  Body body;
  PVector position;
  PVector size;
  color c; 
  
  Block(PVector blockPosition, PVector blockSize, color blockColor)
  {
    position = blockPosition;
    size = blockSize;
    c = blockColor;
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