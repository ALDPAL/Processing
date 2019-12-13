class Animal
{
  PVector position;
  PVector size;
  color c;
  
  Animal()
  {
    
  }
  
  Animal(PVector animalPosition, PVector animalSize, color animalColor)
  {
    position = animalPosition;
    size = animalSize;
    c = animalColor;
  }
  
  void render()
  {
   fill(c);
   rect(position.x, position.y, size.x, size.y); 
  }
}