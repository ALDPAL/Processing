class PowerUp extends GameObject
{
  Body body;
  PImage img;
  PVector velocity;
  
  PowerUp(PVector powerUpPosition, PVector powerUpSize, color powerUpColor)
  {
    super(powerUpPosition,powerUpSize,powerUpColor);
    body = new Body(new PVector(position.x - (size.x / 2), position.y - (size.y / 2)), new PVector(position.x + (size.x / 2), position.y + (size.y / 2)));
    img = loadImage("glados");
    velocity = new PVector(0, 3);
  }
  
  void render()
  {
 
  noStroke();
  image(img, position.x, position.y, size.x, size.y); 
 
  }
  
    void update()
  {
    position = new PVector(position.x, position.y + velocity.y);
    body.updateBody(new PVector(position.x, position.y), new PVector(position.x + size.x, position.y + size.y));
    render();
  }
  
}