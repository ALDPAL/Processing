class Body
{
  PVector min;
  PVector max;
  
  Body(PVector minVertex, PVector maxVertex)
  {
    min = minVertex;
    max = maxVertex;
  }
  
  Body(PVector bodyPosition, int radius)
  {
  }
 
  void updateBody(PVector minVertex, PVector maxVertex)
  {
    min = minVertex;
    max = maxVertex;
    
    fill(#7484BC);
    rect(min.x,min.y, max.x-min.x, max.y-min.y);
  }
     
  }