Agua agua;
Arena arena;
Tierra tierra;
Physics physics;
Player player;

int[][] map= { {0, 0, 0, 0, 0, 0, 0, 1, 1, 1},
               {1, 1, 0, 0, 1, 0, 0, 1, 1, 1},
               {1, 1, 1, 1, 1, 2, 2, 1, 1, 1},
               {1, 1, 1, 1, 1, 3, 3, 1, 1, 1}};
               
ArrayList<Block> listOfTerrain;           

PImage bg;

void setup()
{
  size(600,600);
  
  physics = new Physics();
  
  bg = loadImage("bg.png");
  
  player = new Player(new PVector(250,250), new PVector(50,50), color(#FFFFFF));

  listOfTerrain = new ArrayList<Block>();
  
  for(int x = 0; x < 10; x++)
  {
    for(int y = 0; y < 4; y++)
    {
     if(map[y][x] == 1)
     {
      Tierra tierra = new Tierra(new PVector((x * 50)+50,(y * 50)+400), new PVector(50,50), color(#95731A));
      listOfTerrain.add(tierra);
     }
     if(map[y][x] == 3)
     {
      Arena arena = new Arena(new PVector((x * 50)+50,(y * 50)+400), new PVector(50,50), color(#FFDE89));
      listOfTerrain.add(arena);
     }
     if(map[y][x] == 2)
     {
      Agua agua = new Agua(new PVector((x * 50)+50, (y * 50)+400), new PVector(50,50), color(#1F31CB));
      listOfTerrain.add(agua);
     }
    }
  }
}

void draw()
{
  background(bg);
  
  player.update();
  
  for(Block tierra : listOfTerrain)
  {
    if(physics.collision(player.body, tierra.body))
     {
      player.gravity = new PVector(player.position.x,0);
     }
    tierra.render();
  }  
}