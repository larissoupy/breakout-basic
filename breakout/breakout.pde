int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;


color white = #FEFFFE;
color yellow = #FFF25A;
// transition between pink and yellow
color t1 = #FFD65B;
color t2 = #FFC05D;
color t3 = #FFB55D;
color t4 = #FFA95E;
color t5 = #FF9E5F;
color t6 = #FF9360;
color t7 = #FF8860;
color t8 = #FF7D61;
color t9 = #FF7262;
color t10 = #FF6663;
//
color pink = #FF6663;
color lightblue = #BFD7EA;
color darkblue = #0B3954;

boolean leftkey, rightkey;//moving

//ball stuff
float paddlex, paddley, paddled, bouncex, bouncey, bounced;
float vx, vy;
int timer;

//brick variables
int[] x;
int[] y;
//boolean
boolean[] alive;
int brickd;
int n;
int tempx, tempy;
float r,g,b;


void setup() {
  
  //brick
  brickd = 40;
  n = 204;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  //r = random(0,255);
  //g = random(0,255);
  //b = random(0,255);

  tempx = 80;
  tempy = 60;

  int i = 0;
  
  //i cant figure out how to do the colour thing :(
 
  while (i < n) {

    x[i] = tempx;
    y[i] = tempy;
    //turn off boolean if no work
    alive[i] = true;
    tempx = tempx + 40;
    if (tempx == width-40) {
      tempx = 80;
      tempy = tempy + 40;
    }
    i=i+1;
  }
  
  size(800, 800);
  mode = GAME;
  
  //paddle int
  paddlex = width/2;
  paddley = height;
  paddled = 150;
  bouncex = width/2;
  bouncey = height/2+200;
  bounced = 30;
  timer = 0;
  
  vx = random(-10,10);
  vy = 5;
  timer = 100;
  //int time woo
  leftkey = rightkey = false;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
   game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
 }
  
  
  
  
}
