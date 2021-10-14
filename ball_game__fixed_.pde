int Lrectangle = 350;
int Rrectangle = 350;

int ellipseX = width;
int ellipseY = height;
 
boolean moveRight = true;
boolean moveDown = true;

int speedSide = 3;
int speedVertical = 4;

void setup()
{
  size(700, 700);
  background (0);
}

void draw ()
{
  background(0);
  
  
  fill(250,0,0);
  ellipse(ellipseX,ellipseY,50,50);
  
  fill(0,255,0);
  rect(20,Lrectangle,30,100);
  
  fill(0,0,255);
  rect(630,Rrectangle,30,100);
 
  
  
  if (keyPressed == true && key == 'q')
  {
    Lrectangle = Lrectangle - 10;
  }
   if (keyPressed == true && key == 'a')
  {
    Lrectangle = Lrectangle + 10;
  }
   if (keyPressed == true && key == 'o')
  {
    Rrectangle = Rrectangle - 10;
  }
   if (keyPressed == true && key == 'l')
  {
    Rrectangle = Rrectangle + 10;
  }
  
  
  
  
  
  if (moveRight == true)
  { 
    ellipseX = ellipseX + speedSide;
  }
  else 
  { 
    ellipseX = ellipseX - speedSide;
  }
   if (moveDown == true)
  { 
    ellipseY = ellipseY + speedVertical;
  }
  else 
  { 
    ellipseY = ellipseY - speedVertical;
  }
  
  
  if(ellipseY <= 10)
  {
    moveDown = true;
  }
  if(ellipseY >= 690)
  {
    moveDown = false;
  }
  if(ellipseX >= 690)
  {
    moveRight = false;
  }
  if(ellipseX <= 10)
  {
    moveRight = true;
  }
  
  
  if (ellipseX >= 615 && ellipseY > Rrectangle && ellipseY < (Rrectangle + 100))
  {
    moveRight = false;
  }
  if (ellipseX <= 75 && ellipseY > Lrectangle && ellipseY < (Lrectangle + 100))
  {
    moveRight = true;
  }
  
  
  
  
    
}
  
