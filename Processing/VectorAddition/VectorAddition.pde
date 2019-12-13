Cont contA, contB, contC, resultado;
Math math;

void setup()
{
  math = new Math();
  contA = new Cont(5,7);
  contB = new Cont(-2,1);
  contC = new Cont(2,2);
  
 resultado = new Cont();
 resultado = math.sumaCont(contA, contB, contC);

  print (resultado.getContX());
  print (resultado.getContY());

}

void draw()
{
}