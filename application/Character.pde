import java.util.HashSet;

import sprites.utils.*;
import sprites.maths.*;
import sprites.*;

public class Character {
  
  int tcol = 3;
  private PApplet processing;
  Sprite player;
  StopWatch timer;

  public Character(PApplet processing) {
    this.processing = processing;
    player = new Sprite(processing, "player.png", 8, 8, 100);
    //player.setAnimInterval(0);
    player.setFrameSequence(tcol * 8 + 7, tcol * 8);
   
    setup();
  } 
  
  private void setup() {
    player.setXY(150, 300);
    //player.setVelXY(0.0f, 0);
    //player.setDomain(0, height-80, width, height, Sprite.HALT);
    player.stopImageAnim();
  }

  public void onTick() {
    updateAllSprites(0.16);
    player.draw();
//     player.setFrameSequence(tcol * 8 + 7, tcol * 8, 0.1f, 3);
    int newFrame = player.getFrame() % 8 + tcol * 8;
    player.setFrame(newFrame);
    //println(newFrame);
  }
  
  private void updateAllSprites(float deltaTime) {
    player.update(deltaTime);
  }
}

