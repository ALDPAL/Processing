class Math
{
  Math(){}
  
  Cont sumaCont(Cont a, Cont b, Cont m)
  {
   Cont c;
  
   c = new Cont();
   c.setContX(a.getContX() * m.getContX());
   c.setContY(a.getContY() * m.getContY());
   c.setContX(c.getContX() + b.getContX());
   c.setContY(c.getContY() + b.getContY());
   
   return c;
   
  }
    
}