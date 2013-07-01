import java.util.HashSet;
import sprites.utils.*;
import sprites.maths.*;
import sprites.*;
import java.util.List;

Maxim maxim;

LineManager lineManager;
Character character;
Sounds sounds;
StopWatch sw;
Line currentLineCollided;
int characterXPos = 150;
int lightXPos = 150;

/**
 *  Application Entry Point
 */
void setup() {
  
  size(300, 500);
  rectMode(CENTER);
  frameRate(24);

  maxim         = new Maxim(this);
  sounds        = new Sounds(maxim);
  sw            = new StopWatch();
  lineManager   = new LineManager(this);
  character     = new Character(this); 

  registerMethod("pre", this);
  cursor(CROSS);
}

void pre() {
   float elapsedTime = (float) sw.getElapsedTime();
   S4P.updateSprites(elapsedTime);
}

void draw() {
   background(50);
   sounds.onTick();
   S4P.drawSprites();
   lineManager.onTick();
   character.setX(characterXPos);
   character.onTick();
}

void mousePressed() {
   if (lineManager.getLineCollided() != null) {
     currentLineCollided = lineManager.getLineCollided();
     characterXPos = currentLineCollided.getX();
     sounds.soundArray().get(lineManager.getLineFrameNbr()).play();
   }
}
