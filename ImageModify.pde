//scale image, rotate image, r/g/b filters and one additional thing of choice
int xPos, yPos;
float xScale, yScale, origX, origY, rot;
boolean star = false;

class ImageModify
{
  ImageModify()
  {
    xPos = image.width/2;
    yPos = image.height/2;
    origX = xScale = image.width;
    origY = yScale = image.height;
    
  }
  
  void modify(String s)
  {
    if(s == "scaleUp")
    {
      xScale*=1.01;
      yScale*=1.01;
    }
    else if(s == "scaleDn") //figure out a good scaling dimension
    {
      xScale*=0.99;
      yScale*=0.99;
    }
    else if(s == "rotateL")
    {
      rot += PI/48;
    }
    else if(s == "rotateR")
    {
      rot -= PI/48;
    }
    else if(s == "red")
    {
      tint(#FA232B,170);
      star = false;
    }
    else if(s == "green")
    {
      tint(#26FA23,170);
      star = false;
    }
    else if(s == "blue")
    {
      tint(#3B7AFF,170);
      star = false;
    }
    else if(s == "???")
    {
      star = true;
    }
    else if(s == "clear")
    {
      noTint();
      star = false;
      fill(255);
      rect(-2,-2,width+2,height+2);
      rot = TWO_PI;
      xScale = origX;
      yScale = origY;
    }
  }
  
  void display()
  {
    imageMode(CENTER);
    
    translate(image.width/2,image.height/2);
    rotate(rot);
    translate(-image.width/2,-image.height/2);
    
    image(image, xPos, yPos, xScale, yScale);
    
    if(star)
    {
      sr.display(random(20,width-20),random(20,height-20));
    }
  }

}