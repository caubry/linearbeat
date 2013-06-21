Maxim maxim;
LineManager lineManager;
Character character;

void setup() {
  size(300, 500);
  rectMode( CENTER );
  frameRate(24);
  
  character   = new Character(this);
  maxim       = new Maxim(this);
  lineManager = new LineManager();
}

void draw() {
  background(50);
  lineManager.onTick();
  character.onTick();
}
