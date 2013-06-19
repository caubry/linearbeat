Maxim maxim;
LineManager lineManager;
Character character;

void setup() {
  
  size( 300, 600 );
  background( 50 );
  rectMode( CENTER );
  frameRate( 15 );
  character   = new Character();
  maxim       = new Maxim( this );
  lineManager = new LineManager();
}

void draw() {
  character.onTick();
}
