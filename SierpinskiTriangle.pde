int value=0;
public void setup()
{
 size(600,400);
 background(0);
}
public void draw()
{
  background(0);
  sierpinski(100,400,value+200);
}

public void mouseDragged(){
  background(0);
  value=value+5;
  if(value>500)
  value=0;
}
public void sierpinski(float x, float y, float len) 
{
if(len<=50){
  fill(255);
 triangle(x,y,x+len,y,x+(len/2),y-len); 
}
else{
  sierpinski(x+len/4,y-len/2,len/2);
 sierpinski(x,y,len/2);
 sierpinski(x+len/2,y,len/2);

}
}
