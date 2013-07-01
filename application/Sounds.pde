import java.util.List;
import sprites.utils.*;
import sprites.maths.*;
import sprites.*;

public class Sounds {
  
  List<Line> sounds;
  AudioPlayer musicloop;
  AudioPlayer sound1;
  AudioPlayer sound2;
  AudioPlayer sound3;
  AudioPlayer sound4;
  AudioPlayer sound5;
  AudioPlayer sound6;
  AudioPlayer sound7;
  AudioPlayer sound8;
  AudioPlayer sound9;
  AudioPlayer sound10;
  
  Maxim maxim;
  
  public Sounds(Maxim maxim) {
    this.maxim = maxim;
    
    musicloop     = maxim.loadFile("music.wav");

    sound1        = maxim.loadFile("sound1.wav");
    sound2        = maxim.loadFile("sound2.wav");
    sound3        = maxim.loadFile("sound3.wav");
    sound4        = maxim.loadFile("sound4.wav");
    sound5        = maxim.loadFile("sound5.wav");
    sound6        = maxim.loadFile("sound6.wav");
    sound7        = maxim.loadFile("sound7.wav");
    sound8        = maxim.loadFile("sound8.wav");
    sound9        = maxim.loadFile("sound9.wav");
    sound10       = maxim.loadFile("sound10.wav");
    
    lines = new ArrayList<Line>();
    musicloop.setLooping(true);
    
    println(getSound());
  } 
  
  public void onTick() {
    musicloop.play();
  }
  
  private String getSound() {
    String sound = "";
    for (int i = 0; i < 10; i++) {
      return sound = "sound"+(i+1);
    }
    return null;
  }
}
