import java.util.List;
import sprites.utils.*;
import sprites.maths.*;
import sprites.*;

public class Character {
  
  private PApplet processing;
  Sprite player;
  int xPos = 150;
  int nbrFrames = 8;

  public Character(PApplet processing) {
    this.processing = processing;
    this.xPos = characterXPos;
    setup();
  } 
  
  /**
   *  Setup the character identity
   *  And render the sprite
   */
  private void setup() {
    player = new Sprite(processing, "player.png", nbrFrames, 1, 100);
    player.setDomain(-100, -60, width + 100, height - 100, Sprite.REBOUND);
    player.setFrameSequence(0, nbrFrames, 0.3f);
  }
  
  public void onTick() {
    player.setXY(xPos + (player.getWidth() / nbrFrames), 450);
  }
  
  public void setX(int xPos) {
    this.xPos = xPos;
  }
}
