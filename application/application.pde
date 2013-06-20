Maxim maxim;
LineManager lineManager;
Character character;

void setup() {
  
  size( 300, 600 );
  background( 50 );
  rectMode( CENTER );
  frameRate(24);
  
  character   = new Character( this );
  maxim       = new Maxim( this );
  lineManager = new LineManager();
}

void draw() {
  character.onTick();
}
