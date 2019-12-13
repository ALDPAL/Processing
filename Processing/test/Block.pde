class Block extends GameObject
{
Body body;
PImage img;
PVector gravity;

Block(PVector paddlePosition, PVector paddleSize, color paddleColor)
{
 super(paddlePosition, paddleSize, paddleColor);
 body = new Body(new PVector(position.x, position.y), new PVector(position.x+size.x, position.y+size.y));
 img = loadImage("block.png");
 gravity = new PVector(position.x,2);
}

void render()
{
  image(img, position.x, position.y, size.x, size.y);
}

  void wallCollision()
  {
    if(position.x + size.x >= 500) {position.x = 500 - size.x;}
    if(position.x <= 0){ position.x = 0;}
    if(position.y + size.y >=500) {position.y = 500-size.y;}
  }

void update()
{
  wallCollision();
  position = new PVector(position.x, position.y + gravity.y);
  moveBlock();
  body.updateBody(new PVector(position.x, position.y), new PVector(position.x+size.x, position.y+size.y));
  render();
}
  void moveBlock()
  {
   if ((keyPressed == true) && (key == 'a'))
   {
     position.x -= 10;
   }
   
    if ((keyPressed == true) && (key == 'd'))
   {
     position.x += 10;
   }
  }
  

}