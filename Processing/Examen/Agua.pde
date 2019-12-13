class Agua extends Block
{
 Agua(PVector aguaPosition, PVector aguaSize, color aguaColor)
 {
   super(aguaPosition,aguaSize,aguaColor);
 }
 
 void render()
 {
   fill(c);
   rect(position.x, position.y, size.x, size.y);
 }
 
}