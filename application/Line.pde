import sprites.utils.*;
import sprites.maths.*;
import sprites.*;

public class Line {
  
  private PApplet processing;
  Sprite line;
  
  int y = 250;
  int x = 0;
  int nbrFrames = 10;
  
  float lineX;
  float lineY;
  float lineWidth;
  float lineHeight;
  
  boolean collision = false;

  public Line(PApplet processing) {
    this.processing = processing;
  } 
  
  /**
   *  Setup the line identity
   *  And render the sprite
   */
  public void renderSprite() { 
    line = new Sprite(processing, "line.png", nbrFrames, 1, 0);
    line.setXY(this.x, this.y);
    line.setFrameSequence(0, 7, 0.2f);
    line.stopImageAnim();
    
    lineX       = (float) line.getX();
    lineY       = (float) line.getY();
    lineWidth   = (float) line.getWidth();
    lineHeight  = (float) line.getHeight();
  }
  
  /**
   *  Check for mouse collison 
   *  Display a response on screen
   */
  public void mousePos() {
    if (mouseX > lineX-lineWidth && mouseX < lineX+lineWidth && 
      mouseY > lineY-lineHeight && mouseY < lineY+lineHeight) {
      int newFrame = line.getFrame() % nbrFrames + 1;
      line.setFrameSequence(0, nbrFrames, 0.2f);
      collision = true;
    } 
    else {
      line.stopImageAnim();
      collision = false;
    }
  }
  
  /**
   *  Getter - Line, mouse collision
   */
  public boolean hasLineCollided() {
    return collision;
  }
  
  /**
   *  Getter - Line animation frame
   */
  public int frameNbr() {
    return line.getFrame();
  }
  
  /**
   *  Set the x position of a line 
   *  Needs to be called before renderSprite()
   */
  public void setX(int x) {
    this.x = x;
  } 
 
  public int getX() {
    return this.x;
  } 
}
