public class Character {

  float MIN_VALUE = 80;
  float value     = MIN_VALUE;
  
  float radius = 50.0;
  int X, Y;
  int nX, nY;
  int delay = 16;

  PShape player;

  public Character() {
    X = width / 2;
    Y = height / 2;
    nX = X;
    nY = Y;  

    player  = loadShape("player.svg");
  } 

  public void onTick() {
    value = value + sin( frameCount/4 );
  
    X += (nX-X)/delay;
    Y += (nY-Y)/delay;

    background(51);
    ellipse( X, Y, value, value );  
    shape(player, -10, 140, 320, 320);
    fill( 222, 222, 222, 222 );
  }
}

