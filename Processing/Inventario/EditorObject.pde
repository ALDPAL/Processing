class EditorObject
{
  PVector position;
  PVector size;
  PImage img;
  
  EditorObject(PVector objectPosition, PVector objectoSize)
  {
    position = objectPosition;
    size = objectoSize;
    img = loadImage("cube.png");
  }
  
  void render ()
  {
    image(img, position.x, position.y, size.x, size.y);
  }
  
  boolean detectMouse()
  {
    if(mouse
  }
  
}