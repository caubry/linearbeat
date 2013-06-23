import java.util.HashSet;
import sprites.utils.*;
import sprites.maths.*;
import sprites.*;

public class Light {

  private PApplet processing;
  int nbrLight = 1;
  int lightDelay = 2;
  int fireLight = 0;
  Sprite[] light;
  int xPos = 150;
  int nbrFrames = 8;

  public Light(PApplet processing) {
    this.processing = processing;
    light = new Sprite[nbrLight];
  }

  private void onTick() {
    fireLight++;
    if ( fireLight < lightDelay ) {
      for (int i = 0; i < nbrLight; i++) {
        light[i] = new Sprite(processing, "player.png", 8, 1, 0);
        light[i].setXY(xPos + (light[i].getWidth() / nbrFrames), random(- 150, height - 300));
        light[i].setVelXY(0, 20.0f);
      }
    }
  }

  public void setX(int xPos) {
    this.xPos = xPos;
  }
}
