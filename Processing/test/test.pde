Physics physics;
Block block;



void setup ()
{
  size(500,500);
  block = new Block(new PVector(250,250), new PVector(50,50), color(#FFFFFF));
  physics = new Physics();
}

void draw ()
{
  background(0);
  block.update();
}