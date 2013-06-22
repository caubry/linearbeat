import sprites.utils.*;
import sprites.maths.*;
import sprites.*;

public class Character {
  
  private PApplet processing;
  Sprite player;

  public Character(PApplet processing) {
    this.processing = processing;
    setup();
  } 
  
  /*
  ** Setup the character identity
  ** And render the sprite
  */
  private void setup() {
    player = new Sprite(processing, "player.png", 8, 8, 100);
    player.setDomain(-100, -60, width + 100, height - 100, Sprite.REBOUND);
    player.setXY(150, 150);
    player.setFrameSequence(0, 7, 0.2f);
  }
}
