import java.util.HashSet;
import sprites.utils.*;
import sprites.maths.*;
import sprites.*;

Maxim maxim;
LineManager lineManager;
Character character;
StopWatch sw;

/*
** Application Entry Point
*/
void setup() {
  
  size(300, 500);
  rectMode(CENTER);
  frameRate(24);
  
  maxim       = new Maxim(this);
  sw          = new StopWatch();
  lineManager = new LineManager(this);
  character   = new Character(this);  
 
  registerMethod("pre", this);
  cursor(CROSS);
}

void pre() {
   float elapsedTime = (float) sw.getElapsedTime();
   S4P.updateSprites(elapsedTime);
}

void draw() {
   background(50);
   S4P.drawSprites();
}
