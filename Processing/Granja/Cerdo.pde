class Cerdo extends Animal
{
 Cerdo(PVector cerdoPosition, PVector cerdoSize, color cerdoColor)
 {
   super(cerdoPosition,cerdoSize,cerdoColor);
 }
 
 void render()
 {
   fill(c);
   ellipse(position.x, position.y, size.x, size.y);
 }
}