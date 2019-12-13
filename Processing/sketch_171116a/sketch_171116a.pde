Ball ball;

void setup()
{
  size(500,500);
  ball = new Ball(new PVector (250,250), new PVector (50,50), new color(10));
}

void draw()
{
  Ball.ball.render();
  background(0);
}