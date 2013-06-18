public class Line {
  
  private int LINE_WEIGHT = 5;
  private int LINE_YPOS   = 0;
  private int Y_AXIS      = 1;
  private int X_AXIS      = 2;
  private color COLOR_INIT  = 190;
  private color lineColour;
  
  public Line() {
    lineColour = COLOR_INIT;
  }
  
  public void setLineColour(color colour) {
    this.lineColour = colour;
  }
  
  public void addLine(int xPos) {
    setGradient( ( xPos - ( LINE_WEIGHT / 2 ) ), LINE_YPOS, LINE_WEIGHT, height, this.lineColour, this.lineColour, Y_AXIS );
  }
  
  private void setGradient( int x, int y, int w, int h, color c1, color c2, int axis ) {
    noFill();
    if (axis == Y_AXIS) {  
      for (int i = y; i <= y+h; i++) {
        float inter = map(i, y, y+h, 0, 1);
        color c = lerpColor(c1, c2, inter);
        stroke(c);
        line(x, i, x+w, i);
      }
    }  
    else if (axis == X_AXIS) { 
      for (int i = x; i <= x+w; i++) {
        float inter = map(i, x, x+w, 0, 1);
        color c = lerpColor(c1, c2, inter);
        stroke(c);
        line(i, y, i, y+h);
      }
    }
  }
}
