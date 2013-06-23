import java.util.HashSet;
import sprites.utils.*;
import sprites.maths.*;
import sprites.*;

public class Light {
  
  private PApplet processing;
  final int NBR_GHOSTS = 2;
  Sprite[] light;
  int xPos = 150;
  int nbrFrames = 8;
 
  public Light(PApplet processing) {
    this.processing = processing;
    light = new Sprite[NBR_GHOSTS];
    setup();
  } 
  
  private void setup() {
    for (int i = 0; i < NBR_GHOSTS; i++) {
      light[i] = new Sprite(processing, "player.png", 8, 1, 0);
    }
  }

  private void onTick() {
    for (int i = 0; i < NBR_GHOSTS; i++) {
      light[i].setXY(xPos + (light[i].getWidth() / nbrFrames), random(- 150, height - 300));
      light[i].setVelXY(0, 2.0f);
    }
  }
  
  public void setX(int xPos) {
    this.xPos = xPos;
  }
}

