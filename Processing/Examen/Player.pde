class Player extends Block
{
Body body;
PImage img;
PVector gravity;

Player(PVector playerPosition, PVector playerSize, color playerColor)
{
 super(playerPosition, playerSize, playerColor);
 body = new Body(new PVector(position.x, position.y), new PVector(position.x+size.x, position.y+size.y));
 img = loadImage("cat.png");
 gravity = new PVector(position.x,2);
}

void render()
{
  image(img, position.x, position.y, size.x, size.y);
}

  void wallCollision()
  {
    if(position.x + size.x >= 600) {position.x = 500 - size.x;}
    if(position.x <= 0){ position.x = 0;}
 
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