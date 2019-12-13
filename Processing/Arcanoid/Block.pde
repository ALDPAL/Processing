class Block extends GameObject
{
  
  Body body;
  PImage img;
  boolean isActive;
  int life;
 Block(PVector blockPosition, PVector blockSize, color blockColor)
 {
  super(blockPosition, blockSize, blockColor); 
  body = new Body(new PVector(position.x, position.y), new PVector(position.x + size.x, position.y + size.y));
  isActive = true;
  life = 2;
  img = loadImage("compCube.png");
 }
 
   void render()
  {
   if(isActive)
   {
   fill(c);
   noStroke();
   image(img, position.x, position.y, size.x, size.y); 
   }
   if(life <= 0)
     isActive = false;
  }
  
 
}