class Sword extends InventoryElement
{
  
  Sword(PVector elementPosition, PVector elementSize)
  
  {
    super (elementPosition, elementSize);
    img = loadImage("sword.png");
  }
  
  void render()
  {
   image(img, position.x, position.y, size.x, size.y);  
  }
  
} 