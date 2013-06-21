import java.util.HashSet;
import sprites.utils.*;
import sprites.maths.*;
import sprites.*;

public class Light {
  
  private PApplet processing;
  final int NBR_GHOSTS = 6;
  Sprite[] ghost;
  StopWatch sw = new StopWatch();

  public Light(PApplet processing) {
    this.processing = processing;
    ghost = new Sprite[NBR_GHOSTS];
    setup();
  } 
  
  private void setup() {
    for (int i = 0; i < NBR_GHOSTS; i++) {
        ghost[i] = new Sprite(processing, "player.png", 8, 8, 0);
        ghost[i].setDomain(-100, -60, width + 100, height - 100, Sprite.REBOUND);
      }
      initGhosts();
      registerMethod("pre", this);
      cursor(CROSS);
  }
  
  void initGhosts() {
    float speed, angle;
    for (int i = 0; i < NBR_GHOSTS; i++) {
      ghost[i].setXY(random(50, width - 50), random(-20, height - 200));
      angle = ((int)random(0, 4)) * 45 + random(-20, 20);
      speed = random(40, 100);
      ghost[i].setSpeed(speed, angle);
      ghost[i].setAccXY(2, 2);
      ghost[i].setVisible(true);
      ghost[i].setFrameSequence(0, 3, 0.2f);
      System.out.print(ghost[i].getX() + "   " + ghost[i].getY() + "    ");
      System.out.println(ghost[i].getVelX() + "   " + ghost[i].getVelY());
    }
    System.out.println();
  }
  
  public void pre() {
    float elapsedTime = (float) sw.getElapsedTime();
    S4P.updateSprites(elapsedTime);
  }

  public void onTick() {
    S4P.drawSprites();
  }
}

