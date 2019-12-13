Cerdo babe;
Wolf fenrir;
ArrayList<Animal> listOfSheep;
Animal[][] arrayOfAnimals;

void setup()
{
  size(500,500);
  arrayOfAnimals = new Animal [10][3];
  
  for(int x = 0; x < 10; x++)
  {
    for(int y = 0; y < 3; y++)
    {
      arrayOfAnimals[x][y] = new Cerdo(new PVector(x * 20, y * 20), new PVector(50,50), color(#FA8DCD));
    }
  }

  listOfSheep = new ArrayList<Animal>();
  babe= new Cerdo(new PVector(100,100), new PVector(50,50), color(#FA8DCD));
  listOfSheep.add(babe);
  fenrir= new Wolf(new PVector(250,250), new PVector(100,100), color(#7C787A));
  listOfSheep.add(fenrir);

  for (int x= 0; x < 10; x++)
  {
    for (int y = 0; y < 3; y++)
    {
      Wolf wolf = new Wolf(new PVector(x * 40, y * 30), new PVector(10,10), color(#7C787A));
      listOfSheep.add(wolf);
    }
  }

 
}

void draw()
{
  background(0);
  for(Animal animal : listOfSheep)
  {
    animal.render();
  }
  
    for(int x = 0; x < 10; x++)
  {
    for(int y = 0; y < 3; y++)
    {
      arrayOfAnimals[x][y].render();
    }
  }
  textAlign(CENTER);
  String s = "blah";
  fill(#BABBBC);
  text(s, 450, 450, 70, 80);
}

void keyPressed(){

if(key == 'w')
{
  Wolf wolf = new Wolf(new PVector(350,350), new PVector(100,100), color(#7C787A));
  listOfSheep.add(wolf);
}
 
}