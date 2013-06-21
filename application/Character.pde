import java.util.HashSet;
import sprites.utils.*;
import sprites.maths.*;
import sprites.*;

public class Character {
  
  private PApplet processing;
  Sprite player;
  StopWatch sw;

  public Character(PApplet processing) {
    this.processing = processing;
    setup();
  } 
  
  private void setup() {
    sw     = new StopWatch();
    player = new Sprite(processing, "player.png", 8, 8, 0);
    player.setDomain(-100, -60, width + 100, height - 100, Sprite.REBOUND);
    player.setXY(150, 150);
    player.setFrameSequence(0, 7, 0.2f);
    registerMethod("pre", this);
    cursor(CROSS);
  }

  public void pre() {
    float elapsedTime = (float) sw.getElapsedTime();
    S4P.updateSprites(elapsedTime);
  }

  public void onTick() {
    S4P.drawSprites();
  }
}
