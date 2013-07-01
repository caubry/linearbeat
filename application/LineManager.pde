import java.util.ArrayList;
import java.util.List;

public class LineManager {
  
  private PApplet processing;
  List<Line> lines;

  int line1XPos = width/4;
  int line2XPos = width/2;
  int line3XPos = (width/2)+(width/4);
  
  public LineManager(PApplet processing) {
    this.processing = processing;
    init();
  }
  
  /**
   *  Instantiate a line
   *  Set X Position
   *  Render the Sprite
   */
  private void init() {
    lines = new ArrayList<Line>();
    lines.add(createLine(line1XPos));
    lines.add(createLine(line2XPos));
    lines.add(createLine(line3XPos));
  }
  
  /**
   *  Create line
   */
  private Line createLine( int xPos ) {
    Line line = new Line(processing);
    line.setX(xPos);
    line.renderSprite();
    return line;
  }
  
  /**
   *  Check for mouse collison 
   *  for each line
   */
  private void onTick() {
     for (int i = 0; i < lines.size(); i++) {
       lines.get(i).mousePos();
     }
  }
  
  /**
   *  Getter - Return the line
   *  that has been collided
   */
  public Line getLineCollided() {
    for (int i = 0; i < lines.size(); i++) {
      if (lines.get(i).hasLineCollided())
      {
        return lines.get(i);
      }
    }
    return null;
  }
  
  public int getLineFrameNbr() {
    for (int i = 0; i < lines.size(); i++) {
      if (lines.get(i).hasLineCollided())
      {
        return lines.get(i).frameNbr();
      }
    }
    return 0;
  }
}




