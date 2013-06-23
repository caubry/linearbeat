import java.util.HashSet;
import sprites.utils.*;
import sprites.maths.*;
import sprites.*;
import java.util.List;

Maxim maxim;
LineManager lineManager;
Character character;
StopWatch sw;
Light light;
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
  sw            = new StopWatch();
  lineManager   = new LineManager(this);
  character     = new Character(this); 
  light         = new Light(this); 

  registerMethod("pre", this);
  cursor(CROSS);
}

void pre() {
   float elapsedTime = (float) sw.getElapsedTime();
   S4P.updateSprites(elapsedTime);
   processCollision();
}

void processCollision() {
//  for (int g = 0; g < NBR_GHOSTS; g++) {
//    if (!ghost[g].isDead() &&  vortex.oo_collision(ghost[g], 60)) {
//      nbr_dead++;
//      println(nbr_dead);
//      vortex.setXY(-10000, -10000);
//      ghost[g].setXY(10000, 10000);
//      ghost[g].setVelXY(0, 0);
//      ghost[g].setDead(true);
//      vortex.setVisible(false);
//      break;
//    }
//  }
}

void draw() {
   background(50);
   S4P.drawSprites();
   lineManager.onTick();
   light.setX(lightXPos);
   light.onTick();
   character.setX(characterXPos);
   character.onTick();
}

void mousePressed() {
   if (lineManager.getLineCollided() != null) {
     currentLineCollided = lineManager.getLineCollided();
     characterXPos = currentLineCollided.getX();
   }
}
