import java.util.HashSet;

import sprites.utils.*;
import sprites.maths.*;
import sprites.*;

public class Character {
  
  private PApplet processing;
  Sprite player;
  int newFrame = 0;

  public Character(PApplet processing) {
    this.processing = processing;
    player = new Sprite(processing, "player.png", 8, 8, 100);
    setup();
  } 
  
  private void setup() {
    player.setXY(150, 300);
    player.setFrameSequence(0, 8, 300);
  }

  public void onTick() {
//    newFrame++;
//    if (newFrame > 7)
//    {
//      newFrame = 0;
//    }
//    player.setFrame(newFrame);
    player.draw(); 
   player.updateImageAnimation(2); 
  }
}

