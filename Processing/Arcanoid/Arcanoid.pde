Ball ball;
Paddle paddle;
Physics physics;
Star[] stars = new Star[500];
Block[][] arrayOfBlocks;
String gameState;
PFont f;
int z = 0;



void setup()
{
  f = createFont("Arial", 16, true);
  gameState = "Start";
  for (int i = 0; i < stars.length; i++) 
  {
   stars[i] = new Star();
  }
  ball = new Ball(new PVector(250,250), new PVector(50,50), color(#FFFFFF));
  paddle = new Paddle(new PVector(200,470), new PVector(100,30), color(100));
  size(500,500);
  physics = new Physics();
  
  arrayOfBlocks = new Block[10][3];
  
  for(int x = 0; x < 10; x++)
  {
   for(int y = 0; y < 3; y++)
   {
     Block block = new Block(new PVector((x + 1) * 40, y * 50), new PVector(40,40), color(#21DBD0));
     arrayOfBlocks[x][y] = block;
   }  
  }
  
}

void draw ()
{
 background(0);
 if(gameState == "Start"){
 startGame();}
 else if(gameState == "Play"){
 playGame();}
 else if(gameState == "GameOver"){
 endGame();}
 else if(gameState == "You Win"){
 winGame();}
 
 

   
 translate(width/2, height/2);
   for (int i = 0; i < stars.length; i++) 
   {
    stars[i].update();
    stars[i].show();
   }

   
}

void startGame()
{
  background(0);
 
  textFont(f);       
  fill(#FCFDFF);

  textAlign(CENTER);
  text("Start Game",width/2,250); 
  textAlign(CENTER);
  textSize(50);
  text("Wheatleynoid",width/2,150); 
  
     if(keyPressed == true)
  {
   gameState = "Play";
  }
 
}

void playGame()
{
 background(0);
 ball.update();
 paddle.update();
 
if(physics.collision(ball.body, paddle.body))
 {
   ball.velocity = new PVector(-3,-ball.velocity.y);
 }
 
 else if(physics.collision(ball.body, paddle.body0))
 {
   ball.velocity = new PVector(random (-3,3),-ball.velocity.y);
 }
 
 else if(physics.collision(ball.body, paddle.body1))
 {
   ball.velocity = new PVector(3,-ball.velocity.y);
 }
 
 for (int x = 0; x < 10; x++)
   {
     for (int y = 0; y < 3; y++)
     {
      if(arrayOfBlocks[x][y].isActive)
      {
        if(physics.collision(ball.body, arrayOfBlocks[x][y].body)) 
        {
           ball.velocity = new PVector(-ball.velocity.x,5);
           arrayOfBlocks[x][y].life--;
           z ++;
        }
      }
       arrayOfBlocks[x][y].render();
     }
   }
   
 if(ball.position.y + (ball.size.y / 2)>=550)
    {
      gameState = "GameOver";
    }
 
  if(z == 60)
    {
      gameState = "You Win";
    }

}

void endGame()
{
  background(0);
  
  textFont(f);       
  fill(#FCFDFF);
  
  textAlign(CENTER);
  textSize(50);
  text("GAME OVER",width/2,150); 
  
 if(keyPressed == true)
  {
   z = 0;
   gameState = "Play";
   ball.position.x=100;
   ball.position.y=200;
   
  arrayOfBlocks = new Block[10][3];
  
  for(int x = 0; x < 10; x++)
    {
       for(int y = 0; y < 3; y++)
         {
         Block block = new Block(new PVector((x + 1) * 40, y * 50), new PVector(40,40), color(#21DBD0));
         arrayOfBlocks[x][y] = block;
         }  
    }
  }
}

void winGame()
{
  background(0);
  fill(#FCFDFF);
  
  textAlign(CENTER);
  textSize(50);
  text("YOU WIN",width/2,150); 
  
  if(keyPressed == true)
  {
   z = 0;
   gameState = "Play";
   ball.position.x=100;
   ball.position.y=200;
   
  arrayOfBlocks = new Block[10][3];
  
  for(int x = 0; x < 10; x++)
    {
       for(int y = 0; y < 3; y++)
         {
         Block block = new Block(new PVector((x + 1) * 40, y * 50), new PVector(40,40), color(#21DBD0));
         arrayOfBlocks[x][y] = block;
         }  
    }
  }
  
}