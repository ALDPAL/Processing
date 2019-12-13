class Body
{
  PVector min;
  PVector max;
  
  Body(PVector minVertex, PVector maxVertex)
  {
    min = minVertex;
    max = maxVertex;
  }

  void updateBody(PVector minVertex, PVector maxVertex)
  {
    min = minVertex;
    max = maxVertex;
  }
     
  }