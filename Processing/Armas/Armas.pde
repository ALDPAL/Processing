InventoryElement element;
Helmet helmet;
Sword sword;
ArrayList<InventoryElement> elements = new ArrayList<InventoryElement>();
void setup()
{
size(500, 500);
}

void draw()
{
  background(0);
  for (InventoryElement inventoryElement : elements)
  {
    inventoryElement.render();
  }
}

void keyPressed() {
  if (key == 'h' )
  {
    Helmet _helmet = new Helmet(new PVector(250,100), new PVector(50,50));
    elements.add(_helmet);
  }
  
  if (key == 's' )
  {
    Sword _sword = new Sword(new PVector(250,250), new PVector(50,50));
    elements.add(_sword);
  }
  
    if (key == 'p' )
  {
    Potion _potion = new Potion(new PVector(250,400), new PVector(50,50));
    elements.add(_potion);
  }
}