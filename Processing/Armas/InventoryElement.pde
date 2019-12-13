class InventoryElement
{
  PVector position;
  PVector size;
  PImage img;
  
  InventoryElement(PVector elementPosition, PVector elementSize)
  {
   position = elementPosition;
   size = elementSize;
  }
  
  void render()
  {
    image(img, position.x, position.y, size.x, size.y);
  }

}