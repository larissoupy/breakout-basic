void game() {
  background(lightblue);

  
  
  //time to try moving a ball woo
  strokeWeight(4);
  fill(darkblue);
  circle(paddlex, paddley, paddled);
  
  if (leftkey == true) paddlex = paddlex - 9;
  if (rightkey == true) paddlex = paddlex + 9;
  
  if (paddlex > width+paddled/2) paddlex = 0-paddled/2;
  if (paddlex < 0-paddled/2) paddlex = width+paddled/2;
  
  
  //oki cool, paddle moves, needs collision and something to bounce
  
 bouncex = bouncex + vx;
 bouncey = bouncey + vy;

 
 //bounce left right
 if (bouncex < bounced/2 || bouncex > width-bounced/2) {
   vx = vx * -1;
 }
 //bounce up down but if down die
 if (bouncey < bounced/2 ) { //see there is lack of down, that is good
   vy = vy * -1;
 }
 
 //collision time wooooo ughhhhhh
  //i forget how to do this part gimme a sec
  if (dist(paddlex,paddley,bouncex,bouncey) < paddled/2 + bounced/2) {
    vy = (bouncey-paddley)/10;
    vx = (bouncex-paddlex)/10;
  }
  
  //ok right here this resets bounce ball
  //ball that moves
  if (bouncey > height) {
    timer = 100;
    bouncex = width/2;
    bouncey = height/2+200;
    vx = random(-10,10);
    vy = 5;
  }
  //pauses before move
  timer =  timer -1;
  if (timer > 0) {
    bouncex = width/2;
    bouncey = height/2+200;
  }
  //and here is the ball that moves :O
  
  circle(bouncex,bouncey,bounced);
  
  
  
  
  
  //brick time

 // circle(x[0], y[0], brickd);
 // circle(x[1], y[1], brickd);
 // circle(x[2], y[2], brickd);
 
 int i = 0;
 while (i < n) {
 if (alive[i] == true) {
 manageBrick(i);
 }
  
    
    i=i+1;
  }
 }
 
//}


void gameClicks(){
}

void manageBrick (int i ){
  strokeWeight(4);
 if (y[i] == 60) fill(yellow);
 if (y[i] == 100) fill(t1);
 if (y[i] == 140) fill(t2);
 if (y[i] == 180) fill(t3);
 if (y[i] == 220) fill(t4);
 if (y[i] == 260) fill(t5);
 if (y[i] == 300) fill(t6);
 if (y[i] == 340) fill(t7);
 if (y[i] == 380) fill(t8);
 if (y[i] == 420) fill(t9);
 if (y[i] == 460) fill(t10);
 if (y[i] == 500) fill(pink);
   
   circle(x[i], y[i], brickd);
   
   if (dist(bouncex,bouncey,x[i],y[i]) < bounced/2 + brickd/2) {
    vy = (bouncey-y[i])/4;
    vx = (bouncex-x[i])/4;
    alive[i] = false;
  }
}
