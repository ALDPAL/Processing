class Potion extends InventoryElement
{
  
  Potion(PVector elementPosition, PVector elementSize)
  
  {
    super (elementPosition, elementSize);
    img = loadImage("potion.png");
  }
  
  void render()
  {
   image(img, position.x, position.y, size.x, size.y);  
  }
  
}