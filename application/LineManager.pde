public class LineManager {
  
  private PApplet processing;
  Line line1;
  Line line2;
  Line line3;
  
  public LineManager(PApplet processing) {
    this.processing = processing;
    init();
  }
  
  /*
  ** Instantiate a line
  ** Set X Position
  ** Render the Sprite
  */
  private void init() {
    line1 = new Line(processing);
    line1.setX(150);
    line1.renderSprite();
    
    line2 = new Line(processing);
    line2.setX(10);
    line2.renderSprite();
    
    line3 = new Line(processing);
    line3.setX(200);
    line3.renderSprite();
  }
}
