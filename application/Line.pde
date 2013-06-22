import sprites.utils.*;
import sprites.maths.*;
import sprites.*;

public class Line {
  
  private PApplet processing;
  Sprite line;
  int y = 250;
  int x = 0;

  public Line(PApplet processing) {
    this.processing = processing;
  } 
  
  /*
  ** Setup the line identity
  ** And render the sprite
  */
  public void renderSprite() { 
    line = new Sprite(processing, "line.png", 10, 1, 0);
    line.setXY(this.x, this.y);
    line.setFrameSequence(0, 7, 0.2f);
    line.stopImageAnim();
  }
  
  /*
  ** Set the x position of a line
  ** Needs to be called before renderSprite()
  */ 
  public void setX(int x) {
    this.x = x;
  }
}
