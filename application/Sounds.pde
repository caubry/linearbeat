import java.util.List;
import sprites.utils.*;
import sprites.maths.*;
import sprites.*;

public class Sounds {
  
  List<AudioPlayer> sounds;
  AudioPlayer musicloop;
  Maxim maxim;
  
  public Sounds(Maxim maxim) {
    this.maxim = maxim;
    musicloop  = maxim.loadFile("music.wav");
    musicloop.setLooping(true);
    musicloop.volume(3);
    
    sounds = new ArrayList<AudioPlayer>();
    for (int i = 0; i < 10; i++)
    {  
       sounds.add(maxim.loadFile("sound" + i + ".wav"));
       sounds.get(i).setLooping(false);
    }
  } 
  
  public void onTick() {
    musicloop.play();
  }
  
  /**
   *  Getter - ArrayList of sounds
   */
  public List<AudioPlayer> soundArray() {
    return sounds;
  } 
}
