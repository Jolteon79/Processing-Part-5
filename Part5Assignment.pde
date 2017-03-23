//scale image, rotate image, r/g/b filters and one additional thing of choice
ImageModify mod;
PImage image;
STAR sr;

void setup()
{
  image = loadImage("quality.png"); 
  sr = new STAR();
  mod = new ImageModify();
  size(400,600);
}

void draw()
{
  if(keyPressed)
  {
    if(key == '1')
    {
      mod.modify("red");
    }
    else if(key == '2')
    {
      mod.modify("green");
    }
    else if(key == '3')
    {
      mod.modify("blue");
    }
    else if(key == '4')
    {
      mod.modify("???");
    }
    else if(key == '5')
    {
      mod.modify("clear");
    }
  }
  if(mousePressed)
  {
    if(mouseButton == LEFT)
    {
      if(pmouseY < height/2)
      {mod.modify("scaleUp");}
      else
      {mod.modify("scaleDn");}
    }
    else if (mouseButton == RIGHT)
    {
      if(pmouseX < width/2)
      {mod.modify("rotateL");}
      else
      {mod.modify("rotateR");}
    }
  }
  pushMatrix();
  mod.display();
  popMatrix();
  fill(0);
  
  rect(0,550,width,50);
  fill(255);
  text("Left Mouse Click + Drag = Scale,    Right Mouse Click + Drag = Rotate",11,570);
  text("1 = Red Filter,   2 = Green Filter,   3 = Blue Filter,   4 = Stars,   5 = Clear",8,585);
}