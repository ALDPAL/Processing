class Vacio extends Block
{
 Vacio(PVector vacioPosition, PVector vacioSize, color vacioColor)
 {
   super(vacioPosition,vacioSize,vacioColor);
 }
 
 void render()
 {
   fill(c);
   rect(position.x, position.y, size.x, size.y);
 }
}