public class Character {
 
  PImage img;
  PGraphics pg;
  int maxGlow = 100;
  
  public Character() {
   
    img = loadImage("player.png");
    imageMode(CENTER);
    image(img, (width / 2), 500); 
    img.filter(BLUR, 5);
    
    pg = createGraphics(img.width, img.height, JAVA2D);
    pg.beginDraw();
    pg.fill(0);
    pg.endDraw();
  } 
  
  public void onTick() {
    ellipse(mouseX, mouseY, 100, 100);
    for (int i = 0; i < maxGlow; i++)
    {
      //img.filter(BLUR, i);
    }
  }
}
