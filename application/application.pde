Maxim maxim;
LineManager lineManager;
Character character;

void setup() {
  size( 300, 600 );
  background( 50 );
  rectMode( CENTER );
  frameRate( 24 );
  
  maxim       = new Maxim( this );
  lineManager = new LineManager();
  character   = new Character();
}

void draw() {
  character.onTick();
}
