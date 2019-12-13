class Paddle extends GameObject
{

  Body body;
  Body body0;
  Body body1;

  PImage img;
  Paddle(PVector paddlePosition, PVector paddleSize, color paddleColor)
  {
    super(paddlePosition, paddleSize, paddleColor);
    body = new Body(new PVector(position.x, position.y), new PVector(position.x + size.x/3, position.y + size.y));
    body0 = new Body(new PVector(position.x + size.x/3, position.y), new PVector(position.x + ((size.x/3)*2), position.y + size.y));
    body1 = new Body(new PVector(position.x + (size.x/3)*2, position.y), new PVector(position.x + (size.x/3)*3, position.y + size.y));

    img = loadImage("spaceShip.png");
  }
  
  void render()
  {
   image(img, position.x, position.y, size.x, size.y); 
  }
  
  void update()
  {
    wallCollision();
    movePaddle();
    body.updateBody(new PVector(position.x, position.y), new PVector(position.x + size.x/3, position.y + size.y));
    body0.updateBody(new PVector(position.x + size.x/3, position.y), new PVector(position.x + ((size.x/3)*2), position.y + size.y));
    body1.updateBody(new PVector(position.x + (size.x/3)*2, position.y), new PVector(position.x + (size.x/3)*3, position.y + size.y));
    render();
  }
  
  void movePaddle()
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
  
    void wallCollision()
  {
    if(position.x + size.x >= 500){ position.x = 500 - size.x;}
    if(position.x <= 0){ position.x = 0;}
  }

}