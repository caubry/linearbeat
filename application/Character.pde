public class Character {
 
  boolean increaseSize = true;
  int value = 1;
  float MAX_VALUE = 1.5;
  float MIN_VALUE = 1;
  PShape player;
  
  public Character() {
    player = loadShape("player.svg");
  } 
  
  public void onTick() {
    translate(width/2, height/2);
    float zoom = map(mouseX, 0, width, 0.1, 4.5);
    scale(zoom);
    shape(player, 150, 500);
    //player.resize(value, value);
//    player.scale(value);
//    imageMode(CENTER);
//    image(player, 150, 500); 
    
//translate(width/2, height/2);
//  scale(value); 
//  fill(51);
//  rect(0, 0, 50, 50); 
    //image(player, (width / 2), (height - 100), 0, 0);
    increaseSize();
  }
  
  private void increaseSize() {
    if(increaseSize) {
      value++;
      if(value >= MAX_VALUE) {
        increaseSize = false;
      }  
    } else {
      value--;
      if(value < MIN_VALUE) {
        increaseSize = true;
      } 
    }
  }
}
