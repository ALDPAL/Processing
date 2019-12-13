EditorObject editorObject;
Inn inn;
Arbol arbol;
ArrayList<EditorObject> editorObjectList;

void setup ()
{
  size(500,500);
  editorObjectList = new ArrayList<EditorObject>();
  editorObject = new EditorObject(new PVector (250,250), new PVector (25,25));
}

void draw ()
{
  background (0);  
  
  for(EditorObject _object : editorObjectList)
  {
    _object.render();
  }
}

void keyPressed()
{
  if(key == 't')
  {
    Inn inn;
    inn = new Inn(new PVector(100,100), new PVector(75,75));
    editorObjectList.add(inn);
  }
    if(key == 'a')
  {
    Arbol arbol;
    arbol = new Arbol(new PVector(250,250), new PVector(75,75));
    editorObjectList.add(arbol);
  }
  
void mousePressed()
{
  for(EditorObject _object : editorObjectList)
  {
    if(_object.detectMouse())
    {
      
    }
    
  }
}
}