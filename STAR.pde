PShape stars;

class STAR
{
  void display(float x, float y)
  {
    pushMatrix();
    translate(x, y);
    fill(#FEFF00);
    stroke(255);
    strokeWeight(2);
    beginShape();
    vertex(0, -30);
    vertex(8, -10);
    vertex(30, -5);
    vertex(13, 7);
    vertex(19, 30);
    vertex(0, 15);
    vertex(-19, 30);
    vertex(-13, 7);
    vertex(-30, -5);
    vertex(-8, -10);
    endShape(CLOSE);
    popMatrix();
  }
}