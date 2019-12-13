class Arbol extends EditorObject
{
  Arbol(PVector arbolPosition, PVector arbolSize)
  {
    super(arbolPosition, arbolSize);
    img = loadImage("arbol.png");
  }
}