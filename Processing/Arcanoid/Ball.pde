class Ball extends GameObject
{
  Body body;
  PImage img;
  PVector velocity;

  Ball(PVector ballPosition, PVector ballSize, color ballColor)
  {
    super(ballPosition, ballSize, ballColor);
    body = new Body(new PVector(position.x - (size.x / 2), position.y - (size.y / 2)), new PVector(position.x + (size.x / 2), position.y + (size.y / 2)));
    velocity = new PVector(2, 3);
    img = loadImage("wheatley.png");
  }
  
  void render()
  {
 
  noStroke();
  image(img, position.x, position.y, size.x, size.y); 
 
  }
  
  void update()
  {
    wallCollision();
    position = new PVector(position.x + velocity.x, position.y + velocity.y);
    body.updateBody(new PVector(position.x, position.y), new PVector(position.x + size.x, position.y + size.y));
    render();
  }
  
  void wallCollision()
  {
    if(position.x + (size.x / 2)>=500)
    {
      velocity = new PVector (-1  ,velocity.y);
    }
    if(position.y - (size.y / 2)<=0)
    {
      velocity = new PVector (velocity.x,-velocity.y);
    }
    if(position.x -(size.x / 2)<=0)
    {
      velocity = new PVector (1,velocity.y);
    }
  
  }

}