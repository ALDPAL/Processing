class Helmet extends InventoryElement
{
  
  Helmet(PVector elementPosition, PVector elementSize)

  {
    super (elementPosition, elementSize);
    img = loadImage("helmet.png");
  }
  
  void render()
  {
   image(img, position.x, position.y, size.x, size.y);
  }
  
}