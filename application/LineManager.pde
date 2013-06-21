public class LineManager {
  
  Line line1;
  Line line2;
  Line line3;
  
  public LineManager() {
   
  }
  
  public void onTick() {
    line1 = new Line();
    line2 = new Line();
    line3 = new Line();
    
    line1.addLine(width/4);
    line2.addLine(width/2);
    line3.addLine(( width / 2 ) + ( width / 4 ));
  }
}
