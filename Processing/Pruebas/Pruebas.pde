Physics physics;
Ball ball;
Block block;

void setup()
{
  ball = new Ball(new PVector(100,100), new PVector(50,50));
  block = new Block(new PVector(200,250), new PVector(100,30));
  size(500,500);
  physics = new Physics();
}

void draw ()
{
  background(0);
  ball.update();
  block.update();
  
  if(physics.collision(ball.body, block.body))
 {
   ball.velocity = new PVector(ball.velocity.x,-ball.velocity.y);
 }
  
}